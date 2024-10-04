-- Active: 1727965917817@@127.0.0.1@3307
CREATE DATABASE chai_store_db; -- creating database
    DEFAULT CHARACTER SET = 'utf8mb4';

-- USE the created database
USE chai_store_db;

-- Create a table
CREATE Table chai_store(
    id INT PRIMARY KEY AUTO_INCREMENT,
    chai_name VARCHAR(20),
    price DECIMAL(5,2),
    chai_type VARCHAR(50),
    available BOOLEAN
);

DROP Table chai_store; -- to drop the table

-- Initial Chai Insertion
INSERT INTO chai_store (
    chai_name, price, chai_type, available
    )VALUES
('Masala Chai', 30.00, 'Spiced', TRUE),
('Green Chai', 25.00, 'Herbal', TRUE),
('Black Chai', 20.00, 'Classic', TRUE),
('Iced Chai', 35.00, 'Cold', FALSE),
('Oolong Chai', 40.00, 'Speciality', TRUE);

-- Retrieve the data
SELECT * FROM chai_store;

-- Selected column retrieval
SELECT chai_name as `CHAIR NAME`, price as `Costs in INR` FROM chai_store;

-- where clause
SELECT * FROM chai_store
WHERE chai_name = "chai";

SELECT * FROM chai_store
WHERE chai_name = "Black chai";

-- WHERE clause & LIKE
SELECT * FROM chai_store
WHERE chai_name LIKE "%chai%"; -- start or end with anything

-- WHERE clause & LIKE
SELECT * FROM chai_store
WHERE chai_name LIKE "Iced%"; -- start "Iced" end with anything

-- WHERE clause & LIKE
SELECT * FROM chai_store
WHERE chai_name LIKE "%chai"; -- start anything end with "chai"

-- WHERE clause
SELECT * FROM chai_store
WHERE price < 30;

-- order the data
SELECT *
FROM chai_store
ORDER BY price DESC; -- ASC or nothing for the ascending order

-- updating the data
UPDATE chai_store
SET price = 38.00, available = TRUE
WHERE chai_name = "Iced Chai";


SELECT * FROM chai_store;
-- Deletion from the database
DELETE FROM chai_store
WHERE chai_name = "Black chai";
SELECT * FROM chai_store;


-- second highest
SELECT *
FROM chai_store
ORDER BY price DESC
LIMIT 1 OFFSET 1;


ALTER TABLE chai_store RENAME products;
-- Alter command
ALTER Table products ADD stock INT DEFAULT 0;

SELECT * FROM products;
ALTER TABLE products 
MODIFY COLUMN price DECIMAL(12,2);
desc products;
ALTER TABLE products
DROP COLUMN stock;

TRUNCATE TABLE products; -- empty the table

ALTER Table products RENAME chai_store_products;