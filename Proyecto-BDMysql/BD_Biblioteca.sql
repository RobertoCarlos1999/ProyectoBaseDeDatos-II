create database BD_Biblioteca;
use bd_biblioteca;
create table Usuario (
IdUsuario int not null primary key auto_increment,
Nombre varchar (20),
Apellido varchar (20), 
Telefono int,
Nivel varchar (20),
fkNroPedido int,
foreign key (fkNroPedido)references prestamo (NroPedido)
);

create table Cliente (
IdCliente int not null primary key auto_increment,
Nombre varchar (20),
Apellido varchar (20), 
CI int,
Telefono int,
Curso text ,
fkArticulos int,
foreign key (fkArticulos)references articulos (IdArticulos)
);
DROP TABLE `bd_biblioteca`.`Usuario`;


create table Articulos (
IdArticulos int not null primary key auto_increment,
Nombre varchar (20),
Autor varchar (50), 
Tipo varchar (50),
NroPaginas  int,
AñoEdicion  varchar (20)
);

select * From usuario;


create table Inventario (
IdInventario int not null primary key auto_increment,
Nombre varchar (20),
Tipo varchar (20), 
Cantidad int,
Copias int,
fkArticulos int,
foreign key (fkArticulos)references articulos (IdArticulos)
);

create table Prestamo (
NroPedido int not null primary key auto_increment,
FechaSalida varchar(20), 
FechaDevolucion varchar(20)
);
fkSancion int,
fkCliente int,
fkArticulos int,
foreign key (fkSancion)references sancion (IdSancion),
foreign key (fkCliente)references cliente (IdCliente),
foreign key (fkArticulos)references articulos (IdArticulos)

create table Sancion (
IdSancion int not null primary key auto_increment,
Tipo text,
Monto double, 
FechaSancion varchar (20),
FKCliente int,
foreign key (FKCliente)references cliente (IdCliente)
);

