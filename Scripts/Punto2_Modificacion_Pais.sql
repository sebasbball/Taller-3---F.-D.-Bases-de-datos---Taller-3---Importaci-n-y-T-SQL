USE DivisionPolitica
GO

/*
PUNTO 2: Modificación del modelo relacional de la tabla Pais

La idea es realizar los siguientes cambios en la tabla Pais sin la pérdida de la información:
- Desnormalización de la información de la Moneda
- Agregar campos para imágenes del Mapa y la Bandera del País

ANÁLISIS:
- Vemos que la tabla Pais ya tiene el campo Moneda (nvarchar(30) NULL) desnormalizado
  desde su creación inicial, por lo que no requiere de la modificación en éste aspecto.
- Debemos agregar dos nuevos campos para almacenar imágenes:
  * ImagenMapa: Para poder almacenar la imagen del mapa del país
  * ImagenBandera: Para poder almacenar la imagen de la bandera del país
- Le damos uso al tipo de dato VARBINARY(MAX) para almacenar las imágenes
  directamente en la BD.
*/

-- Agregamos campo para la imagen del Mapa del País
ALTER TABLE Pais
ADD ImagenMapa VARBINARY(MAX) NULL

-- Agregamos campo para la imagen de la Bandera del País
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
- Los campos de imágenes se definen como NULL para no afectar los registros existentes
- Lo que quiere decir que, VARBINARY(MAX) permite almacenar imágenes de hasta 2GB
- No hay pérdida de información ya que son campos nuevos opcionales.
*/