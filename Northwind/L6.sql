-- NULL values : for optional fields

-- Comparision operators can't be used.

-- Queries
-- 1). IS NULL
-- 1). IS NOT NULL

-- Use a DB : required step
USE northwindmysql;

-- 1)
SELECT customername, address, phone
FROM customers
WHERE address IS NULL;

-- 2)
SELECT customername, address, phone
FROM customers
WHERE address IS NOT NULL;


-- Additional Experiment
SELECT COUNT(*) AS count_all_record_NULL
FROM customers
WHERE address IS NULL; -- Total 1 Record

SELECT COUNT(*)
FROM customers
WHERE address IS NOT NULL; -- 92 record

SELECT COUNT(*)
FROM customers; -- 93 record