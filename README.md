# Taller 3 - Importación y T-SQL
**Fundamentos y Diseño de Bases de Datos**  

---

## 🗂️ Estructura del Repositorio
```
├── 📁 Scripts/
│   ├── DDL_Division_Politica.sql          -> Creación de la estructura (Proporcionado)
│   ├── DML_Division_Politica.sql          -> Datos iniciales (Proporcionado)
│   ├── Punto1_Importacion_Japon.sql       -> Ejemplo resuelto por el profesor Fray Osorio
│   └── Punto2_Modificacion_Pais.sql       ->  MI SOLUCIÓN
├── 📁 Data/
   └── Japon.csv                          # Archivo CSV con prefecturas de Japón

```

---

## Objetivo del Taller:

### Punto 2️⃣: Modificación del modelo relacional

Realizar modificaciones en la tabla `Pais` sin pérdida de información:
- ✅ Desnormalización de la información de `Moneda` (ya existente)
- ✅ Agregar campo `ImagenMapa` (VARBINARY(MAX))
- ✅ Agregar campo `ImagenBandera` (VARBINARY(MAX))

---
