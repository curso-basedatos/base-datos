##Cursores Explicitos y busquedas de multiples tablas.
En esta practica vas a usar cursores explicitos para usar uniones de tablas

1. Crear las siguientes tablas junto con sus registros

```sql


CREATE TABLE EMPLEADO_VENTAS (
id_cliente NUMBER,
nombre_cliente VARCHAR2 (100),
SUELDO_BASE NUMBER,
CONSTRAINT PK_ID_CLIENTE PRIMARY KEY (ID_CLIENTE));

insert into EMPLEADO_VENTAS values(1,'Juan',5200);
insert into EMPLEADO_VENTAS values(2,'Petra',4200);
insert into EMPLEADO_VENTAS values(3,'Panfilo',6400);
insert into EMPLEADO_VENTAS values(4,'Anacleta',5700);
insert into EMPLEADO_VENTAS values(5,'Chana',4600);


select * from EMPLEADO_VENTAS;

CREATE TABLE SUCURSAL(
ID_SUCURSAL NUMBER,
ID_CLIENTE NUMBER,
NOMBRE VARCHAR2(120),
TELEFONO VARCHAR2(40),
VENTA NUMBER,
CONSTRAINT PK_ID_SUCURSAL PRIMARY KEY (ID_SUCURSAL),
CONSTRAINT FK_ID_CLIENTE1 FOREIGN KEY (ID_CLIENTE) REFERENCES EMPLEADO_VENTAS (ID_CLIENTE));

INSERT INTO SUCURSAL VALUES(1,1,'LAS AMERICAS', '67 55 66 77',4000);
INSERT INTO SUCURSAL VALUES(2,1,'PLAZA ARAGON', '67 55 66 77',4000);
INSERT INTO SUCURSAL VALUES(3,1,'PLAZA COYOACAN', '67 55 66 77',4000);
INSERT INTO SUCURSAL VALUES(4,1,'PERISUR', '67 55 66 77',4000);
INSERT INTO SUCURSAL VALUES(5,2,'LAS AMERICAS', '67 55 66 77',4000);
INSERT INTO SUCURSAL VALUES(6,2,'PERISUR', '67 55 66 77',4000);
INSERT INTO SUCURSAL VALUES(7,3,'PLAZA ARAGON', '67 55 66 77',4000);
INSERT INTO SUCURSAL VALUES(8,4,'PLAZA COYOACAN', '67 55 66 77',4000);
INSERT INTO SUCURSAL VALUES(9,4,'LAS AMERICAS', '67 55 66 77',4000);
INSERT INTO SUCURSAL VALUES(10,5,'LAS AMERICAS', '67 55 66 77',4000);
INSERT INTO SUCURSAL VALUES(11,5,'PERISUR', '67 55 66 77',4000);
INSERT INTO SUCURSAL VALUES(12,5,'PERISUR', '67 55 66 77',4000);
INSERT INTO SUCURSAL VALUES(13,5,'PLAZA COYOACAN', '67 55 66 77',4000);

SELECT * FROM SUCURSAL;

```
###Actividades
1. Desarrollar un bLoque PL SQL que  utilizando un cursor nos de el nombre del empledo y su sueldo base. Utilizar para ello un cursor explicito.

2. Realizar una consulta para saber los vendedores en que sucursales han laborado. Para ello utilizar cursores. Anota el resultado de ejecucion en la ventana de salidas.
Contrasta el resultado con la siguiente consulta con joins:
```sql
SELECT EMPLEADO_VENTAS.ID_CLIENTE, EMPLEADO_VENTAS.NOMBRE_CLIENTE, SUCU5RSAL.NOMBRE FROM EMPLEADO_VENTAS JOIN SUCURSAL  ON EMPLEADO_VENTAS.ID_CLIENTE=SUCURSAL.ID_CLIENTE;
```
Anota el resultado obtenido en su tiempo de ejecucion. ¿Que observas?

3. Elabora una consulta que obtenga el nombre del vendedor y las ventas realizadas por totales por dicho vendedor, por el total de las tiendas en las que esuvo. Debe haber una columna adicional donde debe apacer un campo premio, el cual se obtiene 
con la siguiente formula premio= (sueldo base del trabajador  + ventas totales)*0.15;
