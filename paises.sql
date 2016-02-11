create table paises (id_pais varchar2(4),
                    nombre varchar2(100),
                    habitantes integer,
                    idioma varchar(40),
                    constraint pk_id_pais primary key(id_pais)
                    );
                    
insert into paises values('mx','Mexico',90000000,'español');

insert into paises values('usa','Estados Unidos',12000000000,'ingles');

insert into paises values('jpa','Japon',80000000,'japones');

insert into paises values('ger','Alemania',1400000000,'Aleman');

insert into paises values('bra','Brasil',230000000,'Portugues');

SELECT * FROM paises;

set serveroutput on;

declare
  cursor cur_paises is select *from paises;
  total_hab integer;
  
begin
total_hab:=0;
for fila in cur_paises loop
total_hab:=total_hab+fila.habitantes;
dbms_output.put_line('nombre: '||fila.nombre||' habitantes: '||fila.habitantes);
end loop;
dbms_output.put_line('Habitantes de todos los paises: '||total_hab);
end;
/

