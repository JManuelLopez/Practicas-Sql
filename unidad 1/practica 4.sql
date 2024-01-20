CREATE DATABASE Practica4
go

USE Practica4
go

CREATE TABLE Categoria(
CategoriaId int not null,
NumInventario int not null,
DescripcionCat Varchar(150),
constraint pk_Categoria
primary key (CategoriaId,NumInventario)
)

CREATE TABLE Producto(
ProductoId int not null,
CategoriaId int not null,
NumInventario int null,
DescripcionP Varchar(50),
precio decimal(10,2) not null,
stock int not null
constraint pk_Producto
primary key (ProductoId),
constraint fk_Producto_Catego
foreign key (CategoriaId, NumInventario)
references Categoria(CategoriaId, NumInventario)
)