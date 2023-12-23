/**
* @author Jesus
*/
INSERT INTO Cliente(DNI,nombre,telefono,correo,direccion,cuenta_bancaria) 
    VALUES ('34791209F','Olga Bravo','+34 924313938','olgabravo@gmail.com','Ruela Jimenez 4, 3A, 47517, Os Zarate del Valles','ES0716643150227599021177'); 
INSERT INTO Cliente (DNI,nombre,telefono,correo,direccion,cuenta_bancaria)
    VALUES('56321485A','Rosa Ortiz','+34 526357888','rosaortiz@gmail.com','Calle Paredes, 75, 6D, 96953, Centeno de la Sierra','ES3607116716939002682156');    
INSERT INTO Cliente (DNI,nombre,telefono,correo,direccion,cuenta_bancaria)
    VALUES ('66685421S','Hugo Calvo','+34 665478222','hugocalvo@gmail.com','Plaza Juan, 5, 31E, 85112, A Ulibarri del Barco','ES2375295647486507815314');   
INSERT INTO Cliente (DNI,nombre,telefono,correo,direccion,cuenta_bancaria)
    VALUES ('65555874T','Celia Aguilar','+34 677788812','celiaaguilar@gmail.com','Plaza Toro, 1, 8F, 94196, Los Bernal de Arriba','ES5243053684213252210310');    
INSERT INTO Cliente (DNI,nombre,telefono,correo,direccion,cuenta_bancaria)
    VALUES ('31250004W','Javier Santiago','+34 696525414','javiersantiago@gmail.com','Plaza Portillo, 13, 45E, 70431, Arriaga del Penedes','ES7015973725514555560729');

/**
* @author Jesus
*/  
INSERT INTO Cliente(DNI,nombre,telefono,correo,direccion)
    VALUES ('20585890H','Rosario Cano','+34 656414787','rosariocano@gmail.com','Camino Miranda, 63, 2D, 90342, El Raya de San Pedro');
INSERT INTO Cliente(DNI,nombre,telefono,correo,direccion)
    VALUES ('36669852L','Enrique Iglesias','+34 666893252','enriqueiglesias@gmail.com','Paseo de EspaÃ±a, 1, 5F, 52666, Madrid');
INSERT INTO Cliente(DNI,nombre,telefono,correo,direccion)
    VALUES ('52278741D','Antonio Hidalgo','+34 616525898','antoniohidalgo@gmail.com','Avenida Antonia, 260, 5E, 07796, Vall Olivas del Valles');

/**
* @author Jesus
*/
INSERT INTO Cliente(DNI,nombre,telefono,correo)
    VALUES ('77785420J','Juan Garcia','+34 662232561','juangarcia@gmail.com');
INSERT INTO Cliente(DNI,nombre,telefono,correo)
    VALUES ('35625854Z','Olga Luque','+34 696422330','olgaluque@gmail.com');
    
/**
* @author Jesus
*/
INSERT INTO Cliente_activo (DNIactivo)
    VALUES ('34791209F');
INSERT INTO Cliente_activo 
    VALUES ('56321485A');
INSERT INTO Cliente_activo 
    VALUES ('66685421S');
INSERT INTO Cliente_activo 
    VALUES ('65555874T');
INSERT INTO Cliente_activo 
    VALUES ('31250004W');
INSERT INTO Cliente_activo 
    VALUES ('20585890H');
INSERT INTO Cliente_activo 
    VALUES ('35625854Z');
    
/**
* @author Jesus
*/
INSERT INTO Cliente_eliminado 
    VALUES ('36669852L');
INSERT INTO Cliente_eliminado 
    VALUES ('52278741D');
INSERT INTO Cliente_eliminado 
    VALUES ('77785420J');

/**
* @author Maribel
*/
INSERT ALL INTO Caracteristicas(marca,modelo,caracteristicastecnicas)
VALUES
    ('Toyota','Toyota Auris','Consumo: 3,5 L/100km Eco: HE Potencia: 136 CV Plazas: 5 Maletero: 530 L')
