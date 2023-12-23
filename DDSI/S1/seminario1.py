import datetime as dt
import pyodbc
from os import system
from tabulate import tabulate

class Almacen:

	def __init__(self,usuario):
		# Nos conectamos a la BBDD desactivando el AUTOCOMMIT
		self.cnxn = pyodbc.connect('DRIVER={Devart ODBC Driver for Oracle};Direct=True;Host=oracle0.ugr.es;Service Name=practbd.oracle0.ugr.es;User ID='+usuario+';Password='+usuario, autocommit=False)

		# Inicializamos variables
		self.cursor = self.cnxn.cursor()
		self.usuario = usuario
		self.Cpedido = None


	def borrarcrear_tablas(self):
		print("Borrando tablas...")
		try:
			self.cursor.execute("DROP TABLE DetallePedido")
			self.cursor.execute("DROP TABLE Pedido")
			self.cursor.execute("DROP TABLE Stock")
		except:
			print("No había tablas creadas")

		print("Creando tablas...")

		self.cursor.execute("CREATE TABLE Stock(CProducto VARCHAR(2) CONSTRAINT Cproducto_notnull NOT NULL CONSTRAINT CProducto_primarykey PRIMARY KEY, Cantidad NUMBER(4))")
		self.cursor.execute("CREATE TABLE Pedido(CPedido VARCHAR(2) CONSTRAINT Cpedido_notnull NOT NULL CONSTRAINT Cpedido_primarykey PRIMARY KEY, Ccliente VARCHAR(2), Fecha DATE)")
		self.cursor.execute("CREATE TABLE DetallePedido(Cpedido CONSTRAINT Cpedido_EK REFERENCES Pedido(Cpedido), Cproducto CONSTRAINT Cproducto_EK REFERENCES Stock(Cproducto),Cantidad NUMBER(4), PRIMARY KEY (Cpedido, Cproducto))")

		vstock = [
			(0,20),
			(1,20),
			(2,20),
			(3,20),
			(4,20),
			(5,20),
			(6,20),
			(7,20),
			(8,20),
			(9,20),
		]

		self.cursor.executemany("INSERT INTO Stock VALUES(?,?)",vstock)

		self.cursor.execute("COMMIT")


	def alta_pedido(self, Ccliente, Fecha):

		print("Dando de alta pedido...")

		# Obtenemos el código del pedido
		self.Cpedido = int(self.cursor.execute("SELECT COUNT(*) FROM Pedido").fetchone()[0])
		self.Cpedido += 1


		# Primer SAVEPOINT: Antes de insertar la tupla, en caso de querer cancelar el pedido
		self.cursor.execute("SAVEPOINT pedido")

		# Inserción del pedido
		Fecha = Fecha.strftime('%d/%m/%y')
		self.cursor.execute(f"INSERT INTO Pedido VALUES ({self.Cpedido},{Ccliente},TO_DATE('{Fecha}','dd/mm/yy'))")

		# Segundo SAVEPOINT: Una vez insertada la tupla, encaso de querer eliminar detalle producto
		self.cursor.execute("SAVEPOINT detalle")


	def anadir_detalle_producto(self, Cproducto_, Cantidad):

		print("Añadiendo detalle producto...")

		# Comprobamos que existe el producto
		if not self.existe_Cproducto(Cproducto_):
			print("No existe producto " + Cproducto_ + "\n")
		else:
			# Comprobamos si se introduce un entero
			try:
				Cantidad = int(Cantidad)
			except:
				print("ERROR Cantidad no válida")
			else:
				# Calculamos las cantidades
				cantidad_disponible = int(self.cursor.execute("SELECT Cantidad FROM Stock WHERE (Cproducto = :Cproducto_)",Cproducto_).fetchone()[0])
				cantidad_actualizada = cantidad_disponible - Cantidad


				if cantidad_actualizada < 0: # Si no hay cantidad suficiente
					print(f"No hay cantidad suficiente:\nDisponible: {cantidad_disponible}\tPedida: {Cantidad}")
				else: # Si hay cantidad
					try:
						self.cursor.execute(f"UPDATE Stock SET Cantidad={cantidad_actualizada} WHERE Cproducto={Cproducto_}")
						self.cursor.execute(f"INSERT INTO DetallePedido VALUES ({self.Cpedido},{Cproducto_},{Cantidad})")
					except:
						print(f"ERROR el pedido ya incluye un detalle para el pedido {self.Cpedido} y el producto {Cproducto_}")


	def existe_Cproducto(self, Cproducto_):
		aux = self.cursor.execute("SELECT Cproducto FROM Stock")

		# Compara cada uno de los elementos de aux con Cproducto_. Si
		# alguno coincide devuelve true.
		return any(map(lambda x: str(x[0]).strip() == str(Cproducto_),aux))


	def eliminar_detalle_producto(self):
		print("Eliminando detalle producto...")
		self.cursor.execute("ROLLBACK TO SAVEPOINT detalle")

	def cancelar_pedido(self):
		print("Cancelando pedido...")
		self.cursor.execute("ROLLBACK TO SAVEPOINT pedido")

	def finalizar_pedido(self):
		print("Finalizando pedido...")
		self.cursor.execute("COMMIT")

	def mostrar_tablas(self):
		print("Procediendo a mostrar tablas...")

		tablastock = []
		tablastock.append(["CProducto", "Cantidad"])

		tablapedido = []
		tablapedido.append(["CPedido", "CCliente", "Fecha"])

		tabladetalle = []
		tabladetalle.append(["CPedido", "CProducto", "Cantidad"])


		print("\nTabla Stock\n")
		stock = self.cursor.execute("SELECT * FROM STOCK")

		for fila in stock:
			tablastock.append([fila[0], fila[1]])

		print(tabulate(tablastock, headers='firstrow', tablefmt='fancy_grid'))

		print("\nTabla Pedido\n")
		stock = self.cursor.execute("SELECT cpedido, ccliente, TO_CHAR(fecha,'DD/MM/YY') FROM PEDIDO")

		for fila in stock:
			tablapedido.append([fila[0], fila[1], fila[2]])

		print(tabulate(tablapedido, headers='firstrow', tablefmt='fancy_grid'))

		print("\nTabla Detalle-Pedido\n")
		stock = self.cursor.execute("SELECT * FROM DETALLEPEDIDO")

		for fila in stock:
			tabladetalle.append([fila[0], fila[1], fila[2]])

		print(tabulate(tabladetalle, headers='firstrow', tablefmt='fancy_grid'))


	def salir(self):
		print("Cerrando conexión...")
		self.cursor.execute("COMMIT")
		self.cursor.close()
		self.cnxn.close()
		print("Se ha cerrado correctamente la conexión")


