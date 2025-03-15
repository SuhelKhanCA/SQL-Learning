-- MYSQL update statement
-- modify existing record in table.

-- NOTE : always include a WHERE clause.

UPDATE customers
SET Customername='Saleh Khan', City='Hata'
WHERE customerId = '93';

-- NOTE 2 : WHERE clause determine how many records are going to be updated.

UPDATE customers
SET PostalCode= 00000
WHERE country='Mexico'; -- 5 row affected