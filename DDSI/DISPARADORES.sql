/**
* @author Maribel
*/
CREATE OR REPLACE TRIGGER compra_trg
AFTER INSERT ON ClienteCompraVehiculo
FOR EACH ROW
BEGIN
  DELETE FROM Disponibles WHERE matricula = :new.matricula;
END;


/**
* @author Maribel
*/
CREATE OR REPLACE TRIGGER desguazados_trg
AFTER INSERT ON Desguazados
FOR EACH ROW
BEGIN
  DELETE FROM Disponibles WHERE matricula = :new.matricula;
END;


/**
* @author Jesus
*/
CREATE OR REPLACE TRIGGER alta_cliente_activo
AFTER INSERT ON cliente
FOR EACH ROW
BEGIN
	INSERT INTO Cliente_activo (DNIactivo) VALUES (:NEW.DNI);
END;

/**
* @author Jesus
*/
CREATE OR REPLACE TRIGGER eliminar_cliente_activo
AFTER DELETE ON Cliente_activo
FOR EACH ROW
BEGIN
	INSERT INTO Cliente_eliminado (DNIeliminado) VALUES (:OLD.DNIactivo);
END;

/**
* @author Capilla
**/
CREATE OR REPLACE TRIGGER validacion_proveedor
BEFORE UPDATE ON Proveedores
FOR EACH ROW
BEGIN
    -- Comprobar el formato del teléfono
    IF :NEW.telefono_empresa IS NOT NULL THEN
        IF NOT REGEXP_LIKE(:new.telefono_empresa, '[0-9]{9}') THEN
            RAISE_APPLICATION_ERROR(-20002, 'El teléfono no es válido.');
        END IF;
    END IF;

    -- Comprobar el formato de la cuenta bancaria
    IF :NEW.cuenta_bancaria_empresa IS NOT NULL THEN
        IF LENGTH(:new.cuenta_bancaria_empresa) != 24 THEN
            RAISE_APPLICATION_ERROR(-20001, 'La longitud de la cuenta bancaria debe ser de 24 caracteres');
        END IF;
        -- Comprobar que los dos primeros caracteres de la cuenta bancaria son letras mayúsculas
        IF NOT REGEXP_LIKE(:new.cuenta_bancaria_empresa, '^[A-Z]{2}.*$') THEN
            RAISE_APPLICATION_ERROR(-20002, 'Los dos primeros caracteres de la cuenta bancaria deben ser letras mayúsculas');
        END IF;
    END IF;
END;


/**
* @author María
**/
create or replace TRIGGER VALIDAR_SALARIO 
BEFORE UPDATE ON Trabajadores
FOR EACH ROW
BEGIN
  IF :NEW.salario IS NOT NULL THEN
        IF REGEXP_LIKE(:new.salario,0) THEN
            RAISE_APPLICATION_ERROR(-2002,'El salario no es valido');
        END IF;
    END IF;
END;


/**
* @author JL
**/
CREATE OR REPLACE TRIGGER VERIFICAR_PAGA_MES
BEFORE INSERT ON RegistroSalarios
FOR EACH ROW
DECLARE
    v_count INTEGER;
BEGIN
    SELECT COUNT(*) INTO v_count
    FROM RegistroSalarios
    WHERE DNI = :NEW.DNI AND 
    extract(month from (FechaPago)) = extract(month from :NEW.FechaPago) AND
    extract(year from (FechaPago)) = extract(year from :NEW.FechaPago);

    IF v_count > 0 THEN
        raise_application_error (-20100, 'Error: Ya existe un registro con ese DNI, Mes y Año de la Fecha de Pago');
    END IF;
END;