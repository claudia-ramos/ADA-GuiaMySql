use nba;

select * from equipos;

select * from estadisticas;

select * from jugadores;

select * from partidos;

select nombre from jugadores order by nombre;

select nombre from jugadores  where posicion like '%C%' and peso>200;

select nombre from equipos order by nombre asc;

select nombre from equipos where conferencia='East';

select * from equipos where ciudad like ('C%');

select J.nombre as 'Jugadores', E.nombre as 'Equipos' from jugadores J join equipos E on J.nombre_equipo = E.nombre; 

select count(*) as recuento from jugadores;

select count(*) as recuento from partidos;

select count(*) as recuento from estadisticas;

select count(*) as recuento from equipos;

select temporada, count(*) as recuento from partidos group by temporada;

select count(P.puntos_local)  as 'Puntos Locales', E.nombre as 'Equipos Locales' from partidos P join equipos E on P.equipo_local = E.nombre group by E.nombre;

select concat(nombre, '-', altura, '-', peso, '-', posicion) as 'Nombre_Altura_Peso_Posicion' from jugadores;

select nombre, nombre_equipo from jugadores;

select rebotes_por_partido, count(*) as 'recuento_rebotes' from estadisticas group by rebotes_por_partido;

select asistencias_por_partido,count(*) as 'recuento_asistencias_por_partido' from estadisticas group by asistencias_por_partido;

select jugador, count(*) as 'recuento_jugador'from estadisticas group by jugador;

select max(puntos_por_partido) from estadisticas;

select max(puntos_visitante) from partidos;

select nombre, nombre_equipo from jugadores where altura = (select max(altura) from jugadores);

select nombre, nombre_equipo from jugadores where peso = (select max(peso) from jugadores);

select nombre, nombre_equipo from jugadores where altura = (select min(altura) from jugadores);

select nombre, nombre_equipo from jugadores where peso = (select min(peso) from jugadores);

select J.posicion as 'posicion_jugador', E.nombre as 'nombre_equipos' from jugadores J join equipos E on J.nombre_equipo = E.nombre; 

select concat(nombre, ' - ', peso, ' - ', altura) as 'nombre_peso_altura', nombre_equipo from jugadores; 

select * from estadisticas where temporada > '06/07';

select nombre from equipos where nombre like 'C%';

select ciudad, division from equipos;

select conferencia from equipos where conferencia like 'N%';

select posicion, nombre, nombre_equipo from jugadores;

select posicion, nombre_equipo from jugadores where altura < '6-7'; 


















