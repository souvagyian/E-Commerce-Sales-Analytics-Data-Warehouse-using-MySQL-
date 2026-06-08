-- Transaction Example 1: Rollback

START TRANSACTION;

UPDATE Products
SET price = 55000
WHERE product_id = 101;

SELECT * FROM Products;

ROLLBACK;

SELECT * FROM Products;

-- Transaction Example 2: Commit

START TRANSACTION;

UPDATE Products
SET price = 55000
WHERE product_id = 101;

COMMIT;

SELECT * FROM Products;

-- Insert Transaction Example

START TRANSACTION;

INSERT INTO Customers
VALUES (6, 'Sourav', 'Kolkata');

COMMIT;

SELECT * FROM Customers;
