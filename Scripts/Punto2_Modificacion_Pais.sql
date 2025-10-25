USE DivisionPolitica
GO

/*
PUNTO 2: Modificaci�n del modelo relacional de la tabla Pais

La idea es realizar los siguientes cambios en la tabla Pais sin la p�rdida de la informaci�n:
- Desnormalizaci�n de la informaci�n de la Moneda
- Agregar campos para im�genes del Mapa y la Bandera del Pa�s

AN�LISIS:
- Vemos que la tabla Pais ya tiene el campo Moneda (nvarchar(30) NULL) desnormalizado
  desde su creaci�n inicial, por lo que no requiere de la modificaci�n en �ste aspecto.
- Debemos agregar dos nuevos campos para almacenar im�genes:
  * ImagenMapa: Para poder almacenar la imagen del mapa del pa�s
  * ImagenBandera: Para poder almacenar la imagen de la bandera del pa�s
- Le damos uso al tipo de dato VARBINARY(MAX) para almacenar las im�genes
  directamente en la BD.
*/

-- Agregamos campo para la imagen del Mapa del Pa�s
ALTER TABLE Pais
ADD ImagenMapa VARBINARY(MAX) NULL

-- Agregamos campo para la imagen de la Bandera del Pa�s
ALTER TABLE Pais
ADD ImagenBandera VARBINARY(MAX) NULL

-- Verificamos la estructura actualizada de la tabla Pais
SELECT * FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME='Pais'
ORDER BY ORDINAL_POSITION

/*
RESULTADO:
Podemos ver que laa tabla Pais ahora cuenta con los siguientes campos:
- Id (int, PK)
- Nombre (nvarchar(50))
- IdContinente (int, FK)
- IdTipoRegion (int, FK)
- Moneda (nvarchar(30)) - Campo desnormalizado existente
- ImagenMapa (varbinary(max)) - Campo nuevo para mapa
- ImagenBandera (varbinary(max)) - Campo nuevo para bandera

A TENER EN CUENTA:
- Los campos de im�genes se definen como NULL para no afectar los registros existentes
- Lo que quiere decir que, VARBINARY(MAX) permite almacenar im�genes de hasta 2GB
- No hay p�rdida de informaci�n ya que son campos nuevos opcionales.
*/