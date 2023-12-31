use BdiExamen;

CREATE TABLE TODOLIST_AGA(
ID INT IDENTITY PRIMARY KEY,
Nombre varchar(250),
Actividad varchar(250),
Estatus varchar (250),
)

CREATE PROCEDURE CONSULTATOTAL
AS
BEGIN
	SELECT * FROM TODOLIST_AGA
END

CREATE PROCEDURE GUARDARUSUARIO(
@Nombre varchar(250),
@Actividad varchar(250),
@Estatus varchar(250)
)
AS
BEGIN
	INSERT INTO TODOLIST_AGA(Nombre, Actividad, Estatus) VALUES(@Nombre, @Actividad, @Estatus)
END

CREATE PROCEDURE GUARDARACTIVIDAD(
@Actividad varchar(250)
)
AS
BEGIN
	INSERT INTO TODOLIST_AGA(Actividad) VALUES(@Actividad)
END

CREATE PROCEDURE GUARDARESTATUS(
@Estatus varchar(250)
)
AS
BEGIN
	INSERT INTO TODOLIST_AGA(Estatus) VALUES(@Estatus)
END

CREATE PROCEDURE ACTUALIZAR(
@ID INT,
@Nombre VARCHAR(250),
@Actividad VARCHAR(250),
@Estatus VARCHAR (250)
)
AS
BEGIN
UPDATE TODOLIST_AGA SET   Nombre = @Nombre, Actividad = @Actividad, Estatus=@Estatus WHERE ID = @ID
END

CREATE PROCEDURE ELIMINAR(
@ID INT
)
AS 
BEGIN
DELETE FROM  TODOLIST_AGA WHERE ID = @ID
END





CREATE PROCEDURE OBTENERUSUARIO(
@ID INT
)
AS
BEGIN
	SELECT * FROM TODOLIST_AGA WHERE ID=@ID
END

SELECT * FROM  TODOLIST_AGA


CREATE PROCEDURE CANTIDADTAREAS
AS
BEGIN
	SELECT COUNT(Estatus) AS 'CANTIDAD DE TAREAS',Estatus FROM TODOLIST_AGA GROUP BY ESTATUS
END


SELECT COUNT(Estatus), Estatus FROM TODOLIST_AGA GROUP BY ESTATUS