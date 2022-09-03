DROP DATABASE IF EXISTS bd_restaurante_in5bm_grupo5;
CREATE DATABASE IF NOT EXISTS bd_restaurante_in5bm_grupo5;
USE bd_restaurante_in5bm_grupo5;

/* Base de datos grupo 1 
	Integrantes:
		Michael Steven Salvatierra Ramirez 2021150
		Jose Mauricio Villeda Morales 2021075
		Octavio Alejandro Corzo Reyes 2021084
		Luis Fernando Archila Valdez 2021042
		Jose Pablo Fabian Herrera Garcia 2018183
    Catedratico: 
		Lic. Jorge Luis Perez Canto
    Grado:
		5to Perito en Informatica 
	Seccion: 
		IN5BM
	Grupo presencial: 2
*/

DROP TABLE IF EXISTS persona;
CREATE TABLE IF NOT EXISTS persona(
	id INT NOT NULL AUTO_INCREMENT,
    nombre1 VARCHAR(30) NOT NULL,
    nombre2 VARCHAR(30),
    nombre3 VARCHAR(30),
    apellido1 VARCHAR(30) NOT NULL,
    apellido2 VARCHAR(30),
    telefono VARCHAR(8),
    direccion VARCHAR(100) NOT NULL,
    ciudad VARCHAR(50) NOT NULL,
    codigo_postal VARCHAR(15) NOT NULL,
    estado VARCHAR(20) NOT NULL,
    pais VARCHAR(50) NOT NULL,
    CONSTRAINT pk_persona
		PRIMARY KEY (id)
);

DROP TABLE IF EXISTS rol;
CREATE TABLE IF NOT EXISTS rol(
	id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    CONSTRAINT pk_rol
		PRIMARY KEY (id)
);

