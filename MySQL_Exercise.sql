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

-- 6)
CREATE TABLE jobs(
	job_id VARCHAR(2),
    job_title VARCHAR(20),
    min_salary INT,
    max_salary INT 
    CHECK(max_salary <= 25000)  -- Applying check as per business requirement
);

-- 7)XX
INSERT INTO countries
(country_id, country_name, region_id)
VALUES
(101, "Italy", 1),
(102, "India", 2),
(103, "China", 2);

-- 7) //
CREATE TABLE IF NOT EXISTS country(
	country_id VARCHAR(2),
    country_name VARCHAR(30)
    CHECK(country_name IN("Italy", "India", "China")),
    region_id DECIMAL(10, 0)
);

-- 8) XX
CREATE TABLE job_histry(
	employee_id VARCHAR(3),
    start_date DATE,
    end_date DATE,
    job_id VARCHAR(3),
    department_id VARCHAR(3)
);

INSERT INTO job_histry
values("A01", "2009-5-25", "2013-3-22", "A11", "A01");

CREATE TABLE job_histry2(
	employee_id VARCHAR(3),
    start_date DATE,
    end_date DATE CHECK(end_date LIKE "--/--/----"),
    job_id VARCHAR(3),
    department_id VARCHAR(3)
);

-- 9)
CREATE TABLE IF NOT EXISTS countries (
    country_id INT UNIQUE, -- OR UNIQUE(country_id)
    country_name VARCHAR(30),
    region_id VARCHAR(10)
);

-- 10)
CREATE TABLE jobs2(
	job_id VARCHAR(2),
    job_title VARCHAR(20),
    min_salary INT default 8000,
    max_salary INT default null
    CHECK(max_salary <= 25000)  -- Applying check as per business requirement
);

insert into jobs2
(job_id, job_title, min_salary)
 values("A1", "SDE", 8900);
 
 select * from jobs2;
 
 -- 11)
 USE hr_db;
 CREATE TABLE IF NOT EXISTS countries(
	country_id VARCHAR(2) PRIMARY KEY,
    country_name VARCHAR(30),
    region_id VARCHAR(2)
);


-- 12)

DROP TABLE countries;

CREATE TABLE IF NOT EXISTS countries(
	country_id INT PRIMARY KEY AUTO_INCREMENT,
    country_name VARCHAR(30),
    region_id DECIMAL(6,0)
);

INSERT INTO countries
(country_name, region_id)
VALUES
("India", 1),
("UK", 2),
("Romania", 3),
("USA", 0);

select * from countries;

-- 13) 

CREATE TABLE IF NOT EXISTS countries (
    country_id INT,
    country_name VARCHAR(30),
    region_id VARCHAR(10),
    PRIMARY KEY(country_id, region_id)
);

-- 14) applying foreign key concept


CREATE TABLE job_histry(
	employee_id VARCHAR(2) PRIMARY KEY,
    start_date DATE CHECK(start_date LIKE "--/--/----" ),
    end_date DATE CHECK(end_date LIKE "--/--/----" ),
	job_id VARCHAR(10),
	department_id VARCHAR(2),
    FOREIGN KEY (job_id) REFERENCES jobs(job_id)
);

drop table dup_countries;
drop table dup_countriess;

-- 15) 

