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
	supplier_name varchar(255) NOT NULL UNIQUE,
	supplier_phone varchar(10)
);

-- @block
CREATE TABLE Store.ProductSuppliers (
	idx int UNIQUE AUTO_INCREMENT,
	FOREIGN KEY (product_id) REFERENCES Products(product_id),
	FOREIGN KEY(supplier_id) REFERENCES Suppliers(supplier_id)
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
('abcd', 2, 20.65),
('abcd', 3, 20.65),
('abcd', 4, 20.65),
('abcd', 5, 20.65);

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

