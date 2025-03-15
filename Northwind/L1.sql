-- THIS IS NORTHWIND SQL SERIES from W3--

USE northwindmysql;

-- Select all columns from the Customers table
SELECT * FROM Customers;


-- Selecting specific columns from a Table

SELECT City, Country from Customers;

-- Select DISTINCT statement
SELECT DISTINCT Country FROM Customers;

SELECT COUNT(Country) from Customers; -- 91 : Duplicate record
SELECT Count(DISTINCT Country) FROM Customers; -- 21 : No dup record


-- WHERE clause
-- WHERE clause is also used in UPDATE and DELETE commands

SELECT *
FROM Customers
WHERE Country = 'USA'; -- use single quotes around strings : Convention

-- Numeric Field
SELECT *
FROM order_details -- `order details` : this would work fine
WHERE OrderID = 1;

SHOW TABLES;

-- Updated the table name using UI tool


-- Operator in WHERE clause --

-- Equal(=)
SELECT *
FROM products
WHERE UnitPrice = 18;

-- Greater Than(>)
SELECT *
FROM products
WHERE UnitPrice > 18;

-- Less than(<)
SELECT *
FROM products
WHERE UnitPrice < 18;

-- Greater than Equal(>=)
SELECT *
FROM products
WHERE UnitPrice >= 18;

-- Less than or Equal(<=)
SELECT *
FROM products
WHERE UnitPrice <= 18;

-- Not Equal(!=, <>, NOT)
SELECT *
FROM products
WHERE UnitPrice != 18;

SELECT *
FROM products
WHERE UnitPrice <> 18;

-- BETWEEN
SELECT *
FROM products
WHERE UnitPrice BETWEEN 18 AND 40;

-- IN
SELECT `ContactName`, `City`
FROM customers
WHERE `City` IN ('London', 'Paris');

-- LIKE : Search for a pattern 
SELECT *
FROM customers
WHERE City LIKE 's%';

-- OPERATORS in The WHERE Clause
-- 
-- = :	Equal	
-- > :	Greater than	
-- < :	Less than	
-- >= :	Greater than or equal	
-- <= :	Less than or equal	
-- <> :	Not equal. Note: In some versions of SQL this operator may be written as !=	
-- BETWEEN :	Between a certain range	
-- LIKE	: Search for a pattern	
-- IN :	To specify multiple possible values for a column