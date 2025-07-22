
create database mpcupcakes;

use mpcupcakes;

create table user (
id int auto_increment primary key,
nombre varchar(25) not null,
edad int,
correo varchar (30) not null, 
fecha_nacimiento date
);

insert into user (nombre, edad, correo, fecha_nacimiento)
values ('Miguel Sanchez', 17, 'miguel.sanchez@gmail.com', (date'2007-09-08')
);
insert into user (nombre, edad, correo, fecha_nacimiento)
values ('Jhoan vertel', 17, 'joahn.vertel@gmail.com', (date'2007-12-09')
);
insert into user (nombre, edad, correo, fecha_nacimiento)
values ('Alejandra Carvajal', 17, 'alejandra@gmail.com', (date'2007-05-14')
);
insert into user (nombre, edad, correo, fecha_nacimiento)
values ('Lola', 18, 'lola@gmail.com', (date'2007-06-18')
);
insert into user (nombre, edad, correo, fecha_nacimiento)
values ('Rosa', 50, 'rosa@gmail.com', (date'1945-09-08')
);
insert into user (nombre, edad, correo, fecha_nacimiento)

values ('paula', 20, 'paula@gmail.com', (date'2002-08-04')
);
values ('Sofia Ortega', 17, 'ortegaosofia@gmail.com', (date'2007-08-15')
);



/*
update user set nombre = 'Lola' where id = 2;
delete from user where id = 2;

delete from user where id = 5;

select * from user

-- Listar filas de la tabla usuario
delimiter $
create procedure pa_listar_usuarios()
 begin
   select * from user
 end
 delimiter ;
 
 drop procedure pa_listar_usuarios;
 
 call pa_listar_usuarios();
 
-- actualizar filas de la tabla de usuario

delimiter $
create procedure pa_actualizar_usuarios(
	in _id int,
    in _nombre varchar(25),
	in _edad int,
	in _correo varchar(30),
	in _fecha_nacimiento date
)
 begin
   update user set nombre = _nombre, edad = _edad, correo = _correo, fecha_nacimiento = _fecha_nacimiento
   where id = _id; 
 end $
 delimiter ;
 
 call pa_actualizar_usuarios(4,'Alejandra Rojas', 35, 'alejandra.rojas@gmail.com', (date '2025-04-16'));
 
 select * from user;
 
 -- Insertar filas en la tabla usuarios
 
  delimiter $
create procedure pa_insertar_usuarios(
     IN _nombre varchar(25),
	 IN _edad int,
	 IN _correo varchar(30),
	 IN _fecha_nacimiento date
)
 begin
   INSERT INTO user (nombre, edad, correo, fecha_nacimiento)
   values (_nombre, _edad, _correo, _fecha_nacimiento);
 end $
delimiter $ ;

call pa_insertar_usuarios('sofia ortega', 18, 'sofia.sofia@gmail.com', (date '2012-03-08'));
 
 -- Borrar filas de la tabla usuario
delimiter $
create procedure pa_borrar_usuarios(
     IN _id int
)
 begin
   DELETE FROM user WHERE id = _id;
 end $
delimiter ;
CALL pa_borrar_usuarios (3);
 
  -- Borrar filas de la tabla usuario
delimiter $
create procedure pa_borrar_usuarios(
     IN _id int
)
 begin
   DELETE FROM user WHERE id = _id;
 end $
delimiter ;

 -- Borrar filas de la tabla usuario
delimiter $
create procedure pa_borrar_usuarios(
     IN _id int
)
 begin
   DELETE FROM user WHERE id = _id;
 end $
delimiter ;
CALL pa_borrar_usuarios (9);

*/

