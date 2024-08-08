-- Creating database
CREATE DATABASE hr_db;

-- selecting a database
USE hr_db;

-- region table
CREATE TABLE regions(
	region_id INT PRIMARY KEY,
    region_name VARCHAR(25)
);

-- countries table
CREATE TABLE countries(
	country_id CHAR(2) PRIMARY KEY,
    country_name VARCHAR(40),
    region_id INT,
    FOREIGN KEY(region_id) REFERENCES regions(region_id)
);

-- locations table
