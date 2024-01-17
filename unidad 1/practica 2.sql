CREATE DATABASE Practica2
go

USE Practica2
go

CREATE TABLE tbCliente(
clienteId int not null,
nombreC varchar(100) not null
constraint unique_nombreC
unique(nombreC),
direccionC varchar(100) not null,
telefonoC varchar(20)not null,
constraint pk_tbCliente
primary key (clienteId)
)

CREATE TABLE tbempleado(
empleadoId int not null,
constraint pk_tbempleado 
primary key(empleadoId),
nombreEmp varchar(50) not null,
apellidosEmp varchar(80) not null,
Sexo char(1) not null,
constraint chk_sexo
check (sexo = 'H' or 'M'),
salario decimal(10,2)
constraint chk_salario
check(salario>400.0 and salario<=50000)
)

CREATE TABLE tbVenta(
VentaId int not null,
constraint pk_tbVenta
primary key(VentaId),
Fecha date not null,
empleadoId int not null,
constraint fk_tbVenta_tbempleado
foreign key(empleadoId)
references tbempleado(empleadoId),
clienteId int not null,
constraint fk_tbVenta_tbCliente
foreign key(clienteId)
references tbCliente(clienteId)
)

