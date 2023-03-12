use laboraty;

INSERT INTO cliente 
VALUES
(6,'Pedro','Gonzales',20-24674567-3,'Aguirre 1234',''),
(7,'Mariluz','Perez',20-24789456-1,'Rivera 456',''),
(8,'Luis','Orlando',20-25762332-1,'Mayo 654',''),
(9,'Tania', 'Lopez',20-12463456-2,'Larrea 45',''),
(10,'Fernando', 'Escudero',20-24567451-1,'Larrea 67','');

update cliente set nombre='José' where id=1;

update cliente set nombre='Pablo',apellido='Fuentes', cuit=20-21053119-0 where id=3;

update cliente set comentario='';

set SQL_SAFE_UPDATES=0;

delete from cliente where apellido='Perez';

delete from cliente where cuit like '%0';


update articulo set precio= precio+(precio*0.2) where precio<=50;

update articulo set precio= precio+(precio*0.15) where precio>50;

update articulo set precio= precio-(precio*0.05) where precio>200;

delete from articulo where stock=0; 