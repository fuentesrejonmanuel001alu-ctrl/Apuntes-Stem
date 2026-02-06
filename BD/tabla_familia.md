1. Los 5 malagueños más veteranos: SELECT nombre, apellido FROM personas WHERE provincia = 'Málaga' ORDER BY edad DESC LIMIT 5;

2. Techo salarial con estudios primarios: SELECT MAX(ingresos_anuales) FROM personas WHERE estudios = 'primarios';

3. Edad media de ocupaciones que empiezan por 'A': SELECT AVG(floor(datediff(now(),fecha_nacimiento)/365.25)) FROM personas WHERE ocupacion LIKE 'A%';

4. Estado civil (3 letras) en Dos Hermanas: SELECT substring(estado_civil, 1, 3) FROM personas WHERE municipio = 'Dos Hermanas';

5. Padre siendo madre y viceversa SELECT COUNT(*) FROM personas 
WHERE id_padre IN (SELECT id FROM personas WHERE sexo = 'M') 
   OR id_madre IN (SELECT id FROM personas WHERE sexo = 'H');

6. Moda del estado civil SELECT estado_civil, COUNT(*) AS frecuencia FROM personas
GROUP BY estado_civil
ORDER BY frecuencia DESC
LIMIT 1;

7. Diversidad de municipios en Cádiz: SELECT COUNT(DISTINCT municipio) FROM personas WHERE provincia = 'Cádiz';

8. Media de ingresos SELECT estado_civil, AVG(ingresos_anuales) FROM personas GROUP BY estado_civil;

9. Abuelos con id 1142 SELECT * FROM personas 
WHERE id IN (
    -- Abuelos paternos y maternos (padres de los padres)
    SELECT id_padre FROM personas WHERE id IN (SELECT id_padre FROM personas WHERE id = 1142 UNION SELECT id_madre FROM personas WHERE id = 1142)
    UNION
    SELECT id_madre FROM personas WHERE id IN (SELECT id_padre FROM personas WHERE id = 1142 UNION SELECT id_madre FROM personas WHERE id = 1142)
);

10. Nietos con id 1093 SELECT * FROM personas 
WHERE id_padre IN (SELECT id FROM personas WHERE id_padre = 1093 OR id_madre = 1093) 
   OR id_madre IN (SELECT id FROM personas WHERE id_padre = 1093 OR id_madre = 1093);

11. Dime la media de número de hijos por mujer SELECT 
    (SELECT COUNT(*) FROM personas WHERE id_madre IS NOT NULL) / 
    (SELECT COUNT(*) FROM personas WHERE sexo = 'M') 
AS media_hijos_por_mujer;

12. 5 granadinos que más cobran SELECT nombre, apellido, ocupacion, ingresos_anuales
FROM (
    SELECT * FROM personas 
    WHERE provincia = 'Granada' 
    ORDER BY ingresos_anuales DESC 
    LIMIT 5
) AS top_ganadores
ORDER BY LENGTH(ocupacion) DESC;

13. provincia con menos ingresos anuales de media SELECT provincia, AVG(ingresos_anuales) AS renta_media
FROM personas GROUP BY provincia ORDER BY renta_media ASC LIMIT 1;

14. Provincia de jubilados con menos ingresos de media SELECT provincia, AVG(ingresos_anuales) 
FROM personas WHERE ocupacion = 'jubilado' GROUP BY provincia ORDER BY AVG(ingresos_anuales) ASC LIMIT 1;

15. Dime el municipio con más ingresos anuales sin contar a las personas que no cobran nada
SELECT municipio, SUM(ingresos_anuales) FROM personas WHERE ingresos_anuales > 0 GROUP BY municipio 
ORDER BY SUM(ingresos_anuales) DESC LIMIT 1;

16. Media de edad de personas con hijos que empiezan por L SELECT AVG(edad) FROM personas 
WHERE id IN (SELECT id_padre FROM personas WHERE nombre LIKE 'L%') 
OR id IN (SELECT id_madre FROM personas WHERE nombre LIKE 'L%');

17. Dime la edad media de las personas que sean hermanas (de padre o madre) de las personas de Málaga municipio SELECT AVG(edad) FROM personas WHERE sexo = 'M' 
  AND (
    id_padre IN (SELECT id_padre FROM personas WHERE municipio = 'Málaga' AND id_padre IS NOT NULL) 
    OR 
    id_madre IN (SELECT id_madre FROM personas WHERE municipio = 'Málaga' AND id_madre IS NOT NULL)
  );

18. media de salarios anuales agrupados por día del mes SELECT DAY(fecha_nacimiento) AS dia_nacimiento, AVG(ingresos_anuales) FROM personas GROUP BY DAY(fecha_nacimiento) ORDER BY dia_nacimiento ASC;

19. Fecha de nacimeinto en día, mes, año de córdoba SELECT DAY(fecha_nacimiento), MONTH(fecha_nacimiento), YEAR(fecha_nacimiento) FROM personas WHERE ocupacion = 'jubilado' AND municipio = 'Córdoba';

20. Personas nacidas en cada década siglo XX SELECT FLOOR(YEAR(fecha_nacimiento) / 10) * 10 AS decada, COUNT(*) AS total_nacimientos FROM personas WHERE YEAR(fecha_nacimiento) BETWEEN 1900 AND 1999
GROUP BY decada ORDER BY decada ASC;

21. 3 provincias con más edad media entre personas casadas SELECT provincia, AVG(edad) AS edad_media
FROM personas WHERE estado_civil = 'casado' GROUP BY provincia ORDER BY edad_media DESC LIMIT 3;

22. Municipios con más personas paradas SELECT municipio, COUNT(*) AS total_parados
FROM personas WHERE ocupacion = 'parado' GROUP BY municipio HAVING COUNT(*) = (
    SELECT MAX(conteo)
    FROM (
        SELECT COUNT(*) AS conteo
        FROM personas
        WHERE ocupacion = 'parado'
        GROUP BY municipio
    ) AS subconsulta
);

23. Muestra cada municipio con el valor máximo de ingreos anuales entre personas que son padres
SELECT municipio, MAX(ingresos_anuales) AS max_ingreso_progenitores FROM personas 
WHERE id IN (SELECT id_padre FROM personas UNION SELECT id_madre FROM personas) GROUP BY municipio;