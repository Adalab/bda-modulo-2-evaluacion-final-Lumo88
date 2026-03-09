-- ------------------------------------------------
-- Evaluación Final Módulo 2: SQL _ Lourdes Moya --
-- ------------------------------------------------

USE sakila; -- nos posicionamos en la bbdd la cuál haremos la evaluación.

-- 1. Selecciona todos los nombres de las películas sin que aparezcan duplicados.
	-- Uso DISTINCT en el SELECT para recoger nombres únicos.

SELECT DISTINCT title AS "Nombre película"
	FROM film;

-- 2. Muestra los nombres de todas las películas que tengan una clasificación de "PG-13".

SELECT title AS "Nombre película"
	FROM film
	WHERE rating = "PG-13"; -- usamos condición.

-- 3. Encuentra el título y la descripción de todas las películas que contengan la palabra "amazing" en su descripción.
	-- usamos LIKE para la búsqueda de la condición, % a cada lado de la palabra para que incluya todas las opciones
    
SELECT title AS "Nombre película", description AS "Descripción"
	FROM film
	WHERE description LIKE "%amazing%"; 
    
-- 4. Encuentra el título de todas las películas que tengan una duración mayor a 120 minutos.

SELECT title AS "Nombre película", length AS "Duración"
	FROM film
	WHERE length > 120; 
    
-- 5. Recupera los nombres de todos los actores.
	-- uso un CONCAT  en el SELECT para mostrar el nombre junto con el apellido en la misma colum.

SELECT CONCAT(first_name, " ", last_name) AS nombre
	FROM actor;
    
-- 6.Encuentra el nombre y apellido de los actores que tengan "Gibson" en su apellido.

    