INTO Caracteristicas(marca,modelo,caracteristicastecnicas)
VALUES
    ('Fiat','Fiat 500/500C','Consumo: -L/100km Eco: E Potencia: 69-118 CV Plazas: 4 Maletero: 185 L')
INTO Caracteristicas(marca,modelo,caracteristicastecnicas)
VALUES
    ('Smart','Smart Fortwo','Consumo 0,0-0,0 L/100km Eco: E Potencia: 82-82 CV Plazas: 2 Maletero: 230 L')
INTO Caracteristicas(marca,modelo,caracteristicastecnicas)
VALUES
    ('Renault','Renault Captur','Consumo: 1,4-5,8 L/100km Eco: G Potencia: 101-91 CV Plazas: 5 Maletero: 422/536 L')
INTO Caracteristicas(marca,modelo,caracteristicastecnicas)
VALUES
    ('Suzuki','Suzuki Across','Consumo: 1,0-1,0 L/100km Eco: G Potencia: 306-306 CV Plazas: 5 Maletero: 490 L')
INTO Caracteristicas(marca,modelo,caracteristicastecnicas)
VALUES
    ('Kia','Kia Sportage 2022','Consumo: 1,1-7,1 L/100km, Eco: HE Potencia: 115-265 CV Plazas: 5 Maletero: 526-591 L')
INTO Caracteristicas(marca,modelo,caracteristicastecnicas)
VALUES
    ('Opel','Opel Astra 2022','Consumo: 1,1-5,8 L/100km Eco: E Potencia: 110-225 CV Plazas: 5 Maletero: 352-592 L')
INTO Caracteristicas(marca,modelo,caracteristicastecnicas)
VALUES
    ('CitroÃ«n','CitroÃ«n Berlingo','Consumo: 0,0-5,7 L/100km Eco: E Potencia 100-136 CV Plazas: 5-7 Maletero: 597-850 L')
INTO Caracteristicas(marca,modelo,caracteristicastecnicas)
VALUES
    ('Seat','Seat Alhambra','Consumo: 5,0-7,3 L/100km Eco: G Potencia: 115-220 CV Plazas: 5 Maletero: 955/2430 L')
INTO Caracteristicas(marca,modelo,caracteristicastecnicas)
VALUES
    ('Ford','Ford Fiesta 2022','Consumo: 5,1-6,7 L/100km Eco: MHG Potencia: 125-200 CV Plazas: 5 Maletero: 311 L')
INTO Caracteristicas(marca,modelo,caracteristicastecnicas)
VALUES
    ('CitroÃ«n','CitroÃ«n C5 Aircross','Consumo: 1,4-6,5 L/100km Eco: HE Potencia: 130-225 CV Plazas: 5 Maletero: 460-720 L')
INTO Caracteristicas(marca,modelo,caracteristicastecnicas)
VALUES
    ('Cupra','Cupra Ateca','Consumo: 9,0-9,0 L/100km Eco: G Potencia: 300-300 CV Plazas: 5 Maletero: 485 L')
INTO Caracteristicas(marca,modelo,caracteristicastecnicas)
VALUES
    ('Dacia','Dacia Jogger 2022','Consumo: 4,3-5,7 L/100km Eco: GLP Potencia: 101-110 CV Plazas: 5-7 Maletero: 708 L')
INTO Caracteristicas(marca,modelo,caracteristicastecnicas)
VALUES
    ('Hyundai','Hyundai Ioniq','Consumo: 0,0-5,2 L/100km Eco: G Potencia: 136-141 CV Plazas: 5 Maletero: 456 L')
INTO Caracteristicas(marca,modelo,caracteristicastecnicas)
VALUES
    ('Toyota','Toyota Prius +','Consumo: 4,1-4,4 L/100km Eco: G Potencia: 136-136 CV Plazas: 7 Maletero: 200/505 L')
