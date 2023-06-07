--CREAR ENTORNO DE TRABAJO

-- CREAR BASE DE DATOS
CREATE DATABASE telovendo_inc;

-- CREAR UN USUARIO CON TODOS LOS PRIVILEGIOS PARA TRABAJAR CON LA BASE DE DATOS RECIEN CREADA
CREATE USER admin_telovendo WITH SUPERUSER CREATEDB CREATEROLE PASSWORD 'postgres';


--  CREAMOS TABLAS PRINCIPALES

--  CREAR TABLA DE PROVEEDORES
CREATE TABLE proveedores (
    id_corporativo SERIAL,
    representante_legal VARCHAR (50),
    nombre_proveedor VARCHAR (50),
    telefono_1 INT,
    telefono_2 INT,
    correo_electronico VARCHAR (50),
    categoria VARCHAR (50),
    PRIMARY KEY (id_corporativo)
);

-- CREAR TABLA DE PRODUCTOS
CREATE TABLE productos(
    SKU INT,
    nombre_producto varchar (50),
    color VARCHAR (50),
    precio int not null check (precio >=0),
    categoria VARCHAR (50),
    stock int not null check (stock >=0),
    id_proveedor INT,
    PRIMARY KEY (SKU),
    FOREIGN KEY (id_proveedor) REFERENCES proveedores (id_corporativo)
);

-- CREAR TABLA DE CLIENTES
CREATE TABLE clientes(
    id_cliente SERIAL,
    nombre VARCHAR (50),
    apellido VARCHAR (50),
    direccion VARCHAR (50),
    PRIMARY KEY (id_cliente)
);