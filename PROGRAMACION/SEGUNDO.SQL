CREATE TABLE PARTIDO (
    ID_Partido INT PRIMARY KEY,
    Ubicacion VARCHAR(100),
    Resultado VARCHAR(20),
    ID_Torneo INT,
    
    -- Columna para el árbitro
    DNI_Arbitro VARCHAR(9), 

    -- Resto de claves foráneas...
    FOREIGN KEY (ID_Torneo) REFERENCES TORNEO(ID_Torneo),
    FOREIGN KEY (ID_Equipo_Ganador) REFERENCES EQUIPO(ID_Equipo),

    -- ¡AQUÍ ESTÁ LA SOLUCIÓN!
    -- Obligamos a que el DNI exista en la tabla PERSONAL_STAFF.
    -- Si pones un DNI que no es de Staff, dará error.
    FOREIGN KEY (DNI_Arbitro) REFERENCES PERSONAL_STAFF(DNI)
);

-- 1. LA LISTA DE VOLUNTARIOS (Tabla Nueva)
CREATE TABLE ARBITRO_TORNEO (
    ID_Torneo INT,
    DNI_Staff VARCHAR(9),
    PRIMARY KEY (ID_Torneo, DNI_Staff),
    -- El árbitro debe ser del Staff
    FOREIGN KEY (DNI_Staff) REFERENCES PERSONAL_STAFF(DNI),
    FOREIGN KEY (ID_Torneo) REFERENCES TORNEO(ID_Torneo)
);

-- 2. EL PARTIDO (Con el Candado de Seguridad)
CREATE TABLE PARTIDO (
    ID_Partido INT PRIMARY KEY,
    Ubicacion VARCHAR(100),
    Resultado VARCHAR(20),
    ID_Torneo INT,
    DNI_Arbitro VARCHAR(9),
    ID_Equipo_Ganador INT,
    
    -- Gancho normal al Torneo y Ganador
    FOREIGN KEY (ID_Torneo) REFERENCES TORNEO(ID_Torneo),
    FOREIGN KEY (ID_Equipo_Ganador) REFERENCES EQUIPO(ID_Equipo),

    -- ¡AQUÍ ESTÁ LA SOLUCIÓN MAESTRA!
    -- En vez de apuntar solo al Staff, apuntamos a la TABLA ARBITRO_TORNEO.
    -- Le decimos: "Este par (Torneo + Arbitro) tiene que existir en la lista de inscritos".
    FOREIGN KEY (ID_Torneo, DNI_Arbitro) REFERENCES ARBITRO_TORNEO(ID_Torneo, DNI_Staff)
);
--3.
    CREATE TABLE TORNEO (
    ID_Torneo INT PRIMARY KEY,
    -- ... resto de columnas ...
    ID_Equipo_Ganador INT, -- Aquí guardamos quién ganó el torneo
    
    -- Resto de FK...
    FOREIGN KEY (ID_Equipo_Ganador) REFERENCES EQUIPO(ID_Equipo)
);
--4
CREATE TABLE PARTIDO (
    ID_Partido INT PRIMARY KEY,
    -- ... resto de columnas ...
    Resultado VARCHAR(20),  -- Guardamos el marcador "3-1"
    ID_Equipo_Ganador INT,  -- Guardamos quién ganó este partido
    
    -- Resto de FK...
    FOREIGN KEY (ID_Equipo_Ganador) REFERENCES EQUIPO(ID_Equipo)
);