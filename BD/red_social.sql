-- EJERCICIOS DE JOIN

-- 1. LEFT JOIN - Todos los usuarios con sus publicaciones (si existen)
SELECT 
    u.nombre_usuario AS 'Usuario', 
    u.estado AS 'Estado_User', 
    IFNULL(p.descripcion, '--- SIN PUBLICACIONES ---') AS 'Contenido_Post'
FROM usuarios u 
LEFT JOIN publicaciones p ON u.id_usuario = p.id_usuario;

-- 2. RIGHT JOIN - Todas las publicaciones con datos del usuario
SELECT 
    p.id_publicacion, 
    p.descripcion AS 'Post', 
    u.nombre_usuario AS 'Autor'
FROM usuarios u 
RIGHT JOIN publicaciones p ON u.id_usuario = p.id_usuario;


-- 3. Todos los registros de ambas tablas
(SELECT u.nombre_usuario, p.descripcion 
 FROM usuarios u 
 LEFT JOIN publicaciones p ON u.id_usuario = p.id_usuario)
UNION
(SELECT u.nombre_usuario, p.descripcion 
 FROM usuarios u 
 RIGHT JOIN publicaciones p ON u.id_usuario = p.id_usuario);

-- 4. Usuarios sin publicaciones
SELECT 
    u.nombre_usuario AS 'Usuario Silencioso', 
    u.estado AS 'Estado_Cuenta',
    u.email
FROM usuarios u 
LEFT JOIN publicaciones p ON u.id_usuario = p.id_usuario 
WHERE p.id_publicacion IS NULL;


-- 5. Publicaciones sin usuario asociado (datos orfanos)
SELECT 
    p.id_publicacion, 
    p.descripcion AS 'Contenido_Huerfano', 
    p.id_usuario AS 'ID_Usuario_Inexistente'
FROM usuarios u 
RIGHT JOIN publicaciones p ON u.id_usuario = p.id_usuario 
WHERE u.id_usuario IS NULL;

SET FOREIGN_KEY_CHECKS = 0; // desactivamos las llaves foráneas

INSERT INTO publicaciones (id_usuario, descripcion) 
VALUES (99, 'Este post no tiene dueño real'); // insertamos el post huérfano

SET FOREIGN_KEY_CHECKS = 1; // limpieza

//ahora lo ejecutamos de verdad

SELECT 
    p.id_publicacion, 
    p.descripcion AS 'Contenido_Huerfano', 
    p.id_usuario AS 'ID_Usuario_Inexistente'
FROM usuarios u 
RIGHT JOIN publicaciones p ON u.id_usuario = p.id_usuario 
WHERE u.id_usuario IS NULL;

-- 6. Publicaciones más populares con datos del creador

SELECT 
    u.nombre_usuario AS 'Autor', 
    p.descripcion AS 'Post', 
    p.numero_likes AS 'Likes',
    u.cuenta_verificada AS 'Verificado'
FROM usuarios u 
JOIN publicaciones p ON u.id_usuario = p.id_usuario 
ORDER BY p.numero_likes DESC 
LIMIT 5;


-- 7. Usuarios activos y su actividad en publicaciones

SELECT 
    u.nombre_usuario AS 'Usuario_Activo', 
    u.estado AS 'Estado_User', 
    COUNT(p.id_publicacion) AS 'Total_Posts',
    SUM(p.numero_likes) AS 'Total_Likes'
FROM usuarios u 
INNER JOIN publicaciones p ON u.id_usuario = p.id_usuario 
GROUP BY u.id_usuario, u.nombre_usuario
ORDER BY Total_Posts DESC;
-- EJERCICIOS CON TABLA DE SEGUIDORES

-- 9. LEFT JOIN - Usuarios y sus seguidores

SELECT 
    u.nombre_usuario AS 'Usuario', 
    u.email, 
    s.id_seguidor AS 'ID_del_que_le_sigue'
FROM usuarios u 
LEFT JOIN seguidores s ON u.id_usuario = s.id_seguido;

-- 10. RIGHT JOIN - Quién sigue a cada usuario (todos los seguimientos activos)
SELECT 
    s.id_seguidor AS 'ID_Seguidor', 
    u.nombre_usuario AS 'Usuario_Seguido', 
    u.cuenta_verificada AS 'Es_VIP'
FROM usuarios u 
RIGHT JOIN seguidores s ON u.id_usuario = s.id_seguido;

-- 12. Usuarios sin seguidores (LEFT JOIN)

SELECT 
    u.nombre_usuario AS 'Usuario_Sin_Fans', 
    u.nombre_completo,
    u.estado
FROM usuarios u 
LEFT JOIN seguidores s ON u.id_usuario = s.id_seguido 
WHERE s.id_seguido IS NULL;

-- 13. Top influencers (usuarios más seguidos)
SELECT 
    u.nombre_usuario AS 'Influencer', 
    u.cuenta_verificada AS 'Verificado',
    COUNT(s.id_seguidor) AS 'Numero_Seguidores'
FROM usuarios u 
LEFT JOIN seguidores s ON u.id_usuario = s.id_seguido 
GROUP BY u.id_usuario, u.nombre_usuario 
ORDER BY Numero_Seguidores DESC;

-- 14. Matriz de seguimientos bidireccionales (mutua)
SELECT 
    u1.nombre_usuario AS 'Usuario_A', 
    ' <---> ' AS 'Relacion',
    u2.nombre_usuario AS 'Usuario_B'
FROM seguidores s1
JOIN seguidores s2 ON s1.id_seguidor = s2.id_seguido 
                  AND s1.id_seguido = s2.id_seguidor
JOIN usuarios u1 ON s1.id_seguidor = u1.id_usuario
JOIN usuarios u2 ON s1.id_seguido = u2.id_usuario
WHERE s1.id_seguidor < s1.id_seguido;

-- 15. Estadísticas completas de usuario (publicaciones + seguidores + seguidos)
SELECT 
    u.nombre_usuario AS 'Perfil',
    (SELECT COUNT(*) FROM publicaciones p WHERE p.id_usuario = u.id_usuario) AS 'Posts',
    (SELECT COUNT(*) FROM seguidores s WHERE s.id_seguido = u.id_usuario) AS 'Seguidores',
    (SELECT COUNT(*) FROM seguidores s WHERE s.id_seguidor = u.id_usuario) AS 'Siguiendo',
    u.estado AS 'Estado'
FROM usuarios u
ORDER BY Seguidores DESC;