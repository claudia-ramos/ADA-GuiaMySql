create database Informacion;

use Informacion;

create table registros(
	id int auto_increment not null,
    nombre varchar(12) not null,
    apellido varchar(20) not null,
    genero char,
    fecha_cumpleanios date not null,
    ciudad varchar(12) not null,
    telefono int(20) not null,
    primary key(id)
);

insert into registros(nombre, apellido, genero, fecha_cumpleanios, ciudad, telefono)
values
('Maria', 'Ramirez', 'F', '1980-04-05', 'Bs. As.', 1145653567),
('German', 'Velez', 'M', '2000-12-06','Mendoza', 1167544679),
('Lucia', 'Alvarez', 'F', '1997-05-23', 'Mendoza', 1134646000),
('Martin', 'Lopez', 'M','2000-12-23', 'Madrid', 1144556677),
('Fernanda','Ferrini', 'F','2001-11-06','Cordoba',1199884455),
('Carlos','Ramos', 'M', '2002-07-12','San Luis', 1134657845),
('Lidia','Jimenez', 'F', '2004-11-09','Formosa', 1156846789),
('Valentin', 'Barrios','M', '1999-10-06', 'Bs. As.', 1156757837),
('Ana','Zepedo', 'F', '2001-03-12','Santa Fe', 1167963575),
('Lautaro', 'Ramos', 'M', '1998-01-12','Santa Fe', 1186785476),
('Tania', 'Perez', 'F', '2002-03-06', 'Mendoza', 1156855768),
('Facndo', 'Sanchez', 'M', '1999-02-11','Cordoba', 1135646634);

select * from registros;

select concat(nombre, ', ', apellido) as Atajo from registros;

select * from registros order by nombre, apellido ASC;

select ciudad from registros;

select * from registros where genero='F';

select * from registros where genero='M';

select count(*) from registros where genero='F';

select count(*) from registros where genero='M';

select day(fecha_cumpleanios), month(fecha_cumpleanios) from registros;

select year(fecha_cumpleanios) from registros;

select ciudad, count(*) as recuento from registros group by ciudad;

delete from registros where id=3;

update registros set
apellido='Salvatore',
ciudad='Island',
telefono=2345678
where id=7;

select * from registros where id=7;

set SQL_SAFE_UPDATES=0;

delete from registros where apellido like 'M%';

delete from registros where nombre like '%o';

select telefono from registros;

alter table registros
add column ubicacion varchar(20) not null;

alter table registros
change ubicacion direccion varchar(20) not null;


insert into registros(nombre, apellido, genero, fecha_cumpleanios, ciudad, telefono, direccion)
values
('Juan','Pereira', 'M', '2000-11-01', 'Florida', 11464685, 'San Anto 123' ),
('Anahi', 'Zarate', 'F', '1999-02-10', 'Misiones', 11476563,'Rivera 45'),
('Lucia', 'Mercedes', 'F','2002-12-09','Chaco', 114646466, 'Junin 1234'),
('Matias', 'Juarez', 'M', '1992-01-12', 'San Luis', 1146476956,'Crovara 200'),
('Ramon', 'Tazon', 'M', '2003-01-31', 'Entre Rios', 117646833,'Mercedes 145');

select * from registros;

