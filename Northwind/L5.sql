-- INSERT INTO syntax
-- 1). specify both col name and values.
-- 2). specify only values if adding for all cols.

USE northwindmysql;

-- RENAME col
ALTER TABLE customers
RENAME COLUMN ContactName to CustomerName;

-- 1) Specify Both
INSERT INTO customers(customerID, companyName, CustomerName, City, Country)
VALUES(92,'ZMQ', 'Suhel', 'Aligarh', 'India');

-- 2) Specify values only
INSERT INTO customers
VALUES(93,'MS', 'Khan', 'ABC', 'New Addr', 'Aligarh', 'NCR', '202002', 'India', 969512212, '000011122', '****', '****');