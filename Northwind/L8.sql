-- DELETE Statement
-- Delete record/records based on WHERE clause

-- NOTE 1: always include a WHERE clause.

USE northwindmysql;
DELETE FROM customers
WHERE customerid='92';

-- NOTE 2: WHERE clause determine how many records are going to be Deleted.
-- NOTE 3: no WHERE clause : All row deleted