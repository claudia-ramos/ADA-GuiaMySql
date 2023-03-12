CREATE DATABASE laboraty;

USE laboraty;

CREATE TABLE factura (
	id int auto_increment not null,
    letra char not null,
    numero int(5) zerofill not null,
    fecha date not null,
    cantidad  int not null,
    primary key(id)
);

CREATE TABLE articulo (
	id int auto_increment not null,
    nombre varchar(50) not null,
    precio double not null default 0,
    stock int not null,
    primary key(id)
);

CREATE TABLE cliente (
	id int auto_increment not null,
    nombre varchar(50) not null,
    apellido varchar(50) not null,
    cuit char(16) not null,
    direccion varchar(100) not null,
    comentario longtext,
    primary key(id)
);

INSERT INTO factura(letra, numero, fecha, cantidad)
VALUES
('B',1, '2011-11-18', 500 ),
('B',2,'2012-09-25', 200),
('B',3,'2011-01-01', 3020),
('B',4,'2016-11-18',1200),
('B',5,CURDATE(),3300);

INSERT INTO articulo (nombre, precio, stock)
VALUES
('Cinta',110, 50),
('Espatula',20,22),
('Fratas',35,28),
('Regla',20,78),
('Tenaza',12,13);

INSERT INTO cliente(nombre, apellido, cuit, direccion)
VALUES
('Mario', 'Perez',20-14987008-8, 'Aguero 635'),
('Jorge','Rios',20-37562854-5,'Nazca 1532'),
('Valeria', 'Lagos',20-25487418-8,'Chipre 5'),
('Natalia', 'Peña',20-25982665-2,'Jufre 3651'),
('Juan','Khorn',20-23587171-9,'Belgrano 6525');

select * from articulo where precio>100;
select * from articulo where precio>20 and precio<40;
select * from articulo where precio>40 and precio<60;
select * from articulo where precio=20 and stock>30;
select * from articulo where precio=12 or precio=20 or precio=30;
select * from articulo where precio=10 or precio=110;
select * from articulo order by precio desc, nombre desc;

