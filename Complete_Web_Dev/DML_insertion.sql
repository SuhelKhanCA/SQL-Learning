-- DML commands -> manipulation inside the table
USE chai_store_db;

DESC chai_store_products;
-- INSERT
INSERT INTO chai_store_products(
    chai_name, price, chai_type, available
    )VALUES
    ('Chai 1', 1.99, 'Black', TRUE),
    ('Chai 2', 2.99, 'Green', TRUE),
    ('Chai 3', 3.99, 'White', FALSE);

-- updating a tuple
UPDATE chai_store_products
SET price = 20
WHERE chai_name = "Chai 1";

SELECT * FROM chai_store_products;

-- Deleting a tuple 
DELETE FROM chai_store_products
where chai_name = "Chai 2";

-- Select

SELECT chai_name AS Tea
FROM chai_store_products;