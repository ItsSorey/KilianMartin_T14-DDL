create database IF NOT EXISTS Empleados;
use Empleados;

create table IF NOT EXISTS Departamentos (idDepartamento INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
Nombre varchar(100),
Presupuesto int);

create table IF NOT EXISTS Empleados (DNI varchar(8) PRIMARY KEY NOT NULL,
Nombre nvarchar(100),
Apellidos nvarchar(255),
Departamento int,
FOREIGN KEY (Departamento) REFERENCES Departamentos(idDepartamento));