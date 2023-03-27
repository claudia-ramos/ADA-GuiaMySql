CREATE DATABASE basedatos;

USE basedatos;

CREATE TABLE factura (
	id_factura int auto_increment not null,
    producto varchar(30) not null,
    cantidad int(5) not null,
    primary key(id_factura)
);

CREATE TABLE cliente (
	id_cliente INT AUTO_INCREMENT NOT NULL,
    nombre VARCHAR(30) NOT NULL,
    apellido VARCHAR(30) NOT NULL,
    direccion VARCHAR(40) NOT NULL,
    PRIMARY KEY(id_cliente)
);

CREATE TABLE factura_cliente (
	id_factura_fk INT NOT NULL,
	id_cliente_fk INT NOT NULL
);

ALTER TABLE factura_cliente ADD CONSTRAINT factura_cliente_fk0 FOREIGN KEY(id_cliente_fk) REFERENCES cliente(id_cliente); 

ALTER TABLE factura_cliente ADD CONSTRAINT factura_cliente_fk1 FOREIGN KEY(id_factura_fk) REFERENCES factura(id_factura);

INSERT INTO factura (producto, cantidad) VALUES ('Chocolate', 2);

SELECT * FROM factura;

INSERT INTO cliente (nombre, apellido, direccion) VALUES ('Maria', 'Perez', 'Montes de Oca 1234');

SELECT * FROM cliente;

INSERT INTO factura_cliente (id_factura_fk, id_cliente_fk) VALUES (1,1);

SELECT * FROM factura_cliente;

INSERT INTO factura (producto, cantidad) VALUES ('Leche',3);

INSERT INTO factura_cliente (id_factura_fk, id_cliente_fk) VALUES (2,1);

SELECT * FROM factura_cliente;
