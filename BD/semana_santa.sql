DROP DATABASE if exists semana_santa;
CREATE DATABASE if not exists semana_santa;
USE semana_santa;
CREATE TABLE procesion (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    dia_semana VARCHAR(20) NOT NULL,
    hora_inicio TIME NOT NULL,
    barrio VARCHAR(50) NOT NULL
);

-- Tabla hermandad
CREATE TABLE hermandad (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    antiguedad INT NOT NULL,
    numero_costaleros INT NOT NULL
);

-- Tabla paso
CREATE TABLE paso (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    estilo VARCHAR(50) NOT NULL,
    peso INT NOT NULL
);

-- Tabla itinerario
CREATE TABLE itinerario (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_procesion INT NOT NULL,
    punto VARCHAR(100) NOT NULL,
    hora_paso TIME NOT NULL,
    FOREIGN KEY (id_procesion) REFERENCES procesion(id)
);

-- Inserciones de Datos Iniciales

-- Inserciones en la tabla procesion
INSERT INTO procesion (nombre, dia_semana, hora_inicio, barrio) VALUES
('La Esperanza', 'Lunes Santo', '18:30:00', 'Realejo'),
('El Silencio', 'Miércoles Santo', '23:00:00', 'Centro'),
('La Aurora', 'Domingo de Ramos', '17:00:00', 'Albaicín'),
('La Soledad', 'Viernes Santo', '19:30:00', 'Sacromonte');

-- Inserciones en la tabla hermandad
INSERT INTO hermandad (nombre, antiguedad, numero_costaleros) VALUES
('Hermandad del Silencio', 1578, 90),
('Hermandad de la Aurora', 1635, 120),
('Hermandad de la Esperanza', 1945, 80),
('Hermandad de la Soledad', 1500, 100);

-- Inserciones en la tabla paso
INSERT INTO paso (nombre, estilo, peso) VALUES
('Paso del Cristo del Silencio', 'Barroco', 2000),
('Paso de la Virgen de la Aurora', 'Renacentista', 1800),
('Paso de Jesús de la Esperanza', 'Gótico', 2200),
('Paso de la Virgen de la Soledad', 'Neoclásico', 1900);

-- Inserciones en la tabla itinerario
INSERT INTO itinerario (id_procesion, punto, hora_paso) VALUES
(1, 'Plaza Nueva', '19:00:00'),
(1, 'Catedral', '20:30:00'),
(2, 'Puerta Real', '23:30:00'),
(2, 'Gran Vía', '00:15:00'),
(3, 'Carrera del Darro', '17:30:00'),
(3, 'Plaza de San Nicolás', '18:15:00'),
(4, 'Paseo de los Tristes', '20:00:00'),
(4, 'Abadía del Sacromonte', '21:30:00');

-- Soluciones a los ejercicios

-- 1. Listar todos los nombres de las procesiones.
    select nombre from procesion;
-- 2. Mostrar los barrios donde se realizan las procesiones, sin repetir.
    select barrio from procesion;
-- 3. Obtener el nombre y la hora de inicio de todas las procesiones que comienzan después de las 18:00.
    select nombre, hora_inicio from procesion where hora_inicio>'18:00';
-- 4. Seleccionar el nombre y estilo de todos los pasos.
    select nombre, estilo from paso;
-- 5. Mostrar el nombre de las hermandades que tienen más de 100 costaleros.
    select nombre from hermandad where numero_costaleros>100;
-- 6. Listar las procesiones que ocurren el Viernes Santo.
    select nombre from procesion where dia_semana = 'Viernes Santo';
-- 7. Mostrar los puntos de paso de las procesiones que pasan por 'Catedral'.
    select id_procesion from itinerario where punto='Catedral';
-- 8. Obtener las procesiones que tienen lugar en el barrio 'Centro'.
    select nombre from procesion where barrio='Centro';
-- 9. Listar los estilos de pasos únicos.
    select distint estilo from paso;
-- 10. Mostrar los nombres de los pasos que pesan más de 1900 kg.
    select nombre from paso where peso>1900;
-- 11. Listar los pasos cuyo peso esté entre 1800 y 2200 kg.
    select nombre from paso where peso between 1800 and 2200;
-- 12. Mostrar las hermandades fundadas antes del año 1600.
    select nombre from hermandad where antiguedad < 1600;
-- 13. Seleccionar las procesiones que comienzan después de las 19:00 y están en el barrio 'Realejo'.
    select nombre from procesion where hora_inicio>'19:00' and barrio='Realejo';
-- 14. Listar las hermandades que tienen más de 80 costaleros o fueron fundadas después de 1900.
    select nombre from hermandad where numero_costaleros>80 or antiguedad>1900;
