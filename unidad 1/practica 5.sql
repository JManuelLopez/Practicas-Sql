CREATE DATABASE Practica5
go

USE Practica5
go

CREATE TABLE pruebaCalculado(
Id int not null identity(1,1),
nombre varchar(50),
precio decimal (10,2) not null,
existencia int not null,
importe as
(precio * existencia),
constraint pk_pruebacalculado
primary key(Id)
)

select * from pruebaCalculado

insert into pruebaCalculado
values ('Chanclotas' , 345, 4)