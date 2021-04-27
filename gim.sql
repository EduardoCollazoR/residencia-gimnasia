-- Create database gym;
-- use gym;

create table Rol
(
IdRol int(11) primary key not null ,
descripcion varchar(15) default null
);



create table Estudio
(
IdEstudio int(11) primary key not null auto_increment,
Descripcion varchar(30)
);
create table Enfermedades 
(
IdEnfermedad int(11) primary key not null auto_increment,
Descripcion varchar(30)
);
create table HistorialMe
(
IdHistorialM int(11)  primary key not null auto_increment,
Estatura varchar(3) default null,
Peso varchar(3) default null,
Sexo varchar(5) default null,
Cirugias varchar(20) default null,
 IdEstudio int(11),
 foreign key (`IdEstudio`) REFERENCES `Estudio` (`IdEstudio`),
 IdEnfermedad int(11) ,
 foreign key (`IdEnfermedad`) REFERENCES `Enfermedades` (`IdEnfermedad`)
);
create table Lesion
(
IdLesion int(11) primary key not null auto_increment,
Nombre varchar(30),
FechaLesion date default null,
Rehabilitacion varchar(30) default null,
TiempoRehabili varchar(10) default null,
IdHistorialM int(11),
 FOREIGN KEY   (`IdHistorialM`) REFERENCES `HistorialMe` (`IdHistorialM`)
);
create table Usuario
(
IdUsuario int(11)  primary key not null AUTO_INCREMENT,
Nombre varchar(15) default null,
ApellidoP varchar(10) default null,
ApellidoM varchar(10) default null,
FechaNacimiento date default null,
Email varchar(31) unique default null,
Clave char(60) default null,
Ciudad varchar(20) default null,
Asociacion varchar(30) ,
Direccion varchar(50) default null,
IdRol int(11) ,
FOREIGN KEY  (`IdRol`) REFERENCES Rol (`IdRol`),
 IdHistorialM int(11),
 foreign key (`IdHistorialM`) REFERENCES `HistorialMe` (`IdHistorialM`)
);
create table Tutor
(
IdTutor int(11)  primary key not null auto_increment,
Nombre varchar(15) default null,
ApelidoP varchar (10) default null,
ApellidoM varchar(10) default null,
FechaNacimiento date default null,
Email varchar(31) default null,
Telefono int(10),
Parentesco varchar(20),
IdUsuario int(11),
foreign key(`IdUsuario`) REFERENCES Usuario (`IdUsuario`)
);