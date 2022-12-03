delimiter $$
create function sumarValore(v1 int,v2 int) 
returns int
Begin
declare resultado int;
set resultado=v1+v2;
return resultado;
end $$

select sumarValore(2,2) as suma;
select max(CantLibro) from cliente;

select min(CantLibro) from cliente;

select sumarValore((select max(CantLibro) from cliente),
(select min(CantLibro) from cliente)) as sumArticulo;