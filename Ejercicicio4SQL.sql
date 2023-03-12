use registros;

select * from registros_personas limit 5;

select length(nombre) from registros_personas limit 5;

select nombre from registros_personas limit 5;

select upper(nombre) as nombre_mayuscula from registros_personas;

select nombre from registros_personas limit 5;

select lower(nombre) as nombre_minuscula from registros_personas;

select concat(nombre, ', ', apellido) from registros_personas;

select count(*) from registros_personas;

select fecha_cumpleanios from registros_personas;

select  day(fecha_cumpleanios) from registros_personas;
select  month(fecha_cumpleanios) from registros_personas;
select  year(fecha_cumpleanios) from registros_personas;

select estado_civil, count(*) as recuento from registros_personas group by estado_civil; 