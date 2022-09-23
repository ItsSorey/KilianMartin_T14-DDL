create database IF NOT EXISTS biblioteca;
use biblioteca;

create table IF NOT EXISTS Tema (ClaveTema SMALLINT AUTO_INCREMENT PRIMARY KEY NOT NULL,
Nombre varchar(40));

create table IF NOT EXISTS Autor (ClaveAutor INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
Nombre varchar(60));

create table IF NOT EXISTS Editorial (ClaveEditorial SMALLINT AUTO_INCREMENT PRIMARY KEY NOT NULL,
Nombre varchar(60),
Dirección varchar(60),
Teléfono varchar(15));

create table IF NOT EXISTS Libro (ClaveLibro INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
Título varchar(60),
Idioma varchar(15),
Formato varchar(15),
ClaveEditioral smallint,
FOREIGN KEY (ClaveEditioral) REFERENCES Editorial(ClaveEditorial));

create table IF NOT EXISTS Ejemplar (ClaveEjemplar INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
ClaveLibro int,
NúmeroOrden smallint,
Edición smallint,
Ubicación varchar(15),
Categoría char,
FOREIGN KEY (ClaveLibro) REFERENCES Libro(ClaveLibro));

create table IF NOT EXISTS Socio (ClaveSocio INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
Nombre varchar(60),
Dirección varchar(60),
Teléfono varchar(15),
Categoría char);

create table IF NOT EXISTS Prestamo (
ClaveSocio int,
ClaveEjemplar int,
NumeroOrden int,
Fecha_prestamo date,
Fecha_evolucion date,
Notas blob,
ClaveLibro int,
FOREIGN KEY (ClaveLibro) REFERENCES Libro(ClaveLibro),
FOREIGN KEY (ClaveEjemplar) REFERENCES Ejemplar(ClaveEjemplar));

create table IF NOT EXISTS Trata_sobre (
ClaveLibro int,
ClaveTema smallint,
FOREIGN KEY (ClaveLibro) REFERENCES Libro(ClaveLibro),
FOREIGN KEY (ClaveTema) REFERENCES Tema(ClaveTema));

create table IF NOT EXISTS Escrito_por (
ClaveLibro int,
ClaveAutor int,
FOREIGN KEY (ClaveLibro) REFERENCES Libro(ClaveLibro),
FOREIGN KEY (ClaveAutor) REFERENCES Autor(ClaveAutor));