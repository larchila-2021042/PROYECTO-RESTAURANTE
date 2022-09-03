DROP DATABASE db_control_estudiante_in5bm;
CREATE DATABASE db_control_estudiante_in5bm;
USE db_control_estudiante_in5bm;

DROP TABLE IF EXISTS estudiantes;
CREATE TABLE IF NOT EXISTS estudiantes(
	id INT AUTO_INCREMENT NOT NULL,
	nombre VARCHAR(45),
    apellido VARCHAR(45),
    email VARCHAR (60),
    telefono VARCHAR(8),
    saldo DECIMAL(6,2),
	CONSTRAINT pk_estudiante
		PRIMARY KEY (id)
);

INSERT INTO estudiantes (nombre, apellido, email, telefono, saldo) VALUES("Juan Pablo","Arreola Gonzalez","jarreola@gmail.com","43216783",'3500.00');

INSERT INTO estudiantes (nombre, apellido, email, telefono, saldo) VALUES("Leslie Carolina"," Ajin Gonzalez","lajin@gmail.com","45633265",'1500.00');

INSERT INTO estudiantes (nombre, apellido, email, telefono, saldo) VALUES("Pedro Antonio","Garcia Mejia","pgarcia@gmail.com","32457643",'500.00');

INSERT INTO estudiantes (nombre, apellido, email, telefono, saldo) VALUES("Fernando Mateo","Rosales Romn","frosales@gmail.com","56787645",'900.00');

INSERT INTO estudiantes (nombre, apellido, email, telefono, saldo) VALUES("Diego Pablo","Zambrono Nunez","dnunez@gmail.com","98346365",'300.00');

INSERT INTO estudiantes (nombre, apellido, email, telefono, saldo) VALUES("Ricardo Andres","Pedroza Alvarez","rpedroza@gmail.com","69346845",'1300.00');

INSERT INTO estudiantes (nombre, apellido, email, telefono, saldo) VALUES("Samuel Wwilhem","Gotha Lopez","sgotha@gmail.com","56832654",'1200.00');

INSERT INTO estudiantes (nombre, apellido, email, telefono, saldo) VALUES("Mynor Alexander","Lopez Vega","mvega@gmail.com","32764386",'2400.00');

INSERT INTO estudiantes (nombre, apellido, email, telefono, saldo) VALUES("Luis Guillermo","Arauco Tejada","larauco@gmai.com","89764537",'3200.00');

INSERT INTO estudiantes (nombre, apellido, email, telefono, saldo) VALUES("Miguel Estevan","Salvatierra Ramirez","msalvatierra@gmail.com","21369645",'100.00');