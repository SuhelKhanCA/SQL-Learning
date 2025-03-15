-- ORDER BY keyword
-- It sort the result-set in ASC or DESC order.

-- Example : ASC
SELECT Contactname, Country
FROM customers
ORDER BY `Country`; -- ASC by-default

-- DESC
SELECT Contactname, Country
FROM customers
ORDER BY `Country` DESC;

-- ORDER by several cols
-- first-col has same value then sort by second and so on
SELECT Contactname, Country, `City`
FROM customers
ORDER BY `Country`, `City`;

SELECT Contactname, Country, `City`
FROM customers
ORDER BY `Country` ASC, `City` DESC;