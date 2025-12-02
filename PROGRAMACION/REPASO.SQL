CREATE TABLE CENTRO (
    ID_Centro INT PRIMARY KEY,
    Nombre VARCHAR(100),
    Ano_Apertura INT,
    Direccion VARCHAR(200)
);

CREATE TABLE DEPORTE (
    ID_Deporte INT PRIMARY KEY,
    Nombre VARCHAR(50),
    Min_Jugadores INT,
    Max_Jugadores INT
);

CREATE TABLE ESTUDIANTE (
    TUI VARCHAR(20) PRIMARY KEY,
    Nombre VARCHAR(100),
    ID_Centro INT,  -- El gancho a su facultad
    FOREIGN KEY (ID_Centro) REFERENCES CENTRO(ID_Centro)
);

CREATE TABLE EQUIPO (
    ID_Equipo INT PRIMARY KEY,
    Nombre VARCHAR(50),
    Curso_Inscripcion INT,
    ID_Centro INT,           -- Gancho 1: Su facultad
    TUI_Capitan VARCHAR(20), -- Gancho 2: Su capitán (que es un Estudiante)
    FOREIGN KEY (ID_Centro) REFERENCES CENTRO(ID_Centro),
    FOREIGN KEY (TUI_Capitan) REFERENCES ESTUDIANTE(TUI)
);

CREATE TABLE PERTENECE_EQUIPO (
    ID_Equipo INT,
    TUI_Estudiante VARCHAR(20),
    PRIMARY KEY (ID_Equipo, TUI_Estudiante),
    FOREIGN KEY (ID_Equipo) REFERENCES EQUIPO(ID_Equipo),
    FOREIGN KEY (TUI_Estudiante) REFERENCES ESTUDIANTE(TUI)
);

CREATE TABLE TORNEO (
    ID_Torneo INT PRIMARY KEY,
    Ano INT,
    Min_Equipos INT,
    Max_Equipos INT,
    ID_Deporte INT, -- Gancho: ¿De qué se juega aquí?
    FOREIGN KEY (ID_Deporte) REFERENCES DEPORTE(ID_Deporte)
);

CREATE TABLE PARTIDO (
    ID_Partido INT PRIMARY KEY,
    Ubicacion VARCHAR(100),
    ID_Torneo INT,            -- Gancho 1: Pertenece a este torneo
    TUI_Arbitro VARCHAR(20),  -- Gancho 2: El árbitro es un ESTUDIANTE (según punto 5)
    FOREIGN KEY (ID_Torneo) REFERENCES TORNEO(ID_Torneo),
    FOREIGN KEY (TUI_Arbitro) REFERENCES ESTUDIANTE(TUI)
);

CREATE TABLE PARTICIPA_PARTIDO (
    ID_Partido INT,
    ID_Equipo INT,
    PRIMARY KEY (ID_Partido, ID_Equipo),
    FOREIGN KEY (ID_Partido) REFERENCES PARTIDO(ID_Partido),
    FOREIGN KEY (ID_Equipo) REFERENCES EQUIPO(ID_Equipo)
);
