-- LIMIT clause
-- efficiently pick no. of records mentioned

USE northwindmysql;

SELECT *
FROM customers
LIMIT 2; -- Show me 2 record

-- OFFSET : skipping records

SELECT *
FROM customers
LIMIT 4 -- record (3 to 6) inclusive
OFFSET 2; -- skip first two.

-- Q1: second highest
SELECT *
FROM products
ORDER BY UnitPrice DESC
LIMIT 1 
OFFSET 1; -- skip first highest.