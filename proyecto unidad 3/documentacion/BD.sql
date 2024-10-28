-- creacion de tablas
CREATE TABLE Pacientes (
    id_paciente INT ALWAIS GENERATED PRIMARY KEY AS IDENTITY,
    nombre VARCHAR(100),
    edad INT,
    direccion VARCHAR(150),
    telefono VARCHAR(15)
);

CREATE TABLE Consultas (
    id_consulta INT ALWAIS GENERATED PRIMARY KEY AS IDENTITY,
    id_paciente INT,
    fecha_consulta DATE,
    sintomas TEXT,
    diagnostico VARCHAR(100),
    medicamentos TEXT,
    FOREIGN KEY (id_paciente) REFERENCES Pacientes(id_paciente)
);

CREATE TABLE doctores (
    id_doctor ALWAIS GENERATED PRIMARY KEY AS IDENTITY,
    id_consulta INT,
    id_paciente INT,
    nombre VARCHAR(100),
    edad INT,
    direccion VARCHAR(150),
    telefono VARCHAR(15)
    FOREIGN KEY (id_paciente) REFERENCES Pacientes(id_paciente)
    FOREIGN KEY (id_consulta) REFERENCES Consultas(id_consulta)




)