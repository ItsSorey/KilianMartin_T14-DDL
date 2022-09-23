create database IF NOT EXISTS Informática;
use Informática;

create table IF NOT EXISTS Fabricantes (idFabricante INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
Nombre nvarchar(100),
Precio int);

create table IF NOT EXISTS Articulos (idArticulo INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
Nombre nvarchar(100),
Precio int,
Fabricante int,
FOREIGN KEY (Fabricante) REFERENCES Fabricantes(idFabricante));