INTO Caracteristicas(marca,modelo,caracteristicastecnicas)
VALUES
    ('Tesla','Tesla Model S','Consumo: 0,0-0,0 L/100km Eco: G Potencia: 1020-670 CV Plazas: 5 Maletero: 793 L')
INTO Caracteristicas(marca,modelo,caracteristicastecnicas)
VALUES
    ('Volkswagen','Volkswagen Polo','Consumo: 5,2-5,7 L/100km Eco: G Potencia: 110-95 CV Plazas: 5 Maletero: 351 L')
INTO Caracteristicas(marca,modelo,caracteristicastecnicas)
VALUES
    ('Suzuki','Suzuki S-Cross 2022','CarrocerÃ­a: SUV Mediano Plazas: 5 Maletero: 430 L Potencia: 129 CV Consumo: 5,3-6,1 L/100km')
INTO Caracteristicas(marca,modelo,caracteristicastecnicas)
VALUES
    ('Fiat','Fiat Panda','Consumo: 5,2-6,9 L/100km Eco: G Potencia: 69-86 CV Plazas: 4 Maletero: 225 L')
INTO Caracteristicas(marca,modelo,caracteristicastecnicas)
VALUES
    ('Nissan','Nissan Leaf 2022','Consumo: 5,2-6,9 L/100km Eco: G Potencia: 150-218 CV Plazas: 5 Maletero: 394 L')
INTO Caracteristicas(marca,modelo,caracteristicastecnicas)
VALUES
    ('Skoda','Skoda Scala','Consumo: 0,0-6,0 L/100km Eco: G Potencia: 116-95 CV Plazas: 5 Maletero: 467 L')
INTO Caracteristicas(marca,modelo,caracteristicastecnicas)
VALUES
    ('Volkswagen','Volkswagen T-Cross','Consumo: 5,8 - 6,5 L/100km Eco: G Potencia: 110-95 CV Plazas: 5 Maletero: 385/455 L')
INTO Caracteristicas(marca,modelo,caracteristicastecnicas)
VALUES
    ('Alfa Romeo','Alfa Romeo Giulietta','Consumo: 4,6-7,2 L/100km Eco: G Potencia: 120-120 CV Plazas: 5 Maletero: 350 L')
INTO Caracteristicas(marca,modelo,caracteristicastecnicas)
VALUES
    ('Audi','Audi A1 Sportback','Consumo: 5,6-6,8 L/100km Eco: G Potencia: 95-207 CV Plazas: 5 Maletero: 335 L')
INTO Caracteristicas(marca,modelo,caracteristicastecnicas)
VALUES
    ('Mazda','Mazda 5','Consumo: 5,0-7,1 L/100km Eco: G Potencia: 132-194 CV Plazas: 2 Maletero: 130 L')
INTO Caracteristicas(marca,modelo,caracteristicastecnicas)
VALUES
    ('Dacia','Dacia Lodgy','Consumo: 5,1-7,1 L/100km Eco: G Potencia: 102-95 CV Plazas: 5 Maletero: 827 L')
INTO Caracteristicas(marca,modelo,caracteristicastecnicas)
VALUES
    ('Opel','Opel Zafira','Consumo: 4,8-5,4 L/100km Eco: G Potencia: 120-177 CV Plazas: 5 Maletero: 1172 L')
INTO Caracteristicas(marca,modelo,caracteristicastecnicas)
VALUES
    ('Peugeot','Peugeot 108','Consumo: 4,1-4,3 L/100km Eco: G Potencia: 72-82 CV Plazas: 4 Maletero: 196 L')
SELECT * FROM dual;

/**
* @author Maribel
*/
INSERT ALL INTO Vehiculos(matricula,marca,modelo,kilometraje,añofabricacion,fechaentrada)
VALUES
    --vendidos y desguazados
    ('6270 QNX','Toyota','Toyota Auris',100000,2013,TO_DATE('17/06/2022','DD/MM/YYYY'))
