- EJERCICIOS DE JOIN

- 1. LEFT JOIN - Todos los contribuyentes con sus declaraciones (si existen)
select * from contribuyentes join declaraciones on contribuyentes.id_contribuyente = declaraciones.id_contribuyente;

- 2. RIGHT JOIN - Todas las declaraciones con los datos del contribuyente
select * from declaraciones right join contribuyentes on contribuyentes.id_contribuyente = declaraciones.id_contribuyente;

- 4. Contar declaraciones por contribuyente
SELECT 
    contribuyentes.nombre, 
    COUNT(declaraciones.id_declaracion) AS numero_declaraciones
FROM contribuyentes
LEFT JOIN declaraciones ON contribuyentes.id_contribuyente = declaraciones.id_contribuyente
GROUP BY contribuyentes.id_contribuyente, contribuyentes.nombre;

- 5. Obtener contribuyentes sin declaraciones
select contribuyentes.nombre, contribuyentes.apellidos from contribuyentes left join declaraciones on contribuyentes.id_contribuyente = declaraciones.id_contribuyente where d
eclaraciones.id_declaracion is null;

- 6. Diferencias a pagar o devolver por contribuyente
SELECT 
    c.nombre, 
    c.apellidos, 
    SUM(d.impuesto_debido) AS total_deber,
    SUM(d.impuesto_pagado) AS total_pagado,
    SUM(d.impuesto_pagado - d.impuesto_debido) AS resultado_final
FROM contribuyentes c
JOIN declaraciones d ON c.id_contribuyente = d.id_contribuyente
GROUP BY c.id_contribuyente, c.nombre, c.apellidos;