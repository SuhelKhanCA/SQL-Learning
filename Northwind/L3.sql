-- CONSTRAINTs and INDEX --

-- INDEX
-- 1). Create Index
CREATE INDEX idx_name ON table_name(field_name);

-- 2). Delete index
DROP idx_name;


-- CONSTRAINTs
-- FK, UNIQUE, NOT NULL, CHECK

--1). Create constraint

ALTER TABLE orders 
ADD CONSTRAINT fk_customer 
FOREIGN KEY(customer_id) 
REFERENCES customers(id);

-- 2). Drop Constraint
ALTER TABLE orders 
DROP CONSTRAINT fk_customer;
