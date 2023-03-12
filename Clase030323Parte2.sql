use ada;

select * from person; 

alter table person
add column  ciudad varchar(50) not null;

select * from person; 

alter table person
change ciudad direccion varchar(50) not null;

alter table person
drop direccion
