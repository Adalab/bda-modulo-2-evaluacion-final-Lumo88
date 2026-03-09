# Evaluación Final Módulo 2: SQL - Lourdes Moya
Contiene un fichero con extensión ".sql" relacionado con la evaluación final del módulo 2, que consta de una serie de preguntas que evalúan la comprensión y habilidades en relación con SQL.
Se han incluido comentarios breves en cuanto a la ejecución de los ejercicios.

# Ejemplo contenido
-- ------------------------------------------------
-- Evaluación Final Módulo 2: SQL _ Lourdes Moya --
-- ------------------------------------------------

USE sakila; -- nos posicionamos en la bbdd la cuál haremos la evaluación.

-- 1. Selecciona todos los nombres de las películas sin que aparezcan duplicados.
      -- Uso DISTINCT en el SELECT para recoger nombres únicos.

SELECT DISTINCT title AS "Nombre película"
  FROM film;

