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

