create database IF NOT EXISTS Piezas_proveedores;
use Piezas_proveedores;

create table IF NOT EXISTS Piezas (idPieza INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
Nombre nvarchar(100));

create table IF NOT EXISTS Proveedores (idPorveedor char(4) PRIMARY KEY NOT NULL,
Nombre nvarchar(100));

create table IF NOT EXISTS Suministra (
idPieza int, 
idPorveedor char(4),
Precio int,
PRIMARY KEY (idPieza,idPorveedor),
FOREIGN KEY (idPieza) REFERENCES Piezas(idPieza),
FOREIGN KEY (idPorveedor) REFERENCES Proveedores(idPorveedor));