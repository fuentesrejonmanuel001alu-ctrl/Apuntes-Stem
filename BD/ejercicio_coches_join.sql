1. Muéstrame las Personas y sus coches (solo los que tengan algun coche)
select personas.nombre, personas.apellido from personas join coches on personas.id = coches.id_dueño;
2. Coches con información de dueños como su nombre y su provincia
select personas.nombre, personas.apellido, personas.provincia, coches.marca, coches.modelo from personas join coches on personas.id = coches.id_dueño;
3. Personas que tienen coches y su estado civil
select personas.nombre, personas.apellido, personas.estado_civil  from personas join coches on personas.id = coches.id_dueño;
4. Coches de personas ricas (niv socioeconomico alto)
select personas.nombre, personas.apellido, personas.nivel_socioeconomico='alto' as ricos from personas join coches on personas.id = coches.id_dueño;
5. Ocupaciones de dueños de coches mayores de 30 años
select personas.ocupacion from personas join coches on personas.id = coches.id_dueño where extract(year from now()) - extract(year from fecha_nacimiento)>30;
6. Todas las personas y sus coches (incluyendo sin coches)
select personas.nombre, personas.apellido from personas join coches on personas.id = coches.id_dueño;
7. Personas sin coches registrados
select personas.nombre, personas.apellido from personas left join coches on personas.id = coches.id_dueño where coches.id_dueño is null;
8. Provincias con y sin representación de coches
select personas.provincia from personas join coches on personas.id = coches.id_dueño;
9. Nivel de estudios de las personas sin coche
select personas.nivel_estudios from personas left join coches on personas.id = coches.id_dueño where coches.id_dueño is null;
10. Personas jubiladas con sus vehículos
select personas.nombre, personas.apellido, coches.marca, coches.modelo from personas join coches on personas.id = coches.id_dueño where personas.ocupacion="jubilado";
11. Número de coches por persona
select count(*) as "nº coches", personas.nombre, personas.apellido 
from personas join coches on personas.id = coches.id_dueño group by personas.nombre, personas.apellido;
12. Marca más común entre personas de cada provincia
select coches.marca, personas.provincia from coches join personas on personas.id = coches.id_dueño;
13. Promedio de edad de dueños por marca de coche
select coches.marca, avg(extract(year from now()) - extract(year from fecha_nacimiento)) as "media de edad" from personas join coches on personas.id = coches.id_dueño group by coches.marca;
14. Total de ingresos de dueños por color de coche
select sum(ingresos_anuales) as total_dinero, coches.color from personas join coches on personas.id = coches.id_dueño group by coches.color order by total_dinero desc;
15. Municipios con más coches
select personas.municipio, count(*) as "coches por municipio" from personas join coches on personas.id=coches.id_dueño group by personas.municipio order by "coches por municipio" desc limit 1;
16. Padres e hijos y sus coches
select hijo.nombre as "Nombre del hijo", padre.nombre as "Nombre del padre", coches.marca, coches.modelo from personas as hijo join personas as padre on coches hijo.padre = padre.id join coches on hijo.id = coches.id_dueño;
17. Parejas con algún hijo y sus coches
SELECT padre.nombre AS Nombre_Padre, madre.nombre AS Nombre_Madre, hijo.nombre AS Nombre_Hijo, coches.marca, coches.modelo FROM personas AS hijo
JOIN personas AS padre ON hijo.padre = padre.id JOIN personas AS madre ON hijo.madre = madre.id JOIN coches ON hijo.id = coches.id_dueño;
18. Personas de la misma familia con más de dos coches
SELECT padre.apellido1 AS Familia, COUNT(coches.id) AS total_coches FROM personas AS hijo JOIN personas AS padre ON hijo.padre = padre.id
JOIN personas AS madre ON hijo.madre = madre.id JOIN coches ON (hijo.id = coches.id_dueño OR padre.id = coches.id_dueño OR madre.id = coches.id_dueño)
GROUP BY padre.id, madre.id HAVING total_coches > 2;