INTO Vehiculos(matricula,marca,modelo,kilometraje,añofabricacion,fechaentrada)
VALUES
    ('0909 HCT','Fiat','Fiat 500/500C',80000,2010,TO_DATE('01/12/2020','DD/MM/YYYY'))
INTO Vehiculos(matricula,marca,modelo,kilometraje,añofabricacion,fechaentrada)
VALUES
    -- vendidos
    ('8976 HLR','Smart','Smart Fortwo',0,2017,TO_DATE('11/08/2022','DD/MM/YYYY'))
INTO Vehiculos(matricula,marca,modelo,kilometraje,añofabricacion,fechaentrada)
VALUES
    ('6849 PZX','Renault','Renault Captur',0,2016,TO_DATE('29/11/2022','DD/MM/YYYY'))
INTO Vehiculos(matricula,marca,modelo,kilometraje,añofabricacion,fechaentrada)
VALUES
    ('4570 KHG','Suzuki','Suzuki Across',0,2020,TO_DATE('27/09/2022','DD/MM/YYYY'))
INTO Vehiculos(matricula,marca,modelo,kilometraje,añofabricacion,fechaentrada)
VALUES
    ('8017 QYU','Kia','Kia Sportage 2022',0,2022,TO_DATE('18/03/2022','DD/MM/YYYY'))
INTO Vehiculos(matricula,marca,modelo,kilometraje,añofabricacion,fechaentrada)
VALUES
    ('2805 HFP','Opel','Opel Astra 2022',0,2022,TO_DATE('12/03/2022','DD/MM/YYYY'))
INTO Vehiculos(matricula,marca,modelo,kilometraje,añofabricacion,fechaentrada)
VALUES
    ('5580 YZQ','CitroÃ«n','CitroÃ«n Berlingo',0,2022,TO_DATE('21/04/2022','DD/MM/YYYY'))
INTO Vehiculos(matricula,marca,modelo,kilometraje,añofabricacion,fechaentrada)
VALUES
    ('6066 LIL','Seat','Seat Alhambra',0,2021,TO_DATE('24/08/2022','DD/MM/YYYY'))
INTO Vehiculos(matricula,marca,modelo,kilometraje,añofabricacion,fechaentrada)
VALUES
    ('7282 GAC','Ford','Ford Fiesta 2022',0,2022,TO_DATE('29/11/2022','DD/MM/YYYY'))
INTO Vehiculos(matricula,marca,modelo,kilometraje,añofabricacion,fechaentrada)
VALUES
    -- disponibles
    ('3511 KPG','CitroÃ«n','CitroÃ«n C5 Aircross',0,2022,TO_DATE('26/11/2022','DD/MM/YYYY'))
INTO Vehiculos(matricula,marca,modelo,kilometraje,añofabricacion,fechaentrada)
VALUES
    ('6227 JIH','Cupra','Cupra Ateca',0,2021,TO_DATE('13/11/2022','DD/MM/YYYY'))
INTO Vehiculos(matricula,marca,modelo,kilometraje,añofabricacion,fechaentrada)
VALUES
    ('5286 QMA','Dacia','Dacia Jogger 2022',0,2022,TO_DATE('30/11/2022','DD/MM/YYYY'))
INTO Vehiculos(matricula,marca,modelo,kilometraje,añofabricacion,fechaentrada)
VALUES
    ('9592 GOK','Hyundai','Hyundai Ioniq',0,2020,TO_DATE('21/11/2022','DD/MM/YYYY'))
INTO Vehiculos(matricula,marca,modelo,kilometraje,añofabricacion,fechaentrada)
VALUES
    ('7215 GFO','Toyota','Toyota Prius +',10000,2021,TO_DATE('16/10/2022','DD/MM/YYYY'))
