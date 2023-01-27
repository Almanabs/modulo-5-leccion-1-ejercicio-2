CREATE TABLE personas (
    rut VARCHAR(22) NOT NULL,
    nombre VARCHAR(255) NOT NULL,
    edad INTEGER NOT NULL
);

INSERT INTO personas (rut, nombre, edad) VALUES ('1.111.111-1', 'Carlos', 56);
INSERT INTO personas (rut, nombre, edad) VALUES ('16.466.797-9','Jader', 36);
INSERT INTO personas (rut, nombre, edad) VALUES ('13.393.765-3', 'Gumercindo', 87);
INSERT INTO personas (rut, nombre, edad) VALUES ('23.555.888-9', 'Dante', 18);
INSERT INTO personas (rut, nombre, edad) VALUES ('20.777.777', 'María', 18);
INSERT INTO personas (rut, nombre, edad) VALUES ('18.798.709-1', 'Sebastián', 28);
INSERT INTO personas (rut, nombre, edad) VALUES ('26.112.231-4', 'Yanitza', 40);
INSERT INTO personas (rut, nombre, edad) VALUES ('25.514.236-3', 'Saul', 23);
INSERT INTO personas (rut, nombre, edad) VALUES ('5.423.123-2', 'Jose', 45);
INSERT INTO personas (rut, nombre, edad) VALUES ('2.222.222-2', 'andres',56);
INSERT INTO personas (rut, nombre, edad) VALUES ('26.609.418-3','Rogert', 23);
INSERT INTO personas (rut, nombre, edad) VALUES ('22.222.222-2', 'Ash', 60);
INSERT INTO personas (rut, nombre, edad) VALUES ('19.357.288-K', 'Pedro', 26);
INSERT INTO personas (rut, nombre, edad) VALUES ('26386444-1', 'andres',56);
INSERT INTO personas (rut, nombre, edad) VALUES ('16.188.188-8', 'Miguel', 35);
INSERT INTO personas (rut, nombre, edad) VALUES ('12.168.145-9','Rony', 32);
INSERT INTO personas (rut, nombre, edad) VALUES ('12.122.122-2','Pepa', 33);
INSERT INTO personas (rut, nombre, edad) VALUES ('13.133.133-3','Diego', 21);
INSERT INTO personas (rut, nombre, edad) VALUES ('13.675.924-7','Mario', 85);
INSERT INTO personas (rut, nombre, edad) VALUES ('14.144.251-1','Paula', 35);
INSERT INTO personas (rut, nombre, edad) VALUES ('16.555.444-1','Muriela', 22);
INSERT INTO personas (rut, nombre, edad) VALUES ('18.188.188-8','Pato', 44);

SELECT * FROM personas;

-- MOSTRAR INFORMACION DE LAS PERSONAS CON RUT '13.133.133-3'
SELECT RUT FROM personas WHERE RUT =  '13.133.133-3';

-- MOSTRAR INFORMACION DE LAS PERSONAS MAYORES A 25
SELECT * FROM personas WHERE edad>25;

-- MOSTRAR INFORMACION DE LAS PERSONAS QUE NO SE LLAMEN MARIO
SELECT * FROM personas WHERE NOT nombre ILIKE '%MARIO%'; 

-- MOSTRAR INFORMACION DE LAS PERSONAS CON RUT EMPEZADO CON 13
SELECT * FROM personas WHERE rut ILIKE  '13%';

-- MOSTRAR INFORMACION DE LAS PERSONAS CON NOMBRE TERMINADO EN A
SELECT * FROM personas WHERE nombre ILIKE '%A';

-- MOSTRAR INFORMACION DE LAS PERSONAS CON NOMBRE EMPEZADO EN P Y CON EDAD MAYOR A 34
SELECT * FROM personas WHERE nombre ILIKE 'P%' AND edad>34;

-- MOSTRAR INFORMACION DE LAS PERSONAS CON RUT EMPEZADO EN 1, NOMBRE NO EMPEZADO EN M Y EDAD MENOR A 40
SELECT * FROM personas WHERE rut ILIKE '1%' AND nombre NOT ILIKE 'M%' AND edad<40;

-- MOSTRAR INFORMACION DE LAS PERSONAS CON RUT EMPEZADO EN 13 O TERMINADO EN 1, CON NOMBRES DIEGO,MARIO,PATO,PEPA Y EDAD ENTRE 20 Y 80
SELECT * FROM personas WHERE
rut LIKE '13%' OR rut LIKE '%1'
AND nombre IN('DIEGO,MARIO,PATO,PEPA')
AND edad>=20 OR edad<80;


