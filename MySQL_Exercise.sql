CREATE DATABASE hr_db;

USE hr_db;

-- 1)
CREATE TABLE countries(
	country_id INT PRIMARY KEY,
    country_name VARCHAR(30),
    region_id VARCHAR(10)
);

-- 2)
CREATE TABLE IF NOT EXISTS countries(
	country_id INT PRIMARY KEY,
    country_name VARCHAR(20),
    region_id DECIMAL(10, 0)
);

-- 3)
CREATE TABLE IF NOT EXISTS dup_countries LIKE countries;

-- 4)
CREATE TABLE IF NOT EXISTS dup_countriess
AS SELECT * FROM countries;

-- 5)
CREATE TABLE IF NOT EXISTS countries(
	country_id VARCHAR(2) NOT NULL,
    country_name VARCHAR(30) NOT NULL,
    region_id DECIMAL(10, 0) NOT NULL
);