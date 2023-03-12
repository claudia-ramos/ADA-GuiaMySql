use registros;


delete from registros_personas where id=3;
set SQL_SAFE_UPDATES=0;
delete from registros_personas where apellidos like 'M%';
truncate table registros_personas;

  insert into registros_personas(
	nombre, apellido, fecha_cumpleanios, estado_civil, ciudad)
    values
    ('Maria', 'Gutierrez', '1996-12-03', 'Casado', 'Madrid'),
	('Juan', 'Lopez', '1980-10-12', 'Soltero', 'Cordoba'),
    ('Marcela', 'Lopez', '1980-08-04', 'Casado', 'Mendoza'),
    ('Leonel', 'Sanchez', '2000-11-24', 'Soltero', 'Medellin'),
    ('Julia', 'Gutierrez', '2002-03-11', 'Soltero', 'Cordoba'),
    ('German', 'Vargas', '1999-05-11', 'Soltero', 'Capital'),
    ('Ivan', 'Martinez', '2002-07-18', 'Soltero', 'Capital');
    
select id,nombre,apellido, fecha_cumpleanios, estado_civil, ciudad from registros_personas where id=5;
  
update registros_personas set estado_civil='Indefinido' where id=5; 

select * from registros_personas;

select id,nombre,apellido, fecha_cumpleanios, estado_civil, ciudad from registros_personas where id=2;

update registros_personas set estado_civil='Indefinido', ciudad='Bs. As.' where id=2;

select * from registros_personas;

update registros_personas set nombre='Lucia',apellido='Mercedes' where id=6;
