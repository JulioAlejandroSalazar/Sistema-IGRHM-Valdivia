CREATE TABLE REGION (
    id_region NUMBER PRIMARY KEY,
    nombre VARCHAR2(100)
);

CREATE TABLE CIUDAD (
    id_ciudad NUMBER PRIMARY KEY,
    nombre VARCHAR2(100),
    id_region NUMBER,
    CONSTRAINT fk_region FOREIGN KEY (id_region) REFERENCES REGION(id_region)
);

CREATE TABLE COMUNA (
    id_comuna NUMBER PRIMARY KEY,
    nombre VARCHAR2(100),
    id_ciudad NUMBER,
    CONSTRAINT fk_ciudad FOREIGN KEY (id_ciudad) REFERENCES CIUDAD(id_ciudad)
);

CREATE TABLE EMPLEADO (
    id_empleado NUMBER PRIMARY KEY,
    nombre VARCHAR2(100),
    sueldo NUMBER,
    id_comuna NUMBER,
    CONSTRAINT fk_comuna FOREIGN KEY (id_comuna) REFERENCES COMUNA(id_comuna)
);

INSERT INTO REGION (id_region, nombre) VALUES (1, 'Metropolitana');
INSERT INTO REGION (id_region, nombre) VALUES (2, 'Los Lagos');
INSERT INTO REGION (id_region, nombre) VALUES (3, 'Araucanía');

INSERT INTO CIUDAD (id_ciudad, nombre, id_region) VALUES (4, 'Santiago', 1);
INSERT INTO CIUDAD (id_ciudad, nombre, id_region) VALUES (5, 'Osorno', 2);
INSERT INTO CIUDAD (id_ciudad, nombre, id_region) VALUES (6, 'Temuco', 3);

INSERT INTO COMUNA (id_comuna, nombre, id_ciudad) VALUES (7, 'Santiago', 4);
INSERT INTO COMUNA (id_comuna, nombre, id_ciudad) VALUES (8, 'Río Bueno', 5);
INSERT INTO COMUNA (id_comuna, nombre, id_ciudad) VALUES (9, 'Padre Las Casas', 6);

INSERT INTO EMPLEADO (id_empleado, nombre, sueldo, id_comuna) VALUES (1, 'Juan Pérez', 600000, 7);
INSERT INTO EMPLEADO (id_empleado, nombre, sueldo, id_comuna) VALUES (2, 'María López', 450000, 8);
INSERT INTO EMPLEADO (id_empleado, nombre, sueldo, id_comuna) VALUES (3, 'Carlos Díaz', 700000, 9);

SELECT * FROM EMPLEADO WHERE sueldo > 500000;
SELECT * FROM CIUDAD;
SELECT * FROM CIUDAD WHERE nombre = 'Santiago';
