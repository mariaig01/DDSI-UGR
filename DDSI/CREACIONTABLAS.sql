/**
* @author Jesus
*/
CREATE TABLE Cliente(
    DNI VARCHAR2(9) NOT NULL,
    nombre VARCHAR2(80) NOT NULL,
    telefono VARCHAR2(20) NOT NULL,
    correo VARCHAR2(40) NOT NULL,
    direccion VARCHAR2(100) DEFAULT NULL,
    cuenta_bancaria VARCHAR2(24) DEFAULT NULL,
    CONSTRAINT DNInotnull CHECK (DNI IS NOT NULL),
    CONSTRAINT nombrenotnull CHECK (nombre IS NOT NULL),
    CONSTRAINT telefononotnull CHECK (telefono IS NOT NULL),
    CONSTRAINT correonotnull CHECK (correo IS NOT NULL),
    PRIMARY KEY (DNI)
);

/**
* @author Jesus
*/
CREATE TABLE Cliente_activo(
    DNIactivo
        CONSTRAINT DNIactivoce REFERENCES Cliente(DNI),
        CONSTRAINT DNIactivocp PRIMARY KEY (DNIactivo)
);

/**
* @author Jesus
*/
CREATE TABLE Cliente_eliminado(
    DNIeliminado
        CONSTRAINT DNIeliminadoce REFERENCES Cliente(DNI),
        CONSTRAINT DNIeliminadocp PRIMARY KEY (DNIeliminado)
);

/**
* @author Maribel
*/
CREATE TABLE Caracteristicas(
	Marca VARCHAR2(10),
    Modelo VARCHAR2(20),
    CaracteristicasTecnicas VARCHAR2(100),
    CONSTRAINT PK_marca_modelo PRIMARY KEY (Marca, Modelo),
  	CONSTRAINT CK_caracteristicas_marca CHECK (Marca IS NOT NULL),
    CONSTRAINT CK_caracteristicas_modelo CHECK (Modelo IS NOT NULL),
    CONSTRAINT CK_caracteristicas_tecnicas CHECK (CaracteristicasTecnicas IS NOT NULL)
);

/**
* @author Maribel
*/
CREATE TABLE Vehiculos(
    Matricula VARCHAR2(8),
    Marca VARCHAR2(10),
    Modelo VARCHAR2(20),
    Kilometraje int default 0,
    AÒoFabricacion int,
    FechaEntrada DATE,
    CONSTRAINT PK_vehiculos_matricula PRIMARY KEY (Matricula),
    CONSTRAINT FK_vehiculos_marca_modelo FOREIGN KEY (Marca,Modelo) REFERENCES Caracteristicas(Marca,Modelo),
    CONSTRAINT CK_vehiculos_marca CHECK (Marca IS NOT NULL),
    CONSTRAINT CK_vehiculos_modelo CHECK (Modelo IS NOT NULL),
    CONSTRAINT CK_vehiculos_kilometraje CHECK (Kilometraje IS NOT NULL),
    CONSTRAINT CK_vehiculos_kil_menor CHECK (Kilometraje <= 200000),
    CONSTRAINT CK_vehiculos_aÒo_fabricacion CHECK (AÒoFabricacion IS NOT NULL)
);

/**
* @author Maribel
*/
CREATE TABLE Disponibles(
    Matricula VARCHAR2(8),
    CONSTRAINT PK_disponibles_matricula PRIMARY KEY (Matricula),
    CONSTRAINT FK_disponibles_matricula FOREIGN KEY (Matricula) REFERENCES Vehiculos(Matricula)
);

/**
* @author Maribel
*/
CREATE TABLE Vendidos(
    Matricula VARCHAR2(8),
    FechaSalida DATE,
    Precio int default 0,
    CONSTRAINT PK_vendidos_matricula PRIMARY KEY (Matricula),
    CONSTRAINT FK_vendidos_matricula FOREIGN KEY (Matricula) REFERENCES Vehiculos(Matricula),
    CONSTRAINT CK_vendidos_precio CHECK (Precio IS NOT NULL),
    CONSTRAINT CK_vendidos_precio_positivo CHECK (Precio >= 0)
);

