CREATE DATABASE db_join;

USE db_join;

CREATE TABLE customers(
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(255)
);

CREATE Table orders(
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_name VARCHAR(100),
    quantity INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO customers(customer_id, customer_name) VALUES
(1, 'John Doe'),
(2, 'Jane Doe'),
(3, 'Bob Smith'),
(4, 'Alice Johnson');

INSERT INTO customers(customer_id, customer_name) VALUES (5, 'Suhel Khan');

-- Inserting into orders table
INSERT INTO orders(order_id, customer_id, product_name, quantity) VALUES
(1, 1, 'Product A', 10),
(2, 1, 'Product B', 20),
(3, 2, 'Product C', 30),
(4, 3, 'Product D', 40),
(5, 4, 'Product E', 50);


SELECT * FROM customers;
SELECT * FROM orders;

-- JOIN

-- Inner Join
SELECT customer_name, product_name, quantity
FROM customers AS c
INNER JOIN
orders AS o ON c.customer_id = o.customer_id;

-- LEFT JOIN

SELECT customer_name, product_name, quantity
FROM customers AS c
LEFT JOIN
orders AS o ON c.customer_id = o.customer_id;


-- Right JOIN

SELECT customer_name, product_name, quantity
FROM customers AS c
RIGHT JOIN
orders AS o ON c.customer_id = o.customer_id;

--  Full outer Join
-- SELECT c.customer_name, o.product_name, o.quantity
-- FROM customers AS c
-- FULL OUTER JOIN
-- orders AS o ON c.customer_id = o.customer_id;

-- MYSQL Support
SELECT c.customer_name, o.product_name, o.quantity
FROM customers AS c
LEFT JOIN orders AS o ON c.customer_id = o.customer_id
UNION
SELECT c.customer_name, o.product_name, o.quantity
FROM customers AS c
RIGHT JOIN orders AS o ON c.customer_id = o.customer_id;