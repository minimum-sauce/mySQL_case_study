-- @block
CREATE DATABASE Store;

-- @block
CREATE TABLE Store.Products (
	product_id int PRIMARY KEY AUTO_INCREMENT,
	code varchar(4) UNIQUE,
	quantity int,
	price float
);

-- @block
CREATE TABLE Store.Suppliers (
	supplier_id int PRIMARY KEY UNIQUE AUTO_INCREMENT,
	supplier_name varchar(255) NOT NULL UNIQUE AUTO_INCREMENT,
	supplier_phone varchar(10)
);

-- @block
CREATE TABLE Store.ProductSuppliers (
	product_id int NOT NULL,
	supplier_id int NOT NULL
);

-- @block
CREATE TABLE Store.Orders (
	order_id int PRIMARY KEY AUTO_INCREMENT,
	product_id int NOT NULL,
	quantity int NOT NULL
);

-- @block
INSERT INTO Store.Products (
	code,
	quantity,
	price
) VALUES 
('abcd', 1, 20.65),
('foo', 2, 30.65),
('bar', 3, 40.65),
('baz', 4, 50.65),
('aaaa', 5, 60.65);

-- @block
SELECT * FROM Store.Products;
SELECT * FROM Store.ProductSuppliers;
SELECT * FROM Store.Orders;