INTO Vehiculos(matricula,marca,modelo,kilometraje,añofabricacion,fechaentrada)
VALUES
    ('6890 WRB','Tesla','Tesla Model S',0,2022,TO_DATE('18/10/2022','DD/MM/YYYY'))
INTO Vehiculos(matricula,marca,modelo,kilometraje,añofabricacion,fechaentrada)
VALUES
    ('8790 IOA','Volkswagen','Volkswagen Polo',5000,2021,TO_DATE('26/10/2022','DD/MM/YYYY'))
INTO Vehiculos(matricula,marca,modelo,kilometraje,añofabricacion,fechaentrada)
VALUES
    ('8789 RBR','Suzuki','Suzuki S-Cross 2022',0,2022,TO_DATE('18/10/2022','DD/MM/YYYY'))
INTO Vehiculos(matricula,marca,modelo,kilometraje,añofabricacion,fechaentrada)
VALUES
    ('1922 JWW','Fiat','Fiat Panda',2500,2020,TO_DATE('30/11/2022','DD/MM/YYYY'))
INTO Vehiculos(matricula,marca,modelo,kilometraje,añofabricacion,fechaentrada)
VALUES
    ('9918 GKP','Nissan','Nissan Leaf 2022',0,2022,TO_DATE('05/12/2022','DD/MM/YYYY'))
INTO Vehiculos(matricula,marca,modelo,kilometraje,añofabricacion,fechaentrada)
VALUES
    -- desguazados
    ('0447 LLW','Skoda','Skoda Scala',90500,2019,TO_DATE('17/08/2021','DD/MM/YYYY'))
INTO Vehiculos(matricula,marca,modelo,kilometraje,añofabricacion,fechaentrada)
VALUES
    ('0801 NNZ','Volkswagen','Volkswagen T-Cross',110750,2018,TO_DATE('13/03/2022','DD/MM/YYYY'))
INTO Vehiculos(matricula,marca,modelo,kilometraje,añofabricacion,fechaentrada)
VALUES
    ('6018 VXC','Alfa Romeo','Alfa Romeo Giulietta',165000,2016,TO_DATE('15/06/2022','DD/MM/YYYY'))
INTO Vehiculos(matricula,marca,modelo,kilometraje,añofabricacion,fechaentrada)
VALUES
    ('0328 LCI','Audi','Audi A1 Sportback',95650,2018,TO_DATE('20/01/2022','DD/MM/YYYY'))
INTO Vehiculos(matricula,marca,modelo,kilometraje,añofabricacion,fechaentrada)
VALUES
    ('4098 MGI','Mazda','Mazda 5',145000,2015,TO_DATE('18/12/2021','DD/MM/YYYY'))
INTO Vehiculos(matricula,marca,modelo,kilometraje,añofabricacion,fechaentrada)
VALUES
    ('4500 WZV','Dacia','Dacia Lodgy',199250,2012,TO_DATE('23/08/2022','DD/MM/YYYY'))
INTO Vehiculos(matricula,marca,modelo,kilometraje,añofabricacion,fechaentrada)
VALUES
    ('4085 LAF','Opel','Opel Zafira',132525,2013,TO_DATE('23/02/2020','DD/MM/YYYY'))
INTO Vehiculos(matricula,marca,modelo,kilometraje,añofabricacion,fechaentrada)
VALUES
    ('5029 KLW','Peugeot','Peugeot 108',185250,2014,TO_DATE('19/09/2021','DD/MM/YYYY'))
SELECT * FROM dual;
    
/**
* @author Maribel
*/
INSERT ALL INTO Disponibles(matricula)
VALUES
    ('3511 KPG')
INTO Disponibles(matricula)
VALUES
    ('6227 JIH')
INTO Disponibles(matricula)
VALUES
    ('5286 QMA')
INTO Disponibles(matricula)
VALUES
    ('9592 GOK')