/**
* @author Maribel
*/
CREATE TABLE Desguazados(
    Matricula VARCHAR2(8),
    FechaSalida DATE,
    Precio int default 0,
    CONSTRAINT PK_desguazados_matricula PRIMARY KEY (Matricula),
    CONSTRAINT FK_desguazados_matricula FOREIGN KEY (Matricula) REFERENCES Desguazados(Matricula),
    CONSTRAINT CK_desguazados_precio CHECK (Precio IS NOT NULL),
    CONSTRAINT CK_desguazados_precio_positivo CHECK (Precio >= 0)
);

/**
* @author Jesus
*/
CREATE TABLE ClienteCompraVehiculo(
    Matricula VARCHAR2(8),
    DNIcomprador VARCHAR2(9),
    CONSTRAINT Matriculace FOREIGN KEY (Matricula) REFERENCES Vehiculos(Matricula),
    CONSTRAINT DNIcompradorce FOREIGN KEY (DNIcomprador) REFERENCES Cliente(DNI),
    CONSTRAINT Matriculacp PRIMARY KEY (Matricula)
);

/**
* @author Mar√≠a
*/
CREATE TABLE Trabajadores(
    DNI VARCHAR2(9) NOT NULL,
    nombre VARCHAR2(80) NOT NULL,
    telefono VARCHAR2(20) NOT NULL,
    correo VARCHAR2(40) NOT NULL,
    direccion VARCHAR2(100) DEFAULT NULL,
    cuenta_bancaria VARCHAR2(24) DEFAULT NULL,
    num_seguridadsocial VARCHAR2(12) DEFAULT NULL,
    salario INT DEFAULT NULL,
    estado VARCHAR(20) DEFAULT NULL,
    CONSTRAINT dni_notnull CHECK (DNI IS NOT NULL),
    CONSTRAINT nom_notnull CHECK (nombre IS NOT NULL),
    CONSTRAINT telefono_notnull CHECK (telefono IS NOT NULL),
    CONSTRAINT correo_notnull CHECK (correo IS NOT NULL),
    CONSTRAINT num_seguridadsocialnotnull CHECK (num_seguridadsocial IS NOT NULL),
    PRIMARY KEY (DNI)
);


/**
* @author Mar√≠a
*/
CREATE TABLE TrabajadorVendeVehiculo(
    Matricula
    CONSTRAINT Matriculatv_ce REFERENCES Vehiculos(Matricula)
    CONSTRAINT Matriculatv_cp PRIMARY KEY,
    DNI VARCHAR2(9) NOT NULL,
    FOREIGN KEY (DNI) REFERENCES Trabajadores(DNI)
);

/**
* @author Jos√© Luis
*/
CREATE TABLE Contabilidad(
    CosteFijo int NOT NULL
);


/**
* @author Jos√© Luis
*/
CREATE TABLE RegistroSalarios(
    DNI VARCHAR(9) NOT NULL,
    FechaPago DATE NOT NULL,
    salario int NOT NULL,
    CONSTRAINT PK_registro_dni_fecha PRIMARY KEY (DNI, FechaPago),
    CONSTRAINT FK_registro_dni FOREIGN KEY (DNI) REFERENCES Trabajadores(DNI)
);

/**
* @author Capilla
*/
CREATE TABLE Proveedores(
    CIF VARCHAR2(9) NOT NULL,
    nombre_empresa VARCHAR2(80) NOT NULL,
    telefono_empresa VARCHAR2(20) NOT NULL,
    correo_empresa VARCHAR2(40) NOT NULL,
    direccion_empresa VARCHAR2(100) DEFAULT NULL,
    cuenta_bancaria_empresa VARCHAR2(24) DEFAULT NULL,
    CONSTRAINT CIFnotnull CHECK (CIF IS NOT NULL),
    CONSTRAINT nombre_empresanotnull CHECK (nombre_empresa IS NOT NULL),
    CONSTRAINT telefono_empresanotnull CHECK (telefono_empresa IS NOT NULL),
    CONSTRAINT correo_empresanotnull CHECK (correo_empresa IS NOT NULL),
    PRIMARY KEY (CIF)
);

CREATE TABLE ProveedorSuministraVehiculo (
  CIF VARCHAR(20) NOT NULL,
  Marca VARCHAR(50) NOT NULL,
  Matricula VARCHAR(20) NOT NULL,
  precio_proveedor int NOT NULL,
  fechacompra DATE NOT NULL,
  PRIMARY KEY (Matricula),
  FOREIGN KEY (CIF) REFERENCES Proveedores(CIF)
);

COMMIT;

