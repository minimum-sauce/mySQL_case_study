-- @block
CREATE DATABASE IF NOT EXISTS Store;

-- Setting up the data base
-- @block
CREATE TABLE IF NOT EXISTS Store.Products (
	product_id int PRIMARY KEY AUTO_INCREMENT,
	code varchar(4) UNIQUE,
	quantity int,
	price float
);

CREATE TABLE IF NOT EXISTS Store.Suppliers (
	supplier_id int PRIMARY KEY UNIQUE AUTO_INCREMENT,
	supplier_name varchar(255) NOT NULL UNIQUE,
	supplier_phone varchar(10)
);

CREATE TABLE IF NOT EXISTS Store.ProductSuppliers (
	supplier_id int,
	FOREIGN KEY(supplier_id) REFERENCES Store.Suppliers(supplier_id) ON DELETE CASCADE,
	product_id int,
	FOREIGN KEY(product_id) REFERENCES Store.Products(product_id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS Store.Orders (
	order_id int PRIMARY KEY AUTO_INCREMENT,
	product_id int NOT NULL,
	quantity int NOT NULL
);

-- @block
SELECT * FROM Store.Products;
SELECT * FROM Store.Suppliers;
SELECT * FROM Store.ProductSuppliers;
