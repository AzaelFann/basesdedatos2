--crearemos una tabla muy simple para probar el poder de ps/sql
create table dance(id_dance integer, nombre varchar2(40), edad integer);

--prendemos el servidor en modo de desarrollador 
set serveroutput on;

--vamos a empezar con un bloque pl sql

declare
--aqui se declaran las variables a usar
edad integer;
years integer;

begin
--a qui va la logica de tu programita
years:=26;
edad:=years*365;

dbms_output.put_line('tu edad en dias'||edad);
end;
/

--crear un bloque pl/sql que genere 200,000 registros 
--en secuencia ascendente en la tabla dance

begin
for I in 1..200000 loop
insert into dance values (I,'Azael',26);
end loop;
end;
/

select * from dance;

create table pelicula(id_pelicula integer,
             titulo varchar2(100),
             sinopsis varchar2(500),
             clasificacion varchar(5),
             constraint pk_id_peliculas primary key(id_pelicula)
             );
describe pelicula;

create table horario(
  id_horario integer,
  id_pelicula integer,
  horario varchar(8),
  constraint pk_id_horario primary key(id_horario),
  constraint fk1_id_pelicula foreign key(id_pelicula)references pelicula(id_pelicula)
                     );