INTO Disponibles(matricula)
VALUES
    ('7215 GFO')
INTO Disponibles(matricula)
VALUES
    ('6890 WRB')
INTO Disponibles(matricula)
VALUES
    ('8790 IOA')
INTO Disponibles(matricula)
VALUES
    ('8789 RBR')
INTO Disponibles(matricula)
VALUES
    ('1922 JWW')
INTO Disponibles(matricula)
VALUES
    ('9918 GKP')
SELECT * FROM dual;
    
/**
* @author Maribel
*/
INSERT ALL INTO Vendidos(matricula,fechasalida,precio)
VALUES
    ('6270 QNX',TO_DATE('13/02/2011','DD/MM/YYYY'),18521)
INTO Vendidos(matricula,fechasalida,precio)
VALUES
    ('0909 HCT',TO_DATE('09/06/2011','DD/MM/YYYY'),41680)
INTO Vendidos(matricula,fechasalida,precio)
VALUES
    ('8976 HLR',TO_DATE('28/03/2015','DD/MM/YYYY'),26221)
INTO Vendidos(matricula,fechasalida,precio)
VALUES
    ('6849 PZX',TO_DATE('16/08/2013','DD/MM/YYYY'),16790)
INTO Vendidos(matricula,fechasalida,precio)
VALUES
    ('4570 KHG',TO_DATE('29/08/2014','DD/MM/YYYY'),53891)
INTO Vendidos(matricula,fechasalida,precio)
VALUES
    ('8017 QYU',TO_DATE('07/12/2017','DD/MM/YYYY'),31520)
INTO Vendidos(matricula,fechasalida,precio)
VALUES
    ('2805 HFP',TO_DATE('02/03/2015','DD/MM/YYYY'),63972)
INTO Vendidos(matricula,fechasalida,precio)
VALUES
    ('5580 YZQ',TO_DATE('15/02/2012','DD/MM/YYYY'),13795)
INTO Vendidos(matricula,fechasalida,precio)
VALUES
    ('6066 LIL',TO_DATE('19/12/2013','DD/MM/YYYY'),54314)
INTO Vendidos(matricula,fechasalida,precio)
VALUES
    ('7282 GAC',TO_DATE('21/08/2014','DD/MM/YYYY'),25986)
SELECT * FROM dual;
    
/**
* @author Maribel
*/
INSERT ALL INTO Desguazados(matricula,fechasalida,precio)
VALUES
    ('0447 LLW',TO_DATE('06/01/2021','DD/MM/YYYY'),8848)
INTO Desguazados(matricula,fechasalida,precio)
VALUES
    ('0801 NNZ',TO_DATE('27/12/2018','DD/MM/YYYY'),5923)
INTO Desguazados(matricula,fechasalida,precio)
VALUES
    ('6018 VXC',TO_DATE('20/07/2016','DD/MM/YYYY'),4983)
INTO Desguazados(matricula,fechasalida,precio)
VALUES
    ('0328 LCI',TO_DATE('24/02/2022','DD/MM/YYYY'),9070)
INTO Desguazados(matricula,fechasalida,precio)
VALUES
    ('4098 MGI',TO_DATE('27/02/2021','DD/MM/YYYY'),8693)
INTO Desguazados(matricula,fechasalida,precio)
VALUES
    ('4500 WZV',TO_DATE('15/12/2021','DD/MM/YYYY'),2526)
INTO Desguazados(matricula,fechasalida,precio)
VALUES
    ('4085 LAF',TO_DATE('06/07/2019','DD/MM/YYYY'),3459)
INTO Desguazados(matricula,fechasalida,precio)
VALUES
    ('5029 KLW',TO_DATE('21/06/2017','DD/MM/YYYY'),7976)
INTO Desguazados(matricula,fechasalida,precio)
VALUES
    ('6270 QNX',TO_DATE('16/07/2022','DD/MM/YYYY'),3425)
