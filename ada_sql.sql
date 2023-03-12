create database ada;

use ada;

create table person(
	id int auto_increment,
    p_name varchar(20) not null,
    last_name varchar(20) not null,
    civil_state varchar(20) not null,
    primary key(id)
);

insert into person(
	p_name, last_name, civil_state)
    values
    ("Maria", "Lopez", "Casada"),
    ("Fernando", "Ramirez", "Soltero"),
    ("Luz", "Gutierrez", "Casada");
    
select * from person