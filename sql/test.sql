CREATE DATABASE Store;

CREATE TABLE Store.Products (
	product_id int PRIMARY KEY AUTO_INCREMENT,
	code varchar(4) UNIQUE,
	quantity int,
	price float
);

CREATE TABLE Store.Suppliers (
	supplier_id int PRIMARY KEY UNIQUE AUTO_INCREMENT,
	supplier_name varchar(255) NOT NULL UNIQUE AUTO_INCREMENT,
	supplier_phone varchar(10)
);

CREATE TABLE Store.ProductSuppliers (
	product_id int NOT NULL,
	supplier_id int NOT NULL
);

CREATE TABLE Store.Orders (
	order_id int PRIMARY KEY AUTO_INCREMENT,
	product_id int NOT NULL,
	quantity int NOT NULL
);

INSERT INTO Store.Products (
	code,
	quantity,
	price
) VALUES 
('abcd', 1, 20.65),
('abcd', 2, 20.65),
('abcd', 3, 20.65),
('abcd', 4, 20.65),
('abcd', 5, 20.65);