INTO Desguazados(matricula,fechasalida,precio)
VALUES
    ('0909 HCT',TO_DATE('11/03/2021','DD/MM/YYYY'),6329)
SELECT * FROM dual;

/**
* @author Jesus
*/
INSERT INTO ClienteCompraVehiculo
    VALUES ('8976 HLR','34791209F');
INSERT INTO ClienteCompraVehiculo
    VALUES ('6849 PZX','34791209F');
INSERT INTO ClienteCompraVehiculo
    VALUES ('4570 KHG','34791209F');
INSERT INTO ClienteCompraVehiculo
    VALUES ('8017 QYU','56321485A');
INSERT INTO ClienteCompraVehiculo
    VALUES ('2805 HFP','56321485A');
INSERT INTO ClienteCompraVehiculo
    VALUES ('5580 YZQ','66685421S');
INSERT INTO ClienteCompraVehiculo
    VALUES ('6066 LIL','36669852L');
INSERT INTO ClienteCompraVehiculo
    VALUES ('7282 GAC','52278741D');
INSERT INTO ClienteCompraVehiculo
    VALUES ('6270 QNX','52278741D');
INSERT INTO ClienteCompraVehiculo
    VALUES ('0909 HCT','52278741D');


/**
* @author MarÃ­a
*/
INSERT INTO Trabajadores(DNI,nombre,telefono,correo,direccion,cuenta_bancaria,num_seguridadsocial,salario,estado)
VALUES
    ('25391569Q','Juan MartÃ­nez','+34 689334921','juanmartinez@gmail.com','Hartmann Tunnel , 5B, 94820, Madrid','ES3620803757637333377765','938274199921',1200,'activo');
INSERT INTO Trabajadores(DNI,nombre,telefono,correo,direccion,cuenta_bancaria,num_seguridadsocial,salario,estado)
VALUES
    ('14332485W','Andrea GarcÃ­a','+34 652097581','andreagarcia@gmail.com','Calle TiÃ±a, 23, 3D, 26553, Barcelona','ES5021002655003573317245','184932004533',2000,'activo');
INSERT INTO Trabajadores(DNI,nombre,telefono,correo,direccion,cuenta_bancaria,num_seguridadsocial,salario,estado)
VALUES
    ('26345781P','RaÃºl PÃ©rez','+34 630989951','raulperez@gmail.com','Plaza Nevot, 2, 12E, 48392, Zaragoza','ES7920958335761469958632','039299991283',2500,'activo');
INSERT INTO Trabajadores(DNI,nombre,telefono,correo,direccion,cuenta_bancaria,num_seguridadsocial,salario,estado)
VALUES
    ('31774023L','Laura Moreno','+34 665748392','lauramoreno@gmail.com','Calle Zenete, 24, 9E, 34278, Valencia','ES4431904874751412316588','192830094837',1900,'activo');
INSERT INTO Trabajadores(DNI,nombre,telefono,correo,direccion,cuenta_bancaria,num_seguridadsocial,salario,estado)
VALUES
    ('82165874C','Mario Melgar','+34 622231893','mariomelgar@gmail.com','Calle Huerto, 4, 8E, 76384, Toledo','ES8920806989186722931346','647388882910',1500,'activo');

/**
* @author MarÃ­a
*/
INSERT INTO TrabajadorVendeVehiculo (Matricula, DNI) VALUES ('6270 QNX','25391569Q');
INSERT INTO TrabajadorVendeVehiculo (Matricula, DNI) VALUES ('0909 HCT','14332485W');
INSERT INTO TrabajadorVendeVehiculo (Matricula, DNI) VALUES ('8017 QYU','26345781P');
INSERT INTO TrabajadorVendeVehiculo (Matricula, DNI) VALUES ('2805 HFP','26345781P');
INSERT INTO TrabajadorVendeVehiculo (Matricula, DNI) VALUES ('5580 YZQ','82165874C');

    
/**
* @author JosÃ© Luis
*/
INSERT INTO Contabilidad (CosteFijo) VALUES (50000);


