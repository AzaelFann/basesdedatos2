create table sala(
  id_sala integer,
  id_pelicula integer,
  sala varchar(8),
  constraint pk_id_sala primary key(id_sala),
  constraint fk1_id_pelicula foreign key(id_pelicula)references pelicula(id_pelicula)
                      );
  
-- ejercicio 27 enero
--crear una secuencia para la pelicula
create sequence sec_pelicula
star with 1
increment by 1
nomaxvalue;

set serveroutput on;

create or replace procedure hola_mundo (nombre in varchar2)
as
begin
--aqui va la logica

dbms output.put.line ('HOLA COMO ESTAS' || nombre);
end;
/

begin
hola_mundo ('Azael Fann')
end;
/

declare
valor number;
begin
suma(12, 8, valor);
end;
/
