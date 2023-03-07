create database desafio;
show databases;
use desafio;

CREATE TABLE Usuarios (
   id INT PRIMARY KEY AUTO_INCREMENT,
   usuario VARCHAR(20),
   nombre VARCHAR(20),
   sexo VARCHAR(1),
   nivel TINYINT,
   email VARCHAR(50),
   telefono VARCHAR(20),
   marca VARCHAR(20),
   compania VARCHAR(20),
   saldo FLOAT,
   activo BOOLEAN
);

INSERT INTO Usuarios 
VALUES 
('1','BRE2271','BRENDA','M','2','brenda@live.com','655-330-5736','SAMSUNG','IUSACELL','100','1'),
('2','OSC4677','OSCAR','H','3','oscar@gmail.com','655-143-4181','LG','TELCEL','0','1'),
('3','JOS7086','JOSE','H','3','francisco@gmail.com','655-143-3922','NOKIA','MOVISTAR','150','1'),
('4','LUI6115','LUIS','H','0','enrique@outlook.com','655-137-1279','SAMSUNG','TELCEL','50','1'),
('5','LUI7072','LUIS','H','1','luis@hotmail.com','655-100-8260','NOKIA','IUSACELL','50','0'),
('6','DAN2832','DANIEL','H','0','daniel@outlook.com','655-145-2586','SONY','UNEFON','100','1'),
('7','JAQ5351','JAQUELINE','M','0','jaqueline@outlook.com','655-330-5514','BLACKBERRY','AXEL','0','1'),
('8','ROM6520','ROMAN','H','2','roman@gmail.com','655-330-3263','LG','IUSACELL','50','1'),
('9','BLA9739','BLAS','H','0','blas@hotmail.com','655-330-3871','LG','UNEFON','100','1'),
('10','JES4752','JESSICA','M','1','jessica@hotmail.com','655-143-6861','SAMSUNG','TELCEL','500','1'),
('11','DIA6570','DIANA','M','1','diana@live.com','655-143-3952','SONY','UNEFON','100','0'),
('12','RIC8283','RICARDO','H','2','ricardo@hotmail.com','655-145-6049','MOTOROLA','IUSACELL','150','1'),
('13','VAL6882','VALENTINA','M','0','valentina@live.com','655-137-4253','BLACKBERRY','AT&T','50','0'),
('14','BRE8106','BRENDA','M','3','brenda2@gmail.com','655-100-1351','MOTOROLA','NEXTEL','150','1'),
('15','LUC4982','LUCIA','M','3','lucia@gmail.com','655-145-4992','BLACKBERRY','IUSACELL','0','1'),
('16','JUA2337','JUAN','H','0','juan@outlook.com','655-100-6517','SAMSUNG','AXEL','0','0'),
('17','ELP2984','ELPIDIO','H','1','elpidio@outlook.com','655-145-9938','MOTOROLA','MOVISTAR','500','1'),
('18','JES9640','JESSICA','M','3','jessica2@live.com','655-330-5143','SONY','IUSACELL','200','1'),
('19','LET4015','LETICIA','M','2','leticia@yahoo.com','655-143-4019','BLACKBERRY','UNEFON','100','1'),
('20','LUI1076','LUIS','H','3','luis2@live.com','655-100-5085','SONY','UNEFON','150','1'),
('21','HUG5441','HUGO','H','2','hugo@live.com','655-137-3935','MOTOROLA','AT&T','500','1');

SELECT * FROM Usuarios;