-- 15. Mostrar las procesiones que no se realizan el Domingo de Ramos.
    select nombre from procesion where dia_semana != 'Domingo de Ramos';
-- 16. Mostrar todas las procesiones ordenadas por la hora de inicio en orden ascendente.
    select * from procesion order by hora_inicio asc;
-- 17. Listar las hermandades ordenadas por antigüedad de forma descendente.
    select nombre from hermandad order by antiguedad desc;
-- 18. Seleccionar los pasos ordenados por peso y, en caso de empate, por estilo alfabético.
    select nombre from paso order by peso, estilo asc;
-- 20. Mostrar los puntos de paso de las procesiones ordenados por hora de paso en orden descendente.
    select punto, hora_paso from itinerario order by hora_paso desc;
-- 21. Contar cuántas procesiones hay en total.
    select count(*) from procesion;
-- 22. Obtener el peso promedio de todos los pasos.
    select avg(peso) as peso_promedio from paso;
-- 23. Calcular el número máximo de costaleros en una hermandad.
    select max(numero_costaleros) from hermandad;
-- 24. Obtener el número de procesiones que se realizan en el barrio 'Albaicín'.
    select count(*) from procesion where barrio='Albaicín';
-- 25. Sumar el peso de todos los pasos.
    select sum(peso) from paso;
-- 26. Agrupar las procesiones por barrio y contar cuántas procesiones hay en cada uno.
    select barrio, count(*) from procesion group by barrio;
-- 27. Calcular el peso total de los pasos agrupados por estilo.
    select estilo, sum(peso) from paso group by estilo;
-- 28. Mostrar las hermandades agrupadas por número de costaleros, filtrando aquellas con más de 100 costaleros.
    select numero_costaleros, count(*) fom hermandad group by numero_costaleros having numero_costaleros>100;
-- 29. Obtener el número de procesiones que tienen puntos de paso después de las 20:00.
    select count(id_procesion)from itinerario where hora_paso >'20:00'

    select count(*) from (select distinct id_procesion from itinerario where hora_paso >'20:00') p;
-- 30. Agrupar las hermandades por antigüedad y contar cuántas hay en cada antiguedad.
    select antiguedad, count(nombre) as "Número de hermandades por año" from hermandad group by antiguedad;
-- 31. Concatenar el nombre y barrio de cada procesión en un único campo, separados por un guion.
    select concat(nombre, '-', barrio) as "Nombre y barrio" from procesion;
-- 32. Mostrar las procesiones cuyos nombres contienen más de 10 caracteres.    
    select nombre from procesion where char_length(nombre)>10;
-- 33. Seleccionar los nombres de las procesiones que contienen la palabra 'Soledad'.
    select nombre from procesion where nombre like '%Soledad%';
-- 34. Mostrar las hermandades ordenadas por el número de costaleros en orden ascendente.
    select nombre from hermandad order by numero_costaleros asc;
-- 35. Listar los nombres de los pasos en los que la palabra 'Virgen' no aparece.
    select nombre from paso where nombre not like '%Virgen%';
-- 36. Calcular la diferencia entre el peso máximo y mínimo de los pasos.
    select max(peso)-min(peso) as "Diferencia de peso" from paso;
-- 37. Mostrar solo las procesiones cuyo nombre no empieza con 'La'.
    select nombre from procesion where nombre not like 'La%';
-- 38. Formatear la hora de inicio de las procesiones en formato de 12 horas con AM/PM.
    select date_format(hora_inicio, '%h:%i %p') from procesion;
-- 39. Mostrar solo la hora (sin minutos ni segundos) del paso por cada punto del itinerario.
    select hour(hora_paso) from itinerario;
-- 40. Seleccionar las procesiones que tienen su inicio en las próximas 6 horas a partir de la fecha y hora actual.
    select nombre from procesion where hora_inicio between now() and date_add(now(), interval 6 hour);
    SELECT nombre FROM procesion WHERE TIMESTAMPDIFF(HOUR, NOW(), hora_inicio) BETWEEN 0 AND 6;
-- EXTRAS
-- 41. Redondear el peso de los pasos a la centena más cercana.
    select round(peso,-2) from paso; //-1: Redondea a la decena más cercana (10).-2: Redondea a la centena más cercana (100). -3: Redondea al millar más cercano (1000).
-- 42. Mostrar el peso de los pasos dividido entre 1000, con dos decimales.
    select round (peso/1000,2) from paso;
-- 43. Generar un número aleatorio entre 1 y 100.
    select floor(1+rand()*100);