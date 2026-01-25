-- Ejercicios de MySQL - Base de Datos de Películas (Extendida)
drop database cine_db;
CREATE DATABASE if not exists cine_db;
USE cine_db;

-- Tabla pelicula
CREATE TABLE pelicula (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    anio INT NOT NULL,
    genero VARCHAR(50) NOT NULL,
    duracion INT NOT NULL
);

-- Tabla director
CREATE TABLE director (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    pais_origen VARCHAR(50) NOT NULL,
    anio_nacimiento INT NOT NULL
);

-- Tabla actor
CREATE TABLE actor (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    pais_origen VARCHAR(50) NOT NULL,
    anio_nacimiento INT NOT NULL
);

-- Tabla reparto
CREATE TABLE reparto (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_pelicula INT NOT NULL,
    id_actor INT NOT NULL,
    FOREIGN KEY (id_pelicula) REFERENCES pelicula(id),
    FOREIGN KEY (id_actor) REFERENCES actor(id)
);

-- Inserciones en la tabla pelicula
INSERT INTO pelicula (titulo, anio, genero, duracion) VALUES
('Inception', 2010, 'Ciencia Ficción', 148),
('Titanic', 1997, 'Drama', 195),
('El Padrino', 1972, 'Crimen', 175),
('Interestelar', 2014, 'Ciencia Ficción', 169),
('Parasite', 2019, 'Drama', 132),
('The Dark Knight', 2008, 'Acción', 152),
('Forrest Gump', 1994, 'Drama', 142),
('Avengers: Endgame', 2019, 'Acción', 181),
('The Matrix', 1999, 'Ciencia Ficción', 136),
('Gladiator', 2000, 'Acción', 155);

-- Inserciones en la tabla director
INSERT INTO director (nombre, pais_origen, anio_nacimiento) VALUES
('Christopher Nolan', 'Reino Unido', 1970),
('James Cameron', 'Canadá', 1954),
('Francis Ford Coppola', 'EE.UU.', 1939),
('Bong Joon-ho', 'Corea del Sur', 1969),
('Ridley Scott', 'Reino Unido', 1937),
('The Wachowskis', 'EE.UU.', 1965),
('Robert Zemeckis', 'EE.UU.', 1952),
('Anthony Russo', 'EE.UU.', 1970),
('Joe Russo', 'EE.UU.', 1971),
('Steven Spielberg', 'EE.UU.', 1946);

-- Inserciones en la tabla actor
INSERT INTO actor (nombre, pais_origen, anio_nacimiento) VALUES
('Leonardo DiCaprio', 'EE.UU.', 1974),
('Kate Winslet', 'Reino Unido', 1975),
('Al Pacino', 'EE.UU.', 1940),
('Matthew McConaughey', 'EE.UU.', 1969),
('Song Kang-ho', 'Corea del Sur', 1967),
('Christian Bale', 'Reino Unido', 1974),
('Tom Hanks', 'EE.UU.', 1956),
('Keanu Reeves', 'Canadá', 1964),
('Russell Crowe', 'Nueva Zelanda', 1964),
('Scarlett Johansson', 'EE.UU.', 1984);

-- Inserciones en la tabla reparto
INSERT INTO reparto (id_pelicula, id_actor) VALUES
(1, 1), -- Inception - Leonardo DiCaprio
(2, 1), -- Titanic - Leonardo DiCaprio
(2, 2), -- Titanic - Kate Winslet
(3, 3), -- El Padrino - Al Pacino
(4, 4), -- Interestelar - Matthew McConaughey
(5, 5), -- Parasite - Song Kang-ho
(6, 6), -- The Dark Knight - Christian Bale
(7, 7), -- Forrest Gump - Tom Hanks
(8, 10), -- Avengers: Endgame - Scarlett Johansson
(9, 8), -- The Matrix - Keanu Reeves
(10, 9); -- Gladiator - Russell Crowe

-- Ejercicios (Ampliados)
-- 1. Listar todos los títulos de las películas.
    select  titulo from pelicula;
-- 2. Mostrar los géneros de las películas sin repetir.
    select distinct genero from pelicula;
-- 3. Seleccionar el título y año de todas las películas estrenadas después del año 2000.
    select titulo,anio from pelicula where anio >2000;
-- 4. Listar los nombres de todos los directores y sus países de origen.
    select nombre, pais_origen from director;
-- 5. Mostrar los títulos de las películas con duración mayor a 150 minutos.
    select titulo from pelicula where duracion > 150;
-- 6. Seleccionar el título de las películas del género 'Drama'. 
    select titulo from pelicula where genero="drama";
-- 7. Mostrar los id de los actores que participan en la película 'Titanic'.
    select id_actor from reparto where id_pelicula in (select id from pelicula where titulo ="Titanic");
-- Otro: Mostrar el nombre de los actores asociados con el id de 'Titanic'.
    SELECT nombre FROM actor WHERE id IN (SELECT id_actor FROM reparto 
    WHERE id_pelicula = (SELECT id FROM pelicula WHERE titulo = 'Titanic'));
-- 8. Contar cuántas películas hay en cada género.
    select genero, count(*) as "número total" from pelicula group by genero;
-- 9. Mostrar los directores nacidos después de 1950.
    select nombre from director where anio_nacimiento>1950;
-- 10. Listar los títulos de las películas y su duración ordenados de mayor a menor.
    select titulo,duracion from pelicula order by duracion desc;
-- 12. Seleccionar las películas cuya duración está entre 120 y 180 minutos.
    select * from pelicula where duracion between 120 and 180;
-- 13. Mostrar los títulos de las películas ordenados por año de estreno.
    select titulo from pelicula order by anio;
-- 14. Calcular el promedio de duración de las películas.
    select avg(duracion) from pelicula;
-- 15. Mostrar los actores que no nacieron en EE.UU.
    select nombre from actor where pais_origen!="EE.UU.";
-- 17. Mostrar el id de las películas que tienen más de un actor en su reparto.
    select id_pelicula from reparto group by id_pelicula having count(id_actor)>1;
-- 18. Calcular el número total de actores en la base de datos.
    select count(*) as 'Número total de actores' from actor;
-- 19. Mostrar las películas que no tienen actores en el reparto.
    SELECT titulo  FROM pelicula  WHERE id NOT IN (SELECT id_pelicula FROM reparto);
-- 20. Seleccionar las películas estrenadas en los últimos 10 años.
    select titulo from pelicula where anio>=10;
-- 22 dime la moda del año de nacimiento de los actores.
    select count(*),anio_nacimiento from actor group by anio_nacimiento order by count(*) desc limit 1;
-- 23 dime la media de edad de los actores agrupados por pais de nacimiento.
    select pais_origen, avg(2026-anio_nacimiento) from actor group by pais_origen;



