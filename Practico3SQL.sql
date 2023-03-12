use laboraty;

select max(cantidad) from factura;

select min(cantidad) from factura;

select min(cantidad) from factura where year(fecha)>2000 and year(fecha)<2008;

select * from factura where year(fecha)=2016;

select * from factura where numero=3;

select count(*) from factura;

select count(*) from factura where cantidad>35000 and cantidad<40000;

select year(fecha), count(*) as recuento from factura group by year(fecha);

select letra, count(*) as recuento from factura group by letra;

