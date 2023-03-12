use registros;

select nombre from registros_personas limit 7;

select length(nombre) from registros_personas limit 7;

select length(nombre) as nombre_largo from registros_personas limit 7;

select nombre from registros_personas limit 7;

select upper(nombre) from registros_personas limit 7;

select upper(nombre) as nombres_mayusculas from registros_personas limit 7;

select lower(nombre) as nombres_minusculas from registros_personas limit 7;

select nombre, apellido from registros_personas limit 7;

select concat(nombre, ', ', apellido) from registros_personas limit 7;

select concat(nombre, ', ', apellido) as nombre_apellido from registros_personas limit 7;

select count(*) from  registros_personas;

select count(*) as recuento from  registros_personas;

select * from registros_personas where estado_civil='Casado';

select count(*) as registro_casada from registros_personas where estado_civil='Casado';

select * from registros_personas where estado_civil='Soltero';

select count(*) as registro_solteros from registros_personas where estado_civil='Soltero';

select day(fecha_cumpleanios) as registro_dia_cumpleanios from registros_personas limit 7;

select month(fecha_cumpleanios) as registro_mes_cumpleanios from registros_personas limit 7;

select year(fecha_cumpleanios) as registro_anio_cumpleanios from registros_personas limit 7;

select estado_civil, count(*) as recuento from registros_personas group by estado_civil; 

select estado_civil, count(*) as recuento from registros_personas group by estado_civil having estado_civil is not null;