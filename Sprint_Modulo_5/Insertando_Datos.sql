--  INSERTAR DATOS DENTRO DE LAS TABLAS

-- Agregue 5 proveedores a la base de datos. En general, los proveedores venden muchos productos.
INSERT INTO proveedores (representante_legal, nombre_proveedor, telefono_1, telefono_2, correo_electronico, categoria)
VALUES
('Manuel Khalilei', 'Technologies SKA', 909394854, 412342322, 'technologies@tska.com','conectividad y redes'),
('Barbara Amigo', 'TIC S.A', 934323434, 412345567, 'ticsa@proveedores.cl','accesorios de pc'),
('Ismael Marengo', 'Telecom INC', 234543234, 412343244, 'telecominc@proveedores.cl','componentes de pc'),
('Luis Villablanca', 'Computers Lab', 923112342, 412343212, 'computerslab@contacto.cl','computacion'),
('Marcela Diaz', 'Microgames', 923454323, 412345668, 'microgames@electronica.cl','electronica');


-- Agregue 10 productos a la base de datos.
INSERT INTO productos (SKU, nombre_producto, color, precio, categoria, stock, id_proveedor)
    VALUES
    (1700171, 'teclado inhalambrico', 'negro', 14990, 'computacion', 10, 4),
    (1700172, 'monitor pc', 'blanco', 51990, 'computacion', 15, 4),
    (1700173, 'impresora laser', 'azul', 100990, 'accesorios de pc', 9, 2),
    (1700174, 'mouse inhalambrico', 'negro', 10990, 'accesorios de pc', 13, 2),
    (1700175, 'memoria ram', 'negro', 29990, 'accesorios de pc', 7, 2),
    (1700176, 'audifonos', 'blanco', 19990, 'accesorios de pc', 14, 2),
    (1700177, 'cpu', 'verde', 14990, 'componentes de pc', 4, 3),
    (1700178, 'disco duro externo', 'negro', 14990, '-', 18, 4),
    (1700179, 'cable de red', 'azul', 14990, 'conectividad y redes', 12, 1),
    (1700180, 'placa madre', 'negro', 149990, 'electronica', 11, 5);


-- Agregue 5 clientes a la base de datos.
INSERT INTO clientes (nombre, apellido, direccion)
VALUES
	('Marissa', 'Diaz', 'Carreras 730 Concepcion'),
	('Daniela', 'Rodriguez', 'Ohiggins 12 Concepcion'),
	('Monica', 'Avila', 'Ongolmo 730 Concepcion'),
	('Sabrina', 'Heinsenberg', 'Bellavista 2000, Santiago'),
	('Romulo', 'Beltran', 'Prat 1250 Concepcion');
