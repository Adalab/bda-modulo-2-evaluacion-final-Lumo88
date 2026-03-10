# 📊 Evaluación Final: Dominio de SQL con Sakila DB
### Módulo 2 - Análisis de Datos | Por: Lourdes Moya

## 📝 Descripción
Este repositorio contiene la resolución de una evaluación técnica de 24 ejercicios prácticos sobre la base de datos **Sakila**. El objetivo principal es demostrar habilidades avanzadas en la manipulación y extracción de datos mediante SQL.

## 🚀 Tecnologías y Herramientas
* **Motor:** MySQL
* **Base de Datos:** Sakila 
* **Conceptos Aplicados:** * Consultas Multitabla (INNER, LEFT JOINS).
    * Agrupación y Filtrado avanzado (`GROUP BY` & `HAVING`).
    * Lógica Condicional y Expresiones Regulares (`REGEXP`).
    * Cálculos Temporales (`DATEDIFF`).

## 📂 Estructura del Proyecto
* `evaluacion_final.sql`: Script completo con los 24 ejercicios resueltos y comentados.
* `README.md`: Documentación del proyecto.

## 💡 Ejemplos Destacados
A continuación, se muestra una muestra de la lógica aplicada en retos de mayor complejidad:

<pre>
      
SELECT DISTINCT a.first_name AS "Nombre", a.last_name AS "Apellido" --  ,fa.actor_id comprobación
	FROM actor AS a
    INNER JOIN film_actor AS fa
		ON a.actor_id = fa.actor_id
	WHERE fa.actor_id NOT IN (SELECT DISTINCT fa.actor_id
									FROM film_actor AS fa
									WHERE fa.film_id IN (SELECT fc.film_id
															FROM film_category AS fc
															INNER JOIN category AS c
															WHERE fc.category_id = (SELECT category_id
																						FROM category
																						WHERE name = "Horror"))); 

</pre>
                                                                                                                                    
### Búsqueda con Patrones (REGEXP)
Se optimizó el filtrado de descripciones evitando múltiples `LIKE` anidados:
```sql
SELECT title FROM film WHERE description REGEXP 'dog|cat';
