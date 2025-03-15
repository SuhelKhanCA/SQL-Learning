-- THIS IS NORTHWIND SQL SERIES from W3--
-- AND, OR and NOT
-- used to filter based on more than one condition

-- NOT syntax
-- 'WHERE NOT conditon'
USE northwindmysql;


SELECT * from Customers;

-- AND
SELECT CompanyName, ContactName
FROM customers
WHERE `Country`= 'Germany' AND `City`= 'Berlin';

-- OR
SELECT CompanyName, ContactName
FROM customers
WHERE `Country`= 'Germany' OR `City`= 'Stuttgart';

SELECT CompanyName, ContactName
FROM customers
WHERE `Country`= 'Germany' OR `Country`= 'Spain'; 


-- NOT
SELECT CompanyName, ContactName
FROM customers
WHERE NOT `Country`= 'Germany';

-- Combining AND, OR, NOT
SELECT CompanyName, ContactName
FROM customers
WHERE NOT `Country`= 'Germany' AND (`City`='Stuttgart' OR `City`= 'Berlin');

SELECT CompanyName, ContactName
FROM customers
WHERE NOT `Country`= 'Germany' AND NOT `Country`='USA';
