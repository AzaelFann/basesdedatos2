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
