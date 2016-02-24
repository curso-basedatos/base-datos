#Practica No. 4. 
1. Crear la siguiente tabla
```sql
CREATE TABLE libros
  (
    libro_id           INTEGER,
    isbn              VARCHAR2(13),
    titulo            VARCHAR2(200),
    resumen           VARCHAR2(2000),
    autor             VARCHAR2(200),
    fecha_publicacion DATE,
    num_pag           NUMBER,
    CONSTRAINT pk_book_id PRIMARY KEY (book_id)
  );
  
SET serveroutput ON;
```
2. Generar una secuencia que se incremente de 1 un en 1

3. Generar un procedimiento almacenado para guardar un nuevo libro, en el formato de fecha debes de colocarlo como dia-mes-año
separado con guines medios, para ello vas a utilizar la siguiente función de Oracle
```sql
my_fecha:=to_date(''||dia||'-'||mes||'-'||anio);
```

Donde my_fecha es una fecha previamente declarada como de tipo Date.

4. Probar el procedimiento  ejecutando el siguiente bloque pl/sql verificar  que sea correcto con un select
```sql

DECLARE
  valor_id INTEGER;
BEGIN
  guardarlibros(valor_id, '1234','Abrupt climate change', 'Trata de que todos vamos a morir por contaminadores','John Wallace',27,'jan',2010,455);
END;
/


SELECT * FROM libros;
```
