create table xxx
(
id_xxx integer,
edad integer
);

set serveroutput on;

create or replace trigger xxx_mayor before insert on xxx for each row
begin
if :new.edad < 18 then
raise_application_error(-20001, 
'NO MAMES CHAIRO VETE A OTRO LADO JAJAJA SALUDOS LOL XD PUM');
end if;
end;
/

INSERT INTO xxx VALUES (1,20);

select * from xxx;


--generar la sig tabla
--nominaxxx
--id_nomina_xxx integer
--login varchar2(100)
--saldo integer

create table nominaxxx
(
id_nomina_xxx integer,
login varchar2(100),
saldo integer
);

insert into nominaxxx values (1,'yo',20000);

--crear un trigger que personalize la update, de tal manera que 
--sume al saldo anterior al nuevo saldo asignado al update


update nominaxxx set saldo= 20000 where id_nomina_xxx =1;

create or replace trigger act_saldo before update on nominaxxx for each row
begin
:new.saldo:=new.saldo+:old.saldo;
end;
/

update nominaxxx set saldo= 800 where id_nomina_xxx =1;

select * from nominaxxx;
