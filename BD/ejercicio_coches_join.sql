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
8. Provincias con y sin representación de coches
select personas.provincia from personas join coches on personas.id = coches.id_dueño;
9. Nivel de estudios de las personas sin coche
10. Personas jubiladas con sus vehículos
11. Número de coches por persona
select count(*) as "nº coches", personas.nombre, personas.apellido 
from personas join coches on personas.id = coches.id_dueño group by personas.nombre, personas.apellido;
12. Marca más común entre personas de cada provincia
select coches.marca, personas.provincia from coches join personas on personas.id = coches.id_dueño;
13. Promedio de edad de dueños por marca de coche
14. Total de ingresos de dueños por color de coche
15. Municipios con más coches