select * from usuario;
delimiter $$
create procedure InsertarUsuario(
in varIdUsuario int,
in varNombre varchar(20),
in varApellido varchar(20),
in varTelefono int,
in varNivel varchar(20)
)
begin
insert into usuario values (varIdUsuario,varNombre, varApellido, varTelefono, varNivel);

end $$ 
call InsertarUsuario ('','Noe','Perez', '75642896','cajero');
