--Responda las siguientes preguntas:
--1. ¿Cuál es la categoría de productos que más se repite?
--2. ¿Cuáles son los productos con mayor stock?
--3. ¿Qué color de producto es más común en nuestra tienda?
--4. ¿Cuál o cuales son los proveedores con menor stock de productos?
--5. ¿Cambiar el nombre de la categoría más popular por "Electronica y computacion"?


--1 La categoría que más se repite es accesorios de pc
	select categoria,
	count (categoria) as frecuencia
	from productos
	group by categoria
	order by frecuencia
	desc limit 1;

--2 Los productos con mayor stock son Disco Duro Externo y Monitor Pc
	select nombre_producto,
	max (stock) as stock_maximo
	from productos
	group by nombre_producto
	order by stock_maximo
	desc limit 2;

--3 El color más común en la tienda es negro
	select color,
	count (color) as mayor_frecuencia
	from productos
	group by color
	order by mayor_frecuencia
	desc limit 1;

--4 Proveedor con menor stock de productos es Telecom inc
	select id_proveedor,
	sum (stock) as menor_stock
	from productos
	group by id_proveedor
	order by menor_stock
	asc limit 1;

--5 Categoria más popular es: 'accesorios de pc'
	select categoria,
	count (categoria) as categoria_popular
	from productos
	group by categoria
	order by categoria_popular
	desc limit 1;

-- Cambiar el nombre de la categoría más popular
	update productos set categoria='electronica y computacion'
	where categoria='accesorios de pc';
	
select * from productos where categoria='electronica y computacion'