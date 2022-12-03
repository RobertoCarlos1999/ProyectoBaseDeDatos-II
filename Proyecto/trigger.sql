
 create table vitacora(
accion varchar(50),
hostName varchar(50),
fecha timestamp
);

insert into vitacora values('accion',@@HOSTNAME, null);

select * from vitacora;
select @@HOSTNAME;
 
delimiter $$
CREATE TRIGGER InsertarCliente
BEFORE INSERT ON Cliente
FOR EACH ROW 
BEGIN       
insert into vitacora values(concat(New.Nombre,'insertado'),@@HOSTNAME, null);
END $$

insert into Cliente values('','Maria','Menacho',784521,69854125,'2do Secundaria');
select * from vitacora;