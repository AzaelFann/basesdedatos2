create table registro(
id_reg integer,
nombre varchar2(40),
mail varchar2(40),
edad integer,
constraint pk_id_reg primary key (id_reg)
);

create table registro_mayores(
id_reg_may integer,
nombre varchar2(40),
mail varchar2(40),
edad integer,
constraint pk_id_reg_may primary key (id_reg_may));

create table registro_menores(
id_reg_men integer,
nombre varchar2(40),
mail varchar2(40),
edad integer,
constraint pk_id_reg_men primary key (id_reg_men));

set serveroutput on;

create or replace trigger respaldo_registro after insert into registro
for each row
begin
if (new.edad) >= 18 then
insert into registro_mayores values (:new.id_reg, :new.nombre,
:new.mail, :new.edad);
else
insert into registro_menores values (:new.id_reg, :new.nombre,
:new.mail, :new.edad);
end if;
end;
/

