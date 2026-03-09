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

SELECT first_name, last_name
	FROM actor
	WHERE last_name LIKE "%Gibson%";
    
-- 7. Encuentra los nombres de los actores que tengan un actor_id entre 10 y 20.
	-- para las ids uso BETWEEN
    
SELECT first_name, last_name, actor_id
	FROM actor
    WHERE actor_id BETWEEN 10 AND 20;

--  8. Encuentra el título de las películas en la tabla film que no sean ni "R" ni "PG-13" en cuanto a su clasificación.
	-- uso un NOT IN para la condición.
    
SELECT title AS "Nombre película", rating
	FROM film
	WHERE rating NOT IN ("R","PG-13");
    
    
-- 9. Encuentra la cantidad total de películas en cada clasificación de la tabla film y muestra la clasificación junto con el recuento.
	-- Uso un count para la cantidad total, y un group by para que agrupe por clasificación.
    
SELECT  rating AS "Clasificación", COUNT(title) AS "Ctd Total"
	FROM film
	GROUP BY rating;
    
    
/* 10. Encuentra la cantidad total de películas alquiladas por cada cliente y muestra el ID del cliente, su
		nombre y apellido junto con la cantidad de películas alquiladas*/
    

    
    