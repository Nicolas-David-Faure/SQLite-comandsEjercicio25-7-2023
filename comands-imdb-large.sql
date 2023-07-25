1- selecciona las peliculas en el año que nací
SELECT name , year
FROM movies
WHERE year = 1998;

2- Cuenta las peliculas del año 1982
SELECT COUNT(id)
FROM movies
WHERE year = 1982;

3- Identifica si el apellido del actor contiene la palabra "stack"
SELECT *
FROM actors
WHERE last_name 
LIKE '%stack%';

4- Ordena los nombres mas populares de manera descendente
SELECT first_name , COUNT(first_name) 
as cantidadNombres 
FROM actors
GROUP BY first_name
ORDER BY cantidadNombres DESC
LIMIT 10;

5-Ordena los apellidos mas populares de manera descendente
SELECT last_name , COUNT(first_name) 
as cantidadNombres 
FROM actors
GROUP BY last_name
ORDER BY cantidadNombres DESC
LIMIT 10;

6-Ordena por nombres completos mas populares
SELECT first_name || ' ' || last_name as fullName, 
COUNT(first_name || ' ' || last_name) as countFullName
FROM actors
GROUP BY fullName
ORDER BY countFullName DESC
LIMIT 10;

7-Listá el top 100 de actores más activos y el número de roles en los que participó.
SELECT first_name , last_name , COUNT(r.role) cantidadRoles
FROM actors 
JOIN roles as r ON r.actor_id = id
GROUP BY r.actor_id
ORDER BY cantidadRoles DESC
LIMIT 100;

8-Generos de peliculas ordenados por popularidad 
SELECT genre ,  COUNT(movie_id) as countMoviesGen
FROM movies_genres 
JOIN movies as m ON movie_id = m.id
GROUP BY genre
ORDER BY countMoviesGen ASC;

9-Lista el nombre y apellido de todos los actores que actuaron en la película 'Braveheart' de 1995, ordenados alfabéticamente por sus apellidos.
SELECT first_name , last_name 
FROM actors as a
JOIN roles as r ON a.id = r.actor_id
JOIN movies as m ON r.movie_id = m.id
WHERE m.name = 'Braveheart'
ORDER BY last_name ASC;



















































































