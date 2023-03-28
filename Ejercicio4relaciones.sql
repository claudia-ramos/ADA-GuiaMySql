CREATE DATABASE identidad;

USE identidad;

CREATE TABLE persona (
	id_persona INT AUTO_INCREMENT NOT NULL,
    nombre VARCHAR(15) NOT NULL,
    apellido VARCHAR(15) NOT NULL,
    nacionalidad VARCHAR(20) NOT NULL,
    genero CHAR(2) NOT NULL,
    PRIMARY KEY(id_persona)
);

CREATE TABLE cuit(
	id_cuit INT NOT NULL,
    id_persona_fk INT NOT NULL UNIQUE,
    foreign key(id_persona_fk) references persona(id_persona),
    PRIMARY KEY(id_cuit)
);

INSERT INTO persona (nombre, apellido, nacionalidad, genero) VALUES 
('Mario', 'Juarez', 'Argentina', 'M'),
('Juan', 'Ranos', 'Mexicana', 'M'),
('Lucia', 'Martinez', 'Colombiana', 'F'),
('Ana', 'Zarate', 'Argentina', 'F');

INSERT INTO cuit (id_cuit, id_persona_fk) VALUES (3,1), (4,2), (1,3), (23,4);

SELECT * FROM persona;
SELECT * FROM cuit;
