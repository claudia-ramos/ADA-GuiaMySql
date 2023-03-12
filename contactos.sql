create database PhoneBookDB;

use PhoneBookDB;

create table contact(
	id int auto_increment not null,
    nombre varchar(50) not null,
    apellido varchar(50) not null,
    direccion varchar(100),
    numero_telefonico varchar(20) not null,
    primary key(id)
);

insert into contact(
	nombre, apellido, direccion, numero_telefonico)
    values
    ('Lautaro', 'Velez', 'Coronel Rodriguez 1002', '4567784');
    
insert into contact(
	nombre, apellido, direccion, numero_telefonico)
    values
    ('Maria', 'Alvarado', 'Campana 599', '11234465');
    
insert into contact(
	nombre, apellido, direccion, numero_telefonico)
    values
    ('German', 'Velez', 'Campana 1002', '4567784');

insert into contact(
	nombre, apellido, direccion, numero_telefonico)
    values
    ('Andrea', 'Rodriguez', 'Montes de Oca 5600', '112455567');
    
insert into contact(
	nombre, apellido, direccion, numero_telefonico)
    values
    ('Andres', 'Velez', 'Campana 1002', '4567784');
    
    
insert into contact(
	nombre, apellido, direccion, numero_telefonico)
    values
    ('German', 'Velez', 'Campana 1002', '4567784');