-- Listar los nombres de los usuarios
SELECT nombre FROM usuarios;
-- Calcular el saldo máximo de los usuarios de sexo “Mujer”
SELECT MAX(saldo) FROM usuarios WHERE sexo='M';
-- Listar nombre y teléfono de los usuarios con teléfono NOKIA, BLACKBERRY o SONY
SELECT nombre, telefono FROM usuarios WHERE marca='NOKIA' OR marca='BLACKBERRY' OR marca='SONY';
-- Contar los usuarios sin saldo o inactivos
SELECT COUNT(id) FROM usuarios WHERE saldo=0 OR activo=0;
-- Listar el login de los usuarios con nivel 1, 2 o 3 
SELECT usuario FROM usuarios WHERE nivel>=1 AND nivel<=3;
-- Listar los números de teléfono con saldo menor o igual a 300
SELECT telefono FROM usuarios WHERE saldo<=300;
-- Calcular la suma de los saldos de los usuarios de la compañía telefónica NEXTEL
SELECT SUM(saldo) FROM usuarios WHERE compania='NEXTEL';
-- Contar el número de usuarios por compañía telefónica
SELECT compania, COUNT(id) FROM usuarios GROUP BY compania;
-- Contar el número de usuarios por nivel
SELECT nivel, COUNT(id) FROM usuarios GROUP BY nivel;
-- Listar el login de los usuarios con nivel 2
SELECT usuario FROM usuarios WHERE nivel=2;
-- Mostrar el email de los usuarios que usan gmail
SELECT email FROM usuarios WHERE email LIKE '%gmail%';
-- Listar nombre y teléfono de los usuarios con teléfono LG, SAMSUNG o MOTOROLA
SELECT nombre, telefono FROM usuarios WHERE marca='LG' OR marca='SAMSUNG' OR marca='MOTOROLA';
-- Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca LG o SAMSUNG
SELECT nombre, telefono FROM usuarios WHERE NOT marca='LG' AND NOT marca='SAMSUNG';
-- Listar el login y teléfono de los usuarios con compañía telefónica IUSACELL
SELECT usuario, telefono FROM usuarios WHERE compania='IUSACELL';
-- Listar el login y teléfono de los usuarios con compañía telefónica que no sea TELCEL
SELECT usuario, telefono FROM usuarios WHERE NOT compania='TELCEL';
-- Calcular el saldo promedio de los usuarios que tienen teléfono marca NOKIA
SELECT AVG(saldo) FROM usuarios WHERE marca='NOKIA';
-- Listar el login y teléfono de los usuarios con compañía telefónica IUSACELL o AXEL
SELECT usuario, telefono FROM usuarios WHERE compania='IUSACELL' OR compania='AXEL';
-- Mostrar el email de los usuarios que no usan yahoo
SELECT email FROM usuarios WHERE NOT email LIKE '%yahoo%'; 
-- Listar el login y teléfono de los usuarios con compañía telefónica que no sea TELCEL o IUSACELL
SELECT usuario, telefono FROM usuarios WHERE NOT compania='TELCEL' AND NOT compania='IUSACELL';
-- Listar el login y teléfono de los usuarios con compañía telefónica UNEFON
SELECT usuario, telefono FROM usuarios WHERE compania='UNEFON';
-- Listar las diferentes marcas de celular en orden alfabético descendentemente
SELECT marca FROM usuarios GROUP BY marca ORDER BY marca DESC;
-- Listar las diferentes compañías en orden alfabético aleatorio
SELECT marca FROM usuarios GROUP BY marca ORDER BY RAND();
-- Listar el login de los usuarios con nivel 0 o 2
SELECT usuario FROM usuarios WHERE nivel=0 OR nivel=2;
-- Calcular el saldo promedio de los usuarios que tienen teléfono marca LG
SELECT AVG(saldo) FROM usuarios WHERE marca='LG';
-- Listar el login de los usuarios con nivel 1 o 3
SELECT usuario FROM usuarios WHERE nivel=1 OR nivel=3;
-- Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca BLACKBERRY
SELECT nombre, telefono FROM usuarios WHERE NOT marca='BLACKBERRY';
-- Listar el login de los usuarios con nivel 3
SELECT usuario FROM usuarios WHERE nivel=3;
-- Listar el login de los usuarios con nivel 0
SELECT usuario FROM usuarios WHERE nivel=0;
-- Listar el login de los usuarios con nivel 1
SELECT usuario FROM usuarios WHERE nivel=1;
-- Contar el número de usuarios por sexo
SELECT sexo, COUNT(id) FROM usuarios GROUP BY sexo; 
-- Listar el login y teléfono de los usuarios con compañía telefónica AT&T
SELECT usuario, telefono FROM usuarios WHERE compania='AT&T';
-- Listar las diferentes compañías en orden alfabético descendentemente
SELECT compania FROM usuarios GROUP BY compania ORDER BY compania DESC;
-- Listar el login de los usuarios inactivos
SELECT usuario FROM usuarios WHERE activo=0;
-- Listar los números de teléfono sin saldo
SELECT telefono FROM usuarios WHERE saldo=0;
-- Calcular el saldo mínimo de los usuarios de sexo “Hombre”
SELECT MIN(saldo) FROM usuarios WHERE sexo='H';
-- Listar los números de teléfono con saldo mayor a 300
SELECT telefono FROM usuarios WHERE saldo>300;
-- Contar el número de usuarios por marca de teléfono
SELECT marca, COUNT(id) numero_de_usuarios FROM usuarios GROUP BY marca;
-- Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca LG
SELECT nombre, telefono FROM usuarios WHERE NOT marca='LG';
-- Listar las diferentes compañías en orden alfabético ascendentemente
SELECT compania FROM usuarios GROUP BY compania ORDER BY compania ASC;
-- Calcular la suma de los saldos de los usuarios de la compañía telefónica UNEFON
SELECT SUM(saldo) FROM usuarios WHERE compania='UNEFON';
-- Mostrar el email de los usuarios que usan hotmail
SELECT email FROM usuarios WHERE email LIKE'%hotmail%';
-- Listar los nombres de los usuarios sin saldo o inactivos
SELECT nombre FROM usuarios WHERE saldo=0 OR activo=0;
-- Listar el login y teléfono de los usuarios con compañía telefónica IUSACELL o TELCEL
SELECT usuario, telefono FROM usuarios WHERE compania='IUSACELL' OR compania='TELCEL';
-- Listar las diferentes marcas de celular en orden alfabético ascendentemente
SELECT marca FROM usuarios GROUP BY marca ORDER BY marca ASC;
-- Listar las diferentes marcas de celular en orden alfabético aleatorio
SELECT marca FROM usuarios GROUP BY marca ORDER BY RAND();
-- Listar el login y teléfono de los usuarios con compañía telefónica IUSACELL o UNEFON
SELECT usuario, telefono FROM usuarios WHERE compania='IUSACELL' OR compania='UNEFON';
-- Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca MOTOROLA o NOKIA
SELECT nombre, telefono FROM usuarios WHERE NOT marca='MOTOROLA' AND NOT marca='NOKIA';
-- Calcular la suma de los saldos de los usuarios de la compañía telefónica TELCEL
SELECT SUM(saldo) FROM usuarios WHERE compania='TELCEL';


