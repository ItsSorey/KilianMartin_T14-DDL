create database IF NOT EXISTS estacion;
use estacion;

create table IF NOT EXISTS estacion (Identificador INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
Latitud double,
Longitud double,
Altitud double);

create table IF NOT EXISTS muestra (identificadorEstacion INT NOT NULL,
Fecha date,
TemperaturaMinima int,
TemperaturaMaxima int,
Precipitaciones int,
HumedadMinima int,
HumedadMaxima int,
VelocidadVientoMinima int,
VelocidadVientoMaxima int,
FOREIGN KEY (identificadorEstacion) REFERENCES estacion(identificador) ON DELETE CASCADE ON UPDATE CASCADE);