INSERT INTO RegistroSalarios(DNI, FechaPago, Salario)
VALUES ('25391569Q',TO_DATE('16/08/2013','DD/MM/YYYY'), '1200');
INSERT INTO RegistroSalarios(DNI, FechaPago, Salario)
VALUES ('14332485W',TO_DATE('17/08/2013','DD/MM/YYYY'), '2000');
INSERT INTO RegistroSalarios(DNI, FechaPago, Salario)
VALUES ('26345781P',TO_DATE('18/08/2013','DD/MM/YYYY'), '2500');
INSERT INTO RegistroSalarios(DNI, FechaPago, Salario)
VALUES ('82165874C',TO_DATE('19/08/2013','DD/MM/YYYY'), '1900');
INSERT INTO RegistroSalarios(DNI, FechaPago, Salario)
VALUES ('31774023L',TO_DATE('20/08/2013','DD/MM/YYYY'), '1500');

/**
* @author Capilla
*/
INSERT INTO Proveedores(CIF, nombre_empresa, telefono_empresa, correo_empresa, direccion_empresa, cuenta_bancaria_empresa) 
    VALUES ('34582124F', 'Concesionario de coches de lujo', '912341248', 'lujo@gmail.com', 'Calle Prestigio 123', 'ES0123456789012345678901'); 
INSERT INTO Proveedores(CIF, nombre_empresa, telefono_empresa, correo_empresa, direccion_empresa, cuenta_bancaria_empresa)
    VALUES('48682095B', 'Concesionario de coches familiares', '914895679', 'familiares@gmail.com', 'Calle Practicidad 456', 'ES0171946789012345678901');    
INSERT INTO Proveedores(CIF, nombre_empresa, telefono_empresa, correo_empresa, direccion_empresa, cuenta_bancaria_empresa)
    VALUES ('46569175C', 'Concesionario de coches deportivos', '915107680', 'deportivos@gmail.com', 'Calle Potencia 789', 'ES0123305989012345678901');   
INSERT INTO Proveedores(CIF, nombre_empresa, telefono_empresa, correo_empresa, direccion_empresa, cuenta_bancaria_empresa)
    VALUES ('35838217G', 'Concesionario de coches ecolÃ³gicos', '910813681', 'ecologicos@gmail.com', 'Calle Sostenibilidad 321', 'ES0134215789012345678901');    
INSERT INTO Proveedores(CIF, nombre_empresa, telefono_empresa, correo_empresa, direccion_empresa, cuenta_bancaria_empresa)
    VALUES ('25438758A', 'Concesionario de coches de segunda mano', '915643682', 'segundamano@gmail.com', 'Calle Ahorro 654', 'ES0123456788261945678901');
    
    
INSERT INTO ProveedorSuministraVehiculo (CIF, Marca, Matricula, precio_proveedor, fechacompra) VALUES ('48682095B', 'Ferrari', '6270 QNX', 10000, TO_DATE('10/03/2016', 'DD/MM/YY'));
INSERT INTO ProveedorSuministraVehiculo (CIF, Marca, Matricula, precio_proveedor, fechacompra) VALUES ('46569175C', 'Lamborghini', '0909 HCT', 12000, TO_DATE('11/09/2017', 'DD/MM/YY'));
INSERT INTO ProveedorSuministraVehiculo (CIF, Marca, Matricula, precio_proveedor, fechacompra) VALUES ('35838217G', 'Porsche', '8976 HLR', 11000, TO_DATE('10/08/2016', 'DD/MM/YY'));
INSERT INTO ProveedorSuministraVehiculo (CIF, Marca, Matricula, precio_proveedor, fechacompra) VALUES ('25438758A', 'Maserati', '6849 PZX', 9000, TO_DATE('01/10/2020', 'DD/MM/YY'));