create database registros;

use registros;

create table registros_personas(
	id int auto_increment not null,
    nombre varchar(10) not null,
    apellido varchar(10) not null,
    fecha_cumpleanios date not null,
    estado_civil varchar(10) not null,
    ciudad varchar(10) not null,
    primary key(id)
);

insert into registros_personas(
	nombre, apellido, fecha_cumpleanios, estado_civil, ciudad)
    values
    ('Maria', 'Gutierrez', '1996-12-03', 'Casado', 'Madrid'),
	('Juan', 'Lopez', '1980-10-12', 'Soltero', 'Cordoba'),
    ('Marcela', 'Lopez', '1980-08-04', 'Casado', 'Mendoza'),
    ('Leonel', 'Sanchez', '2000-11-24', 'Soltero', 'Medellin'),
    ('Julia', 'Gutierrez', '2002-03-11', 'Soltero', 'Cordoba'),
    ('German', 'Vargas', '1999-05-11', 'Soltero', 'Capital'),
    ('Ivan', 'Martinez', '2002-07-18', 'Soltero', 'Capital'),
    ('Mirtha', 'Ramos', '1986-11-22', 'Casado', 'Mendoza');
    
select nombre, apellido from registros_personas;

select * from registros_personas order by nombre,apellido ASC;

select * from registros_personas where estado_civil = 'Casado';

select * from registros_personas where estado_civil = 'Soltero';

select * from registros_personas where apellido = 'Baez';

select * from registros_personas where apellido = 'Vargas' and estado_civil = 'Soltero';

insert into registros_personas(
	nombre, apellido, fecha_cumpleanios, estado_civil, ciudad)
	values
	('Lautaro', 'Valero', '2003-01-31', 'Soltero', 'Mendoza');
    
update registros_personas set apellido = 'Baez' where id=5;

delete from registros_personas where id=3;

select * from registros_personas limit 3 offset 3;

#Clase del 01/03




set SQL_SAFE_UPDATES=0;

delete from registros_personas where apellido like 'Z%';

delete from registros_personas where estado_civil='Casado';

select * from registros_personas;

delete from registros_personas;

select * from registros_personas;

insert into registros_personas (nombre, apellido, fecha_cumpleanios, estado_civil, ciudad) 
	values('Mar', 'Martinez', '1999-12-03', 'Casado', 'Madrid'); 

select * from registros_personas;

truncate table registros_personas;

select * from registros_personas;

insert into registros_personas (nombre, apellido, fecha_cumpleanios, estado_civil, ciudad) 
	values('Mar', 'Martinez', '1999-12-03', 'Casado', 'Madrid'); 
    
select * from registros_personas;


insert into registros_personas(
	nombre, apellido, fecha_cumpleanios, estado_civil, ciudad)
    values
    ('Maria', 'Gutierrez', '1996-12-03', 'Casado', 'Madrid'),
	('Juan', 'Lopez', '1980-10-12', 'Soltero', 'Cordoba'),
    ('Marcela', 'Lopez', '1980-08-04', 'Casado', 'Mendoza'),
    ('Leonel', 'Sanchez', '2000-11-24', 'Soltero', 'Medellin'),
    ('Julia', 'Gutierrez', '2002-03-11', 'Soltero', 'Cordoba'),
    ('German', 'Vargas', '1999-05-11', 'Soltero', 'Capital'),
    ('Ivan', 'Martinez', '2002-07-18', 'Soltero', 'Capital'),
    ('Mirtha', 'Ramos', '1986-11-22', 'Casado', 'Mendoza');
    
select id, nombre, apellido, estado_civil, ciudad from registros_personas where id=5;

update registros_personas set estado_civil = 'Soltera' where id=5;

select * from registros_personas;

select id, estado_civil, ciudad from registros_personas where id=4;

update registros_personas set estado_civil='Soltero', ciudad='Bs. As.' where id=4;

select * from registros_personas;

select * from registros_personas limit 8;

update registros_personas set estado_civil= 'Indefinido';

select * from registros_personas;

select id, estado_civil, ciudad from registros_personas where id=8;

update registros_personas set estado_civil= 'Casado', ciudad= 'Chaco' where id=8;

select * from registros_personas where id=2;

update registros_personas set
nombre = concat('Javi', '', nombre),
apellido = 'Lopez',
fecha_cumpleanios = '1999-12-09',
estado_civil= 'Casado',
ciudad = 'T. Fuego'
where id=2;




  
  




 
    
    
