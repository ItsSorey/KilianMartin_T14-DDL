create database IF NOT EXISTS Investigadores;
use Investigadores;

create table IF NOT EXISTS Facultad (idFacultad INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
Nombre nvarchar(100));

create table IF NOT EXISTS Equipos (NumSerie char(4) PRIMARY KEY NOT NULL,
Facultad int,
Nombre nvarchar(100),
FOREIGN KEY (Facultad) REFERENCES Facultad(idFacultad));

create table IF NOT EXISTS Investigadores (DNI varchar(8) PRIMARY KEY NOT NULL,
NomApels nvarchar(255),
Facultad int,
FOREIGN KEY (Facultad) REFERENCES Facultad(idFacultad));

create table IF NOT EXISTS Reserva (
DNI varchar(8) NOT NULL, 
NumSerie char(4) NOT NULL,
Comiento datetime,
Fin datetime,
PRIMARY KEY (DNI,NumSerie),
FOREIGN KEY (DNI) REFERENCES Investigadores(DNI),
FOREIGN KEY (NumSerie) REFERENCES Equipos(NumSerie));
