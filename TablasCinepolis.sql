
--tabla para la sala
CREATE TABLE SALA ( ID_SALA INTEGER,ID_PELICULA INTEGER, NUMERO_ASIENTO INTEGER, OCUPADO CHAR CHECK(OCUPADO IN(0,1)),
CONSTRAINT ID_SALA_PK PRIMARY KEY(ID_SALA),
CONSTRAINT ID_PELICULA_FK1 FOREIGN KEY(ID_PELICULA) REFERENCES PELICULA(ID_PELICULA));


