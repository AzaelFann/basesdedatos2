CREATE TABLE EMPLEADO_VENTAS (
id_cliente NUMBER,
nombre_cliente VARCHAR2 (100),
SUELDO_BASE NUMBER,
CONSTRAINT PK_ID_CLIENTE PRIMARY KEY (ID_CLIENTE));

insert into EMPLEADO_VENTAS values(1,'Juan',5200);
insert into EMPLEADO_VENTAS values(2,'Petra',4200);
insert into EMPLEADO_VENTAS values(3,'Panfilo',6400);
insert into EMPLEADO_VENTAS values(4,'Anacleta',5700);
insert into EMPLEADO_VENTAS values(5,'Chana',4600);


select * from EMPLEADO_VENTAS;

CREATE TABLE SUCURSAL(
ID_SUCURSAL NUMBER,
ID_CLIENTE NUMBER,
NOMBRE VARCHAR2(120),
TELEFONO VARCHAR2(40),
VENTA NUMBER,
CONSTRAINT PK_ID_SUCURSAL PRIMARY KEY (ID_SUCURSAL),
CONSTRAINT FK_ID_CLIENTE1 FOREIGN KEY (ID_CLIENTE) REFERENCES EMPLEADO_VENTAS (ID_CLIENTE));

INSERT INTO SUCURSAL VALUES(1,1,'LAS AMERICAS', '67 55 66 77',4000);
INSERT INTO SUCURSAL VALUES(2,1,'PLAZA ARAGON', '67 55 66 77',4000);
INSERT INTO SUCURSAL VALUES(3,1,'PLAZA COYOACAN', '67 55 66 77',4000);
INSERT INTO SUCURSAL VALUES(4,1,'PERISUR', '67 55 66 77',4000);
INSERT INTO SUCURSAL VALUES(5,2,'LAS AMERICAS', '67 55 66 77',4000);
INSERT INTO SUCURSAL VALUES(6,2,'PERISUR', '67 55 66 77',4000);
INSERT INTO SUCURSAL VALUES(7,3,'PLAZA ARAGON', '67 55 66 77',4000);
INSERT INTO SUCURSAL VALUES(8,4,'PLAZA COYOACAN', '67 55 66 77',4000);
INSERT INTO SUCURSAL VALUES(9,4,'LAS AMERICAS', '67 55 66 77',4000);
INSERT INTO SUCURSAL VALUES(10,5,'LAS AMERICAS', '67 55 66 77',4000);
INSERT INTO SUCURSAL VALUES(11,5,'PERISUR', '67 55 66 77',4000);
INSERT INTO SUCURSAL VALUES(12,5,'PERISUR', '67 55 66 77',4000);
INSERT INTO SUCURSAL VALUES(13,5,'PLAZA COYOACAN', '67 55 66 77',4000);

SELECT * FROM SUCURSAL;

set serveroutput on:

declare
cursor cur_emp is select * from empleado_ventas;
cursor cur_suc is select * from sucursal;
begin
for emp in cur_emp loop
  for suc in cur_suc loop
  if emp.id_cliente = suc.id_cliente then
dbms_output.put_line('nombre: '||emp.nombre_cliente||' sucursal: '||suc.nombre);
  end if;
  end loop;
end loop;
end;
/

SELECT EMPLEADO_VENTAS.ID_CLIENTE, EMPLEADO_VENTAS.NOMBRE_CLIENTE, SUCURSAL.NOMBRE 
FROM EMPLEADO_VENTAS JOIN SUCURSAL ON EMPLEADO_VENTAS.ID_CLIENTE=SUCURSAL.ID_CLIENTE;











