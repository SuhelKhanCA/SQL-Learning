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
CREATE TABLE IF NOT EXISTS locations(
	location_id INT PRIMARY KEY,
    street_address VARCHAR(25),
    postal_code VARCHAR(12),
    city VARCHAR(30),
    state_province VARCHAR(12),
    country_id CHAR(2),
    FOREIGN KEY(country_id) REFERENCES countries(country_id)
);

-- jobs table
CREATE TABLE IF NOT EXISTS jobs(
	job_id VARCHAR(10),
	job_title VARCHAR(35),
    min_salary DECIMAL(6,0),
    max_salary DECIMAL(6,0)
);

-- departments table
CREATE TABLE IF NOT EXISTS departments(
	department_id INT PRIMARY KEY,
    department_name VARCHAR(30),
    manager_id INT,
    location_id INT,
    FOREIGN KEY(location_id) REFERENCES locations(location_id)
);

-- job_history table

-- creating inddex
CREATE INDEX idx_jobs_job_id ON jobs(job_id);

CREATE TABLE IF NOT EXISTS job_history(
	employee_id INT PRIMARY KEY,
    start_date DATE,
    end_date DATE,
    job_id VARCHAR(10),
    department_id INT,
    FOREIGN KEY(job_id) REFERENCES jobs(job_id),
    FOREIGN KEY(department_id) REFERENCES departments(department_id)
);

-- employee table
CREATE TABLE IF NOT EXISTS employees(
	employee_id INT PRIMARY KEY,
    first_name VARCHAR(20),
    last_name VARCHAR(25),
    email VARCHAR(25),
    phone_number VARCHAR(20),
    hire_date DATE,
    job_id VARCHAR(2),
    salary DECIMAL(6,0),
    commission_pct DECIMAL(4,0),
    manager_id INT,
    department_id INT,
    FOREIGN KEY(department_id) REFERENCES departments(department_id),
    FOREIGN KEY(job_id) REFERENCES jobs(job_id)
);