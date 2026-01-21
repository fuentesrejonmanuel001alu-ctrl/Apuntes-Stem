DROP DATABASE IF EXISTS EJERCICIO42;
CREATE DATABASE EJERCICIO42;
USE EJERCICIO42;


-- Creación de la tabla equipos
CREATE TABLE equipos (
    id_equipo INT AUTO_INCREMENT PRIMARY KEY,
    nombre_equipo VARCHAR(50) NOT NULL,
    estadio VARCHAR(50),
    ciudad VARCHAR(50),
    fundado INT,
    entrenador VARCHAR(50)
);

-- Insertar 20 registros en equipos
INSERT INTO equipos (nombre_equipo, estadio, ciudad, fundado, entrenador)
VALUES
('Real Madrid', 'Santiago Bernabéu', 'Madrid', 1902, 'Carlo Ancelotti'),
('Barcelona', 'Camp Nou', 'Barcelona', 1899, 'Xavi Hernández'),
('Atlético Madrid', 'Wanda Metropolitano', 'Madrid', 1903, 'Diego Simeone'),
('Sevilla', 'Ramón Sánchez-Pizjuán', 'Sevilla', 1890, 'José Luis Mendilibar'),
('Valencia', 'Mestalla', 'Valencia', 1919, 'Rubén Baraja'),
('Villarreal', 'La Cerámica', 'Villarreal', 1923, 'Quique Setién'),
('Real Sociedad', 'Reale Arena', 'San Sebastián', 1909, 'Imanol Alguacil'),
('Athletic Club', 'San Mamés', 'Bilbao', 1898, 'Ernesto Valverde'),
('Betis', 'Benito Villamarín', 'Sevilla', 1907, 'Manuel Pellegrini'),
('Celta de Vigo', 'Abanca-Balaídos', 'Vigo', 1923, 'Rafa Benítez'),
('Granada', 'Nuevo Los Cármenes', 'Granada', 1931, 'Paco López'),
('Mallorca', 'Visit Mallorca Estadi', 'Palma', 1916, 'Javier Aguirre'),
('Osasuna', 'El Sadar', 'Pamplona', 1920, 'Jagoba Arrasate'),
('Espanyol', 'RCDE Stadium', 'Barcelona', 1900, 'Luis García'),
('Alavés', 'Mendizorroza', 'Vitoria', 1921, 'Luis García Plaza'),
('Elche', 'Martínez Valero', 'Elche', 1923, 'Sebastián Beccacece'),
('Getafe', 'Coliseum Alfonso Pérez', 'Getafe', 1983, 'José Bordalás'),
('Cádiz', 'Nuevo Mirandilla', 'Cádiz', 1910, 'Sergio González'),
('Levante', 'Ciutat de València', 'Valencia', 1909, 'Javi Calleja'),
('Rayo Vallecano', 'Estadio de Vallecas', 'Madrid', 1924, 'Francisco Rodríguez');

-- Creación de la tabla jugadores
CREATE TABLE jugadores (
    id_jugador INT AUTO_INCREMENT PRIMARY KEY,
    nombre_jugador VARCHAR(50) NOT NULL,
    posicion VARCHAR(20),
    id_equipo INT,
    edad INT,
    goles INT,
    asistencias INT,
    FOREIGN KEY (id_equipo) REFERENCES equipos(id_equipo)
);

-- Insertar 20 registros en jugadores
INSERT INTO jugadores (nombre_jugador, posicion, id_equipo, edad, goles, asistencias)
VALUES
('Karim Benzema', 'Delantero', 1, 35, 25, 10),
('Lionel Messi', 'Delantero', 2, 36, 20, 15),
('Antoine Griezmann', 'Delantero', 3, 32, 18, 30),
('Youssef En-Nesyri', 'Delantero', 4, 27, 15, 8),
('Edinson Cavani', 'Delantero', 5, 37, 12, 5),
('Gerard Moreno', 'Delantero', 6, 31, 17, 9),
('Alexander Isak', 'Delantero', 7, 24, 16, 7),
('Iñaki Williams', 'Delantero', 8, 29, 13, 6),
('Borja Iglesias', 'Delantero', 9, 30, 19, 10),
('Iago Aspas', 'Delantero', 10, 36, 22, 12),
('Luis Suárez', 'Delantero', 11, 34, 14, 8),
('Takefusa Kubo', 'Centrocampista', 12, 22, 5, 10),
('Sergio Busquets', 'Centrocampista', 2, 35, 3, 8),
('Luka Modric', 'Centrocampista', 1, 38, 6, 10),
('Marcos Llorente', 'Centrocampista', 3, 28, 4, 9),
('Joan Jordán', 'Centrocampista', 4, 29, 2, 7),
('Carlos Soler', 'Centrocampista', 5, 26, 7, 10),
('Parejo', 'Centrocampista', 6, 34, 5, 12),
('Oyarzabal', 'Centrocampista', 7, 25, 9, 8),
('Nico Williams', 'Centrocampista', 8, 21, 8, 11);

-- Creación de la tabla partidos
CREATE TABLE partidos (
    id_partido INT AUTO_INCREMENT PRIMARY KEY,
    id_equipo_local INT,
    id_equipo_visitante INT,
    fecha DATE,
    goles_local INT,
    goles_visitante INT,
    FOREIGN KEY (id_equipo_local) REFERENCES equipos(id_equipo),
    FOREIGN KEY (id_equipo_visitante) REFERENCES equipos(id_equipo)
);

-- Insertar 20 registros en partidos
INSERT INTO partidos (id_equipo_local, id_equipo_visitante, fecha, goles_local, goles_visitante)
VALUES
(1, 2, '2023-01-15', 2, 3),
(3, 4, '2023-01-16', 1, 1),
(5, 6, '2023-01-17', 0, 2),
(7, 8, '2023-01-18', 3, 0),
(9, 10, '2023-01-19', 1, 2),
(11, 12, '2023-01-20', 2, 2),
(13, 14, '2023-01-21', 0, 1),
(15, 16, '2023-01-22', 3, 3),
(17, 18, '2023-01-23', 4, 1),
(19, 20, '2023-01-24', 0, 0),
(2, 3, '2023-01-25', 2, 2),
(4, 5, '2023-01-26', 3, 1),
(6, 7, '2023-01-27', 1, 1),
(8, 9, '2023-01-28', 2, 3),
(10, 11, '2023-01-29', 3, 2),
(12, 13, '2023-01-30', 0, 0),
(14, 15, '2023-01-31', 4, 2),
(16, 17, '2023-02-01', 1, 3),
(18, 19, '2023-02-02', 2, 1),
(20, 1, '2023-02-03', 1, 4);