DROP TABLE IF EXISTS usuario;
CREATE TABLE IF NOT EXISTS usuario(
    correo VARCHAR(40) NOT NULL,
    password BINARY(20) NOT NULL,
    rol_id INT NOT NULL,
    persona_id INT NOT NULL,
    CONSTRAINT pk_usuario
		PRIMARY KEY (correo),
	CONSTRAINT fk_rol_id
		FOREIGN KEY (rol_id) REFERENCES rol(id)
		ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT fk_persona_id
		FOREIGN KEY (persona_id) REFERENCES persona(id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

DROP TABLE IF EXISTS sede;
CREATE TABLE IF NOT EXISTS sede(
	id INT NOT NULL AUTO_INCREMENT,
    nombre_agencia VARCHAR(50) NOT NULL,
    NIT VARCHAR(50) NOT NULL,
    direccion VARCHAR(50) NOT NULL,
    ruta_imagen VARCHAR(255),
    CONSTRAINT pk_sede
		PRIMARY KEY (id)
);

DROP TABLE IF EXISTS order_status;
CREATE TABLE IF NOT EXISTS order_status(
	id INT NOT NULL AUTO_INCREMENT,
    status VARCHAR(50) NOT NULL,
    CONSTRAINT pk_order_status
		PRIMARY KEY (id)
);

DROP TABLE IF EXISTS tarjeta;
CREATE TABLE IF NOT EXISTS tarjeta (
    numero_de_tarjeta VARCHAR(30) NOT NULL,
    nombre_en_tarjeta VARCHAR(50) NOT NULL,
    fecha_de_vencimiento DATE NOT NULL,
    tipo_de_tarjeta VARCHAR(50) NOT NULL,
    CONSTRAINT pk_tarjeta_de_credito PRIMARY KEY (numero_de_tarjeta)
);

DROP TABLE IF EXISTS postre;
CREATE TABLE IF NOT EXISTS postre(
	id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    descripcion VARCHAR(50) ,
    precio FLOAT NOT NULL,
    descuento FLOAT NOT NULL,
    ruta_imagen VARCHAR(255),
    CONSTRAINT pk_postre
		PRIMARY KEY (id)
);

DROP TABLE IF EXISTS platillo;
CREATE TABLE IF NOT EXISTS platillo(
	id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    descripcion VARCHAR(50) ,
    precio FLOAT NOT NULL,
    descuento FLOAT NOT NULL,
    ruta_imagen VARCHAR(255),
    CONSTRAINT pk_platillo
		PRIMARY KEY (id)
);

DROP TABLE IF EXISTS bebida;
CREATE TABLE IF NOT EXISTS bebida(
	id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    descripcion VARCHAR(50) ,
    precio FLOAT NOT NULL,
    descuento FLOAT NOT NULL,
    ruta_imagen VARCHAR(255),
    CONSTRAINT pk_bebida
		PRIMARY KEY (id)
);


DROP TABLE IF EXISTS combo;
CREATE TABLE IF NOT EXISTS combo(
	id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    postre_id INT NOT NULL,
    platillo_id INT NOT NULL,
    bebida_id INT NOT NULL,
    precio FLOAT NOT NULL,
    ruta_imagen VARCHAR(255),
    tiempo VARCHAR(255),
    CONSTRAINT pk_menu
		PRIMARY KEY (id),
	CONSTRAINT fk_postre_id
		FOREIGN KEY (postre_id) REFERENCES postre(id)
        ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT fk_platillo_id
		FOREIGN KEY (platillo_id) REFERENCES platillo(id)
        ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT fk_bebida_id
		FOREIGN KEY (bebida_id) REFERENCES bebida(id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

DROP TABLE IF EXISTS pedidos;
CREATE TABLE IF NOT EXISTS pedidos(
	id INT NOT NULL AUTO_INCREMENT,
    tarjeta_id VARCHAR(30) NOT NULL,
    combo_id INT NOT NULL,
    usuario_id VARCHAR(40) NOT NULL,
    sede_id INT NOT NULL,
    order_status_id INT NOT NULL,
	comentario VARCHAR(1000),
    CONSTRAINT pk_pedidos
		PRIMARY KEY (id),
    CONSTRAINT fk_tarjeta
		FOREIGN KEY (tarjeta_id) REFERENCES tarjeta(numero_de_tarjeta)
        ON DELETE CASCADE ON UPDATE CASCADE,        
	CONSTRAINT fk_combo_id
		FOREIGN KEY (combo_id) REFERENCES combo(id)
        ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT fk_usuario_id
		FOREIGN KEY (usuario_id) REFERENCES usuario(correo)
        ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT fk_sede_id
		FOREIGN KEY (sede_id) REFERENCES sede(id)
        ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT fk_order_status_id 
		FOREIGN KEY (order_status_id) REFERENCES order_status(id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

-- ---------------------------------
-- Inserciones de la tabla persona
-- ---------------------------------

INSERT INTO persona(nombre1, apellido1, telefono, direccion, ciudad, codigo_postal, estado, pais)
VALUES("Luis", "Archila", "31355235", "Zona 4, 23-41", "Cd. de Guatemala", "01057", "Mixco", "Guatemala");

INSERT INTO persona(nombre1, nombre2, apellido1, apellido2, telefono, direccion, ciudad, codigo_postal, estado, pais)
VALUES("Octavio", "Alejandro", "Corzo", "Reyes", "33990101","Zona 11, 25-31", "Cd. de Guatemala", "01011", "Guatemala", "Guatemala");

INSERT INTO persona(nombre1, apellido1, telefono, direccion, ciudad, codigo_postal, estado, pais)
VALUES("Jose", "Fernández", "59219031","Zona 12, 40-23", "Cd. de Guatemala", "01052", "San José Pinula", "Guatemala");

INSERT INTO persona(nombre1, apellido1, telefono, direccion, ciudad, codigo_postal, estado, pais)
VALUES("Heydy", "García", "59867812","Zona 6, 22-23", "Cd. de Guatemala", "01057", "Mixco", "Guatemala");

INSERT INTO persona(nombre1, nombre2, nombre3, apellido1, apellido2, telefono, direccion, ciudad, codigo_postal, estado, pais)
VALUES("Mario", "Roberto", "Alejandro", "Pérez", "García", "43050089", "Zona 12, 10-01", "Cd. de Guatemala", "01064:", "Villa Nueva", "Guatemala");

INSERT INTO persona(nombre1, nombre2, nombre3, apellido1, apellido2, telefono, direccion, ciudad, codigo_postal, estado, pais)
VALUES("Gabriel", "Ernesto", "Carlos", "Valdez", "Aguilar", "22150787", "Zona 9, 0-53", "Cd. de Guatemala", "01064:", "La Florida", "Guatemala");

INSERT INTO persona(nombre1, nombre2, apellido1, apellido2, telefono, direccion, ciudad, codigo_postal, estado, pais)
VALUES("Sergio", "Juan", "Perez", "Ordoñez", "45879871","Zona 4, 22-15", "Cd. de Guatemala", "61980", "San lucas", "Guatemala");

INSERT INTO persona(nombre1, apellido1, telefono, direccion, ciudad, codigo_postal, estado, pais)
VALUES("Fernando", "Castillo", "36718974", "Zona 10, 10-11", "Aldea Cerro Alto", "01059", "San Juan Sac.", "Guatemala");

INSERT INTO persona(nombre1, apellido1, telefono, direccion, ciudad, codigo_postal, estado, pais)
VALUES("Pedro", "Rodriguez", "35912215","Zona 7, 25-20", "Cd. de Guatemala", "01057", "Mixco", "Guatemala");

INSERT INTO persona(nombre1, nombre2, nombre3, apellido1, apellido2, telefono, direccion, ciudad, codigo_postal, estado, pais)
VALUES("Emilio", "Mario", "Fernando", "Vasquez", "Fernandez", "22164587", "Zona 1, 12-13", "San Lucas Sacatepequez", "03003:", "Sacatepequez", "Guatemala");

-- -------------------------------
-- Inserciones rol
-- --------------------------------
INSERT INTO rol(nombre)
VALUES("Administrador");

INSERT INTO rol(nombre)
VALUES("Clientes");

-- --------------------------------
-- Inserciones de usuario
-- --------------------------------
INSERT INTO usuario(correo, password, rol_id, persona_id)
VALUES("luisarchila@fornobistro.gt.com", 12345, 1, 1);

INSERT INTO usuario(correo, password, rol_id, persona_id)
VALUES("octavicorzo@fornobistro.gt.com", 12345, 2, 2);

INSERT INTO usuario(correo, password, rol_id, persona_id)
VALUES("josefernandez@fornobistro.gt.com", 12345, 1, 3);

INSERT INTO usuario(correo, password, rol_id, persona_id)
VALUES("heydygarcia@fornobistro.gt.com", 12345, 2, 4);

INSERT INTO usuario(correo, password, rol_id, persona_id)
VALUES("marioroberto@fornobistro.gt.com", 12345, 2, 5);

INSERT INTO usuario(correo, password, rol_id, persona_id)
VALUES("gabrielvaldez@fornobistro.gt.com", 12345, 1, 6);

INSERT INTO usuario(correo, password, rol_id, persona_id)
VALUES("sergioperez@fornobistro.gt.com", 12345, 2, 7);

INSERT INTO usuario(correo, password, rol_id, persona_id)
VALUES("fernandocastillo@fornobistro.gt.com", 12345, 1, 8);

INSERT INTO usuario(correo, password, rol_id, persona_id)
VALUES("pedrorodriguez@fornobistro.gt.com", 12345, 2, 9);

INSERT INTO usuario(correo, password, rol_id, persona_id)
VALUES("emiliovasquez@fornobistro.gt.com", 12345, 1, 10);

-- -------------------------
-- Inserciones de sede
-- -------------------------
INSERT INTO sede(nombre_agencia, NIT, direccion)
VALUES("Forno Bistro, CAYALA", "26031-0101", "22 calle 9-33 zona 16, Paseo Cayalá");

INSERT INTO sede(nombre_agencia, NIT, direccion)
VALUES("Forno Bistro, Antigua Guatemala", "47090-0101", "6a Calle Poniente 7, Antigua Guatemala");

INSERT INTO sede(nombre_agencia, NIT, direccion)
VALUES("Forno Bistro, Zona-10", "87034-0101", "8a Calle 3-14, Cdad. de Guatemala");

INSERT INTO sede(nombre_agencia, NIT, direccion)
VALUES("Forno Bistro, Zona-14", "48091-0101", "10 Avenida 5-49, Cdad. de Guatemala");

INSERT INTO sede(nombre_agencia, NIT, direccion)
VALUES("Forno Bistro, Zona-9", "90012-0101", "4A Avenida 9-78, Cdad. de Guatemala");

INSERT INTO sede(nombre_agencia, NIT, direccion)
VALUES("Forno Bistro, Florida", "26257-7185", "Calzada San Juan 1-83 zona 7, Mixco, Guatemala");

INSERT INTO sede(nombre_agencia, NIT, direccion)
VALUES("Forno Bistro, Naranjo", "50277-2711", "23 calle 10-00, Condado Naranjo, Guatemala");

INSERT INTO sede(nombre_agencia, NIT, direccion)
VALUES("Forno Bistro, Miraflores", "200928-0901", "21 avenida 4-32, zona 11, Cdad. de Guatemala");

INSERT INTO sede(nombre_agencia, NIT, direccion)
VALUES("Forno Bistro, Fontabella", "200554-2215", "4A Avenida 12-59, zona 10, Cdad. de Guatemala");

INSERT INTO sede(nombre_agencia, NIT, direccion)
VALUES("Forno Bistro, Petapa", "15988-3659", "Avenida Petapa 42-36, zona 12, Cdad. de Guatemala");

-- ---------------------------
-- Inserciones de order status
-- ---------------------------
INSERT INTO order_status(status)
VALUES("En camino");

INSERT INTO order_status(status)
VALUES("Entregado");

INSERT INTO order_status(status)
VALUES("Preparando");

-- -----------------------
-- Inserciones en tarjeta
-- -----------------------
INSERT INTO tarjeta(numero_de_tarjeta, nombre_en_tarjeta, fecha_de_vencimiento, tipo_de_tarjeta)
VALUES("4385822056110982", "MasterCard", "11/09/23", "Crédito");

INSERT INTO tarjeta(numero_de_tarjeta, nombre_en_tarjeta, fecha_de_vencimiento, tipo_de_tarjeta)
VALUES("1245642676220821", "Visa", "20/10/25", "Débito");

INSERT INTO tarjeta(numero_de_tarjeta, nombre_en_tarjeta, fecha_de_vencimiento, tipo_de_tarjeta)
VALUES("3234566078240123", "MasterCard", "11/07/23", "Débito");

INSERT INTO tarjeta(numero_de_tarjeta, nombre_en_tarjeta, fecha_de_vencimiento, tipo_de_tarjeta)
VALUES("5435677056134333", "Visa", "21/11/24", "Crédito");

INSERT INTO tarjeta(numero_de_tarjeta, nombre_en_tarjeta, fecha_de_vencimiento, tipo_de_tarjeta)
VALUES("4589175466134678", "Visa", "10/05/23", "Débito");

INSERT INTO tarjeta(numero_de_tarjeta, nombre_en_tarjeta, fecha_de_vencimiento, tipo_de_tarjeta)
VALUES("346859996814820", "American Express", "01/05/24", "Crédito");

INSERT INTO tarjeta(numero_de_tarjeta, nombre_en_tarjeta, fecha_de_vencimiento, tipo_de_tarjeta)
VALUES("4269370868393062", "Visa", "01/10/23", "Crédito");

INSERT INTO tarjeta(numero_de_tarjeta, nombre_en_tarjeta, fecha_de_vencimiento, tipo_de_tarjeta)
VALUES("5461508168852849", "Mastercard", "11/11/25", "Crédito");

INSERT INTO tarjeta(numero_de_tarjeta, nombre_en_tarjeta, fecha_de_vencimiento, tipo_de_tarjeta)
VALUES("6011766059532127", "Discover", "15/08/23", "Crédito");

INSERT INTO tarjeta(numero_de_tarjeta, nombre_en_tarjeta, fecha_de_vencimiento, tipo_de_tarjeta)
VALUES("375096974512357", "American Express", "05/06/24", "Crédito");



-- ----------------------
-- Inserciones de postre
-- ----------------------
INSERT INTO postre(nombre, precio, descuento)
VALUES("Pie de queso", "20.99", "0.25");

INSERT INTO postre(nombre, precio, descuento)
VALUES("Pie de Manzana", "20.50", "0.00");

INSERT INTO postre(nombre, precio, descuento)
VALUES("Helado de chocalate", "15.00", "0.45");

INSERT INTO postre(nombre, precio, descuento)
VALUES("Helado de fresa", "15.00", "0.13");

INSERT INTO postre(nombre, precio, descuento)
VALUES("Banana split", "25.00", "0.00");

INSERT INTO postre(nombre, precio, descuento)
VALUES("Crepa con Nutella", "30.00", "0.10");

INSERT INTO postre(nombre, precio, descuento)
VALUES("Pie de Queso", "70.00", "0.00");

INSERT INTO postre(nombre, precio, descuento)
VALUES("Croissant Simple", "8.50", "0.17");

INSERT INTO postre(nombre, precio, descuento)
VALUES("Cañoncito de Nutella", "16.50", "0.19");

INSERT INTO postre(nombre, precio, descuento)
VALUES("Cinnamon Roll", "7.50", "0.17");

-- ------------------------
-- Inserciones en plantillo
-- ------------------------
INSERT INTO platillo(nombre, precio, descuento)
VALUES("Carpaccio Il Jamone", "95.00", "0.17");

INSERT INTO platillo(nombre, precio, descuento)
VALUES("Calzone italianizimo", "30.00", "0.40");

INSERT INTO platillo(nombre, precio, descuento)
VALUES("Insalata Capresse", "65.00", "0.00");

INSERT INTO platillo(nombre, precio, descuento)
VALUES("Minestrone", "60.00", "0.00");

INSERT INTO platillo(nombre, precio, descuento)
VALUES("Lasaña dalla casa", "75.00", "0.25");

INSERT INTO platillo(nombre, precio, descuento)
VALUES("Mostaccioli", "75.00", "0.41");

INSERT INTO platillo(nombre, precio, descuento)
VALUES("Pasta a la carbonara", "75.00", "0.00");

INSERT INTO platillo(nombre, precio, descuento)
VALUES("Ravioles in Rossa", "80.00", "0.28");

INSERT INTO platillo(nombre, precio, descuento)
VALUES("Pizza Margherita", "125.00", "0.00");

INSERT INTO platillo(nombre, precio, descuento)
VALUES("Rissoto Stracceti", "80.00", "0.00");

-- -------------------------
-- Inserciones en bebida
-- -------------------------
INSERT INTO bebida(nombre, precio, descuento)
VALUES("Coca-Cola", "5.99", 0.00);

INSERT INTO bebida(nombre, precio, descuento)
VALUES("Té frío", "9.99", 0.00);

INSERT INTO bebida(nombre, precio, descuento)
VALUES("Vino tinto SOLEA", "139.99", 0.35);

INSERT INTO bebida(nombre, precio, descuento)
VALUES("Vino blanco HIGHLAND MANOR", "139.99", 0.23);

INSERT INTO bebida(nombre, precio, descuento)
VALUES("Limonada", "12.99", 0.12);

INSERT INTO bebida(nombre, precio, descuento)
VALUES("Jugo de naranja", "11.99", 0.00);

INSERT INTO bebida(nombre, precio, descuento)
VALUES("Cafe Negro", "12.99", 0.00);

INSERT INTO bebida(nombre, precio, descuento)
VALUES("Capuchinno", "19.99", 0.00);

INSERT INTO bebida(nombre, precio, descuento)
VALUES("Horchata", "12.99", 0.15);

INSERT INTO bebida(nombre, precio, descuento)
VALUES("Malteada de Fresa", "19.99", 0.00);

INSERT INTO bebida(nombre, precio, descuento)
VALUES("Malteada de Chocolate", "19.99", 0.00);

INSERT INTO bebida(nombre, precio, descuento)
VALUES("Sprite", "5.99", 0.00);

INSERT INTO bebida(nombre, precio, descuento)
VALUES("Fanta", "5.99", 0.00);

-- ---------------------------
-- Inserciones en combo
-- ---------------------------
INSERT INTO combo(nombre, postre_id, platillo_id, bebida_id, precio, tiempo)
VALUES("Combo desayuno 1", 1, 1, 2, "35.99","DESAYUNO");

INSERT INTO combo(nombre, postre_id, platillo_id, bebida_id, precio,tiempo)
VALUES("Combo almuerzo 1", 2, 2, 1, "50.00","ALMUERZO");

INSERT INTO combo(nombre, postre_id, platillo_id, bebida_id, precio, tiempo)
VALUES("Combo fit", 3, 3, 2, "47.00", "CENA");

INSERT INTO combo(nombre, postre_id, platillo_id, bebida_id, precio, tiempo)
VALUES("Combo casual", 4, 4, 5, "50.00", "CENA");

INSERT INTO combo(nombre, postre_id, platillo_id, bebida_id, precio, tiempo)
VALUES("Combo pasta 1", 5, 5, 2, "45.00", "ALMUERZO");

INSERT INTO combo(nombre, postre_id, platillo_id, bebida_id, precio, tiempo)
VALUES("Combo Frutti", 9, 10, 8, "300.00","CENA");

INSERT INTO combo(nombre, postre_id, platillo_id, bebida_id, precio, tiempo)
VALUES("Combo xibal zuppe", 7, 8, 6, "450.00","DESAYUNO");

INSERT INTO combo(nombre, postre_id, platillo_id, bebida_id, precio, tiempo)
VALUES("Combo Parmigiana 1", 6, 6, 7, "250.00","DESAYUNO");

INSERT INTO combo(nombre, postre_id, platillo_id, bebida_id, precio, tiempo)
VALUES("Combo Cacciatora", 10, 7, 10, "169.00","ALMUERZO");

INSERT INTO combo(nombre, postre_id, platillo_id, bebida_id, precio, tiempo)
VALUES("Combo pizza", 8, 9, 9, "150.00","ALMUERZO");

-- ------------------------
-- Inserciones pedidos
-- -------------------------
INSERT INTO pedidos(tarjeta_id, combo_id, usuario_id, sede_id, order_status_id)
VALUES("1245642676220821", 1, 'heydygarcia@fornobistro.gt.com', 1, 1);

INSERT INTO pedidos(tarjeta_id, combo_id, usuario_id, sede_id, order_status_id)
VALUES("4385822056110982", 2, 'josefernandez@fornobistro.gt.com', 2, 2);

INSERT INTO pedidos(tarjeta_id, combo_id, usuario_id, sede_id, order_status_id)
VALUES("3234566078240123", 3, 'luisarchila@fornobistro.gt.com', 3, 3);

INSERT INTO pedidos(tarjeta_id, combo_id, usuario_id, sede_id, order_status_id)
VALUES("4589175466134678", 2, 'marioroberto@fornobistro.gt.com', 3, 3);

INSERT INTO pedidos(tarjeta_id, combo_id, usuario_id, sede_id, order_status_id)
VALUES("5435677056134333", 2, 'octavicorzo@fornobistro.gt.com', 2, 2);

INSERT INTO pedidos(tarjeta_id, combo_id, usuario_id, sede_id, order_status_id)
VALUES("346859996814820", 6, 'gabrielvaldez@fornobistro.gt.com', 6, 2);

INSERT INTO pedidos(tarjeta_id, combo_id, usuario_id, sede_id, order_status_id)
VALUES("4269370868393062", 7, 'sergioperez@fornobistro.gt.com', 7, 1);

INSERT INTO pedidos(tarjeta_id, combo_id, usuario_id, sede_id, order_status_id)
VALUES("5461508168852849", 8, 'fernandocastillo@fornobistro.gt.com', 8, 2);

INSERT INTO pedidos(tarjeta_id, combo_id, usuario_id, sede_id, order_status_id)
VALUES("6011766059532127", 9, 'pedrorodriguez@fornobistro.gt.com', 9, 3);

INSERT INTO pedidos(tarjeta_id, combo_id, usuario_id, sede_id, order_status_id)
VALUES("375096974512357", 10, 'emiliovasquez@fornobistro.gt.com', 10, 1);

SELECT * FROM persona;
SELECT * FROM rol;
SELECT * FROM usuario;
SELECT * FROM sede;
SELECT * FROM tarjeta;
SELECT * FROM pedidos;
SELECT * FROM order_status;

/*SELECT PARA MOSTRAR LOS COMBOS SU NOMBRE Y SU TIEMPO PARA SE SERVIDOS*/
SELECT combo.nombre, po.nombre,pla.nombre,b.nombre, combo.tiempo FROM combo 
JOIN postre AS po ON combo.postre_id = po.id 
JOIN platillo AS pla ON combo.platillo_id= pla.id 
JOIN bebida AS b ON combo.bebida_id=b.id;

SELECT * FROM postre;
SELECT * FROM platillo;
SELECT * FROM bebida;