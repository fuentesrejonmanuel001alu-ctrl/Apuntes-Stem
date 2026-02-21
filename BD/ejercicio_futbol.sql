 1. LEFT JOIN - Todos los equipos con sus jugadores (si existen)
select * from equipos left join jugadores on equipos.id_equipo = jugadores.id_equipo;

- 2. RIGHT JOIN - Todos los jugadores con datos de su equipo
select * from equipos right join jugadores on equipos.id_equipo = jugadores.id_equipo;

- 4. Salario promedio por equipo
select equipos.nombre, avg(salario_anual) as "Salario promedio" from jugadores join equipos on equipos.id_equipo = jugadores.id_equipo group by equipos.nombre;

- 5. Equipos sin jugadores registrados
select equipos.nombre from equipos left join jugadores on equipos.id_equipo = jugadores.id_equipo where jugadores.id_jugador is null;

- 6. Jugadores por posición en cada equipo
select jugadores.nombre, jugadores.apellidos, jugadores.posicion from jugadores join equipos on equipos.id_equipo = jugadores.id_equipo;
select count(*) posicion from jugadores join equipos on equipos.id_equipo = jugadores.id_equipo;
select count(*), jugadores.posicion from jugadores join equipos on equipos.id_equipo = jugadores.id_equipo group by jugadores.posicion;

- 7. Comparativa de presupuestos vs gasto en jugadores
SELECT 
    equipos.nombre, 
    equipos.presupuesto_anual, 
    SUM(jugadores.salario_anual) AS gasto_total_plantilla,
    (equipos.presupuesto_anual - SUM(jugadores.salario_anual)) AS saldo_restante
FROM equipos 
JOIN jugadores ON equipos.id_equipo = jugadores.id_equipo 
GROUP BY equipos.id_equipo;