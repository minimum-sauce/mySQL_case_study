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
) VALUES 
(1, 2),
(2, 2);

-- @block
SELECT * FROM Store.Products;
SELECT * FROM Store.Suppliers;
SELECT * FROM Store.ProductSuppliers;
