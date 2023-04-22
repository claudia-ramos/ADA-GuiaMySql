CREATE DATABASE supermercadoSA;

USE supermercadoSA;

CREATE TABLE sucursal (
	id INT AUTO_INCREMENT NOT NULL,
    nombre VARCHAR(15) NOT NULL,
    direccion VARCHAR(25) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE empleado (
	id INT AUTO_INCREMENT NOT NULL,
    nombre VARCHAR(15) NOT NULL,
    idSucursal INT NOT NULL,
    FOREIGN KEY(idSucursal) REFERENCES sucursal(id),
    PRIMARY KEY(id)
);

INSERT INTO sucursal (nombre, direccion) VALUES 
('Dia', 'Av. Crovara 2100'),
('Coto', 'Av. San Juan 1200'),
('Carrefur', 'Av. Crovara 11000'),
('Almacen Lucia', 'Necochea 900');

INSERT INTO empleado (nombre, idSucursal) VALUES 
('Juan Perez', 2),
('Maria Lopez', 3),
('Esteban Perez', 2),
('Lujan Almiron', 4),
('German Ramos',1);


SELECT * FROM Empleado E INNER JOIN Sucursal S ON E.idSucursal = S.id;

SELECT E.nombre as 'Nombre_empleados', S.nombre as 'Nombre_surcusal' FROM empleado E LEFT JOIN sucursal S ON E.idSucursal = S.id; 

SELECT E.nombre as 'Nombre_empleados', S.nombre as 'Nombre_surcusal' FROM empleado E RIGHT JOIN sucursal S ON E.idSucursal = S.id; 

SELECT E.nombre as 'Nombre_empleados', S.nombre as 'Nombre_surcusal' FROM empleado E INNER JOIN sucursal S ON E.idSucursal = S.id WHERE E.id > 3;

SELECT E.nombre as 'Nombre_empleados', S.nombre as 'Nombre_surcusal' FROM empleado E INNER JOIN sucursal S ON E.idSucursal = S.id WHERE E.nombre LIKE 'A%'; 
