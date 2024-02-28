-- @block
CREATE DATABASE Store;

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
	FOREIGN KEY(supplier_id) REFERENCES Store.Suppliers(supplier_id),
	product_id int,
	FOREIGN KEY(product_id) REFERENCES Store.Products(product_id)
);

CREATE TABLE IF NOT EXISTS Store.Orders (
	order_id int PRIMARY KEY AUTO_INCREMENT,
	product_id int NOT NULL,
	quantity int NOT NULL
);

-- Adding to the database
-- @block
INSERT INTO Store.Products (
	code,
	quantity,
	price
) VALUES 
('abcd', 1, 21.65),
('foo', 2, 25.65),
('bar', 3, 28.65),
('baz', 4, 13.65),
('aaaa', 5, 3.65);

-- @block
INSERT INTO Store.Suppliers (
	supplier_name,
	supplier_phone
) VALUES 
("McDonald'a", '0701232322'),
("McDonald'b", '0701232323'),
("McDonald'c", '0701232324');

-- @block
INSERT INTO Store.ProductSuppliers (
	product_id,
	supplier_id
) VALUES (1, 2);

-- Updating the database
-- @block
UPDATE Store.Products
SET code = 'FOO', quantity = 8
WHERE product_id = 2;

-- Retain data from the database
-- @block
SELECT * FROM Store.Products WHERE code = 'abcd';

SELECT quantity FROM Store.Products WHERE code = 'abcd';

-- Delete data from the database
-- @block
DELETE FROM Store.Products WHERE code = 'abcd';

-- @block
SELECT * FROM Store.Products;
SELECT * FROM Store.ProductSuppliers
