-- PUNTO 1. DIFERENCIACIÓN DE CENTROS Y MATRÍCULA
 "Los centros educativos ahora se diferenciarán entre Facultades y Colegios Mayores" [cite: 45]
CREATE TABLE CENTRO (
    ID_Centro INT PRIMARY KEY,
    Nombre VARCHAR(100),
    Direccion VARCHAR(200),
    Ano_Apertura INT,
    Tipo VARCHAR(50) -- Aquí guardamos si es 'Facultad' o 'Colegio Mayor'
);

-- "Un estudiante tiene que estar obligatoriamente matriculado en una facultad" [cite: 46]
-- "puede o no vivir en un Colegio Mayor" [
CREATE TABLE ESTUDIANTE (
    TUI VARCHAR(20) PRIMARY KEY, -- Usamos TUI porque el Punto 1 no habla de DNI todavía
    Nombre VARCHAR(100),
    ID_Facultad INT NOT NULL,     -- OBLIGATORIO (Facultad)
    ID_Colegio_Mayor INT,         -- OPCIONAL (Colegio)
    FOREIGN KEY (ID_Facultad) REFERENCES CENTRO(ID_Centro),
    FOREIGN KEY (ID_Colegio_Mayor) REFERENCES CENTRO(ID_Centro)
);

-- 1. TABLA PADRE (MIEMBRO UGR)
-- "DNI, fecha de nacimiento y lugar... localidad, provincia, país."
CREATE TABLE MIEMBRO_UGR (
    DNI VARCHAR(9) PRIMARY KEY,
    Fecha_Nacimiento DATE,
    Localidad_Nacimiento VARCHAR(50),
    Provincia_Nacimiento VARCHAR(50),
    Pais_Nacimiento VARCHAR(50)
);

-- 2. TABLA HIJA (STAFF)
-- "Del staff se almacenará solamente su tipo de contrato y sueldo."
CREATE TABLE PERSONAL_STAFF (
    DNI VARCHAR(9) PRIMARY KEY,
    Tipo_Contrato VARCHAR(50),
    Sueldo DECIMAL(10, 2),
    FOREIGN KEY (DNI) REFERENCES MIEMBRO_UGR(DNI)
);

-- 3. TABLA HIJA (PROFESOR)
-- "Tipo de contrato, sueldo... y departamento."
CREATE TABLE PROFESOR (
    DNI VARCHAR(9) PRIMARY KEY,
    Departamento VARCHAR(100),
    Tipo_Contrato VARCHAR(50),
    Sueldo DECIMAL(10, 2),
    FOREIGN KEY (DNI) REFERENCES MIEMBRO_UGR(DNI)
);

-- TABLA EXTRA PARA PROFESOR (Imparte en varias facultades)
-- "Facultades donde imparte clases (puede ser más de una)."
CREATE TABLE DOCENCIA_PROFESOR (
    DNI_Profesor VARCHAR(9),
    ID_Facultad INT,
    PRIMARY KEY (DNI_Profesor, ID_Facultad),
    FOREIGN KEY (DNI_Profesor) REFERENCES PROFESOR(DNI),
    FOREIGN KEY (ID_Facultad) REFERENCES CENTRO(ID_Centro)
);

-- 4. TABLA HIJA (ESTUDIANTE)
-- "Tendrá TUI (única) y los datos de facultad y colegio descritos en el punto 1."
CREATE TABLE ESTUDIANTE (
    DNI VARCHAR(9) PRIMARY KEY,
    TUI VARCHAR(20) UNIQUE, -- Requisito: TUI única
    ID_Facultad INT NOT NULL,
    ID_Colegio_Mayor INT,
    FOREIGN KEY (DNI) REFERENCES MIEMBRO_UGR(DNI),
    FOREIGN KEY (ID_Facultad) REFERENCES CENTRO(ID_Centro),
    FOREIGN KEY (ID_Colegio_Mayor) REFERENCES CENTRO(ID_Centro)
);

-- PUNTO 3. LOS CAPITANES SOLO ESTUDIANTES
-- "Cada equipo tendrá un capitán... Los capitanes sólo podrán ser estudiantes"
CREATE TABLE EQUIPO (
    ID_Equipo INT PRIMARY KEY,
    Nombre VARCHAR(50),
    Curso_Inscripcion INT,
    ID_Centro INT,
    DNI_Capitan VARCHAR(9), -- Aquí guardamos quién es el jefe
    
    -- Gancho al Centro
    FOREIGN KEY (ID_Centro) REFERENCES CENTRO(ID_Centro),
    
    -- ¡AQUÍ ESTÁ LA CLAVE DEL PUNTO 3!
    -- Apuntamos a ESTUDIANTE, no a MIEMBRO ni a PROFESOR.
    FOREIGN KEY (DNI_Capitan) REFERENCES ESTUDIANTE(DNI)
);

-- Tabla auxiliar para el resto de jugadores (necesaria para que el equipo tenga gente)
CREATE TABLE PERTENECE_EQUIPO (
    ID_Equipo INT,
    DNI_Estudiante VARCHAR(9),
    PRIMARY KEY (ID_Equipo, DNI_Estudiante),
    FOREIGN KEY (ID_Equipo) REFERENCES EQUIPO(ID_Equipo),
    FOREIGN KEY (DNI_Es
    
    -- PUNTO 4. PARTIDOS FLEXIBLES (ATLETISMO)

-- 1. Tabla PARTIDO (Solo datos del evento)
CREATE TABLE PARTIDO (
    ID_Partido INT PRIMARY KEY,
    Ubicacion VARCHAR(100),
    ID_Torneo INT,
    TUI_Arbitro VARCHAR(20), -- (En este punto sigue siendo estudiante)
    FOREIGN KEY (ID_Torneo) REFERENCES TORNEO(ID_Torneo),
    FOREIGN KEY (TUI_Arbitro) REFERENCES ESTUDIANTE(TUI)
);

-- 2. TABLA ROBUSTA (La Lista de Participantes)
-- Aquí es donde ocurre la magia: Relación N:M
CREATE TABLE PARTICIPA_PARTIDO (
    ID_Partido INT,
    ID_Equipo INT, -- En atletismo, el equipo es de 1 persona, pero sigue siendo un equipo
    PRIMARY KEY (ID_Partido, ID_Equipo),
    FOREIGN KEY (ID_Partido) REFERENCES PARTIDO(ID_Partido),
    FOREIGN KEY (ID_Equipo) REFERENCES EQUIPO(ID_Equipo)
);

