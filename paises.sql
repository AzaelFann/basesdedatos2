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

CREATE TABLE estudiante(id_estudiante integer,
                        id_pais varchar(4),
                        carrera varchar(30),
                        edad integer,
                        constraint pk_id_estudiante primary key(id_estudiante),
                        constraint fk_id_pais foreign key(id_pais) references paises(id_pais)
  );
  
  insert INTO estudiante VALUES(1,'mx','Sistemas Computacionales',25);
  insert INTO estudiante VALUES(2,'usa','Telecomunicaciones',20);
  insert INTO estudiante VALUES(3,'mx','Mecatronica',22);
  insert INTO estudiante VALUES(4,'jpa','Robotica',24);
  insert INTO estudiante VALUES(5,'mx','Ambiental',21);
  insert INTO estudiante VALUES(6,'ger','Quimica',27);
  insert INTO estudiante VALUES(7,'bra','Comercial',23);
  
  select * from estudiante;
  
  begin
  dbms_output.put_line('Nombre del Pais','Habitantes','Carrera');
  for fil in 
  end;
  /
  