-- ---------------------------------------------------------------------------------------------------------------------------------------------
create table clientes (
  codigo int unsigned auto_increment,
  nombre varchar(30) not null,
  domicilio varchar(30),
  ciudad varchar(20),
  codigoProvincia tinyint unsigned,
  telefono varchar(11),
  primary key(codigo)
 );
 
 create table provincias(
  codigo tinyint unsigned auto_increment,
  nombre varchar(20),
  primary key (codigo)
 );
 
 insert into provincias (nombre) values('Cordoba');
 insert into provincias (nombre) values('Santa Fe');
 insert into provincias (nombre) values('Corrientes');
 insert into provincias (nombre) values('Misiones');
 insert into provincias (nombre) values('Salta');
 insert into provincias (nombre) values('Buenos Aires');
 insert into provincias (nombre) values('Neuquen');

 insert into clientes (nombre,domicilio,ciudad,codigoProvincia,telefono)
  values ('Lopez Marcos', 'Colon 111', 'Córdoba',1,'null');
 insert into clientes (nombre,domicilio,ciudad,codigoProvincia,telefono)
  values ('Perez Ana', 'San Martin 222', 'Cruz del Eje',1,'4578585');
 insert into clientes (nombre,domicilio,ciudad,codigoProvincia,telefono)
  values ('Garcia Juan', 'Rivadavia 333', 'Villa Maria',1,'4578445');
 insert into clientes (nombre,domicilio,ciudad,codigoProvincia,telefono)
  values ('Perez Luis', 'Sarmiento 444', 'Rosario',2,null);
 insert into clientes (nombre,domicilio,ciudad,codigoProvincia,telefono)
  values ('Pereyra Lucas', 'San Martin 555', 'Cruz del Eje',1,'4253685');
 insert into clientes (nombre,domicilio,ciudad,codigoProvincia,telefono)
  values ('Gomez Ines', 'San Martin 666', 'Santa Fe',2,'0345252525');
 insert into clientes (nombre,domicilio,ciudad,codigoProvincia,telefono)
  values ('Torres Fabiola', 'Alem 777', 'Villa del Rosario',1,'4554455');
 insert into clientes (nombre,domicilio,ciudad,codigoProvincia,telefono)
  values ('Lopez Carlos', 'Irigoyen 888', 'Cruz del Eje',1,null);
 insert into clientes (nombre,domicilio,ciudad,codigoProvincia,telefono)
  values ('Ramos Betina', 'San Martin 999', 'Cordoba',1,'4223366');
 insert into clientes (nombre,domicilio,ciudad,codigoProvincia,telefono)
  values ('Lopez Lucas', 'San Martin 1010', 'Posadas',4,'0457858745');

select * from clientes;

select * from provincias;

-- 1.	¿Qué provincias no tenemos clientes?
SELECT p.nombre FROM clientes c RIGHT JOIN provincias p ON c.codigoProvincia=p.codigo WHERE c.codigoProvincia is NULL; 

-- 2.	¿Qué provincias tienen clientes? Pero sin repetir el nombre de la provincia. 
SELECT DISTINCT p.nombre FROM clientes c JOIN provincias p on c.codigoProvincia=p.codigo;