class Interfaz:

	def __init__(self):
		self.almacen = Almacen(input("Introduzca usuario: "))

		self.primer_menu = {
			1: ("Crear tablas Stock, Pedido y DetallePedido e insertar 10 tuplas en Stock",self.almacen.borrarcrear_tablas),
			2: ("Dar de alta nuevo pedido",self.almacen.alta_pedido),
			3: ("Mostrar contenido de las tablas",self.almacen.mostrar_tablas),
			4: ("Salir del programa y cerrar conexión",self.almacen.salir)
		}

		self.segundo_menu = {
			1: ("Añadir detalle producto",self.almacen.anadir_detalle_producto),
			2: ("Eliminar todos los detalles producto",self.almacen.eliminar_detalle_producto),
			3: ("Cancelar pedido",self.almacen.cancelar_pedido),
			4: ("Finalizar pedido",self.almacen.finalizar_pedido)
		}


	def mostrar_primer_menu(self):
		menu = "\n---MENU PRINCIPAL---\n\n"
		for x in self.primer_menu:
			menu += f"\t{x} - {self.primer_menu[x][0]}\n"

		print(menu)


	def mostrar_segundo_menu(self):
		menu2 = "\n---MENU DAR DE ALTA---\n\n"
		for x in self.segundo_menu:
			menu2 += f"\t{x} - {self.segundo_menu[x][0]}\n"

		print(menu2)


	def leer_primer_menu(self):
		opcion = None

		# Si no queremos salir del programa y cerrar la conexión a la BD...
		while opcion != 4:
			try:
				opcion = int(input("Seleccione una opción: "))
			except ValueError:
				print("Opción errónea, por favor, elija una opción válida\n")
				self.mostrar_primer_menu()
			else:
				if opcion == 1: # Borrar y crear tablas
					try:
						self.primer_menu[opcion][1]()
					except:
						print("ERROR borrando y creando tablas")
					self.mostrar_primer_menu()
				elif opcion == 2: # Añadir pedido
					try:
						Ccliente = int(input("Inserte código de cliente: "))
					except:
						print("ERROR código de cliente no válido")
						self.mostrar_primer_menu()
					else:
						try:
							self.primer_menu[opcion][1](Ccliente, dt.date.today())
						except:
							print("ERROR dando de alta nuevo pedido")
						self.mostrar_segundo_menu()
						self.leer_segundo_menu()
						self.mostrar_primer_menu()
				elif opcion == 3: # Mostrar tablas
					try:
						self.primer_menu[opcion][1]()
					except:
						print("ERROR mostrando tablas")
					self.mostrar_primer_menu()
				elif opcion == 4: # Salir y cerrar conexión
					try:
						self.primer_menu[opcion][1]()
					except:
						print("ERROR saliendo del programa")
				else: # Si introducimos una opción numérica errónea, por ejemplo, 5.
					print("Opción errónea, por favor, elija una opción válida\n")
					self.mostrar_primer_menu()


	def leer_segundo_menu(self):
		opcion = None

		# Si no cancelamos o finalizamos el pedido...
		while opcion not in (3, 4):
			try:
				opcion = int(input("Seleccione una opción: "))
			except ValueError:
				print("Opción errónea, por favor, elija una opción válida\n")
				self.mostrar_segundo_menu()
			else:
				if opcion == 1: # Añadir detalle pedido
					producto = input("Inserte código de producto: ")
					cantidad = input("Inserte cantidad: ")
					self.almacen.anadir_detalle_producto(producto,cantidad)
					self.almacen.mostrar_tablas()
					self.mostrar_segundo_menu()
				elif opcion == 2 or opcion == 3: # 2. Eliminar detalles 3. Cancelar pedido
					self.segundo_menu[opcion][1]()
					self.almacen.mostrar_tablas()

					if opcion == 2:
						self.mostrar_segundo_menu()
				elif opcion == 4: # Finalizar pedido
					self.segundo_menu[opcion][1]()
				else: # Si introducimos una opción numérica errónea, por ejemplo, 5.
					print("Opción errónea, por favor, elija una opción válida\n")
					self.mostrar_segundo_menu()



	def run(self):
		system("clear")
		print("\n__________________________\n")
		print("SEMINARIO 1 - POR ASIGNAR")
		print("__________________________\n")
		self.mostrar_primer_menu()
		self.leer_primer_menu()


if __name__ == '__main__':
	Interfaz = Interfaz()
	Interfaz.run()
