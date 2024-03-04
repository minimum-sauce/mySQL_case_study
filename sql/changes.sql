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
SELECT * FROM Store.Suppliers;
SELECT * FROM Store.ProductSuppliers
