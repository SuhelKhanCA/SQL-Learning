CREATE DATABASE TEST1;
CREATE DATABASE IF NOT EXISTS TEST1;
DROP DATABASE TEST1;

CREATE DATABASE college;
USE college;

CREATE TABLE student(
id INT PRIMARY KEY,
name VARCHAR(20),
age INT NOT NULL
);

INSERT INTO STUDENT VALUES(1, "AMAN", 26);
INSERT INTO STUDENT VALUES(2, "sharddha", 24);

SELECT * FROM STUDENT;

SHOW TABLES;

SHOW DATABASES;

DROP TABLE STUDENT;

CREATE TABLE STUDENT(
rollno INT PRIMARY KEY,
name VARCHAR(20)
);

INSERT INTO STUDENT VALUES(1, "AMAN");
INSERT INTO STUDENT VALUES(2, "SHRADDHA");

SELECT * FROM STUDENT;

INSERT INTO STUDENT
(rollno, name)
VALUES
(3, "RAHUL"),
(4, "SUHEL");

-- PRACTICE SET 1
CREATE DATABASE XYZ;

USE XYZ;

CREATE TABLE EMPLOYEE(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    salary double
);

INSERT INTO EMPLOYEE VALUES (4, "CASEY", 8000.2);

INSERT INTO EMPLOYEE
(id, name, salary)
VALUES
(2, "BOB", 6000.2),
(4, "CASEY", 8000.2);

USE COLLEGE;

CREATE TABLE temp1(
	id INT UNIQUE
);

INSERT INTO temp1 VALUES(101);
INSERT INTO temp1 VALUES(102);

SELECT * FROM TEMP1;

CREATE TABLE temp(
	id INT UNIQUE,
    name VARCHAR(20),
    age INT,
    city VARCHAR(20),
    PRIMARY KEY(id, name)
);

CREATE TABLE emp(
id INT,
salary INT DEFAULT 2500
);

INSERT INTO EMP(ID) VALUES(101);

SELECT * FROM EMP;

CREATE TABLE city(
	id INT PRIMARY KEY,
    city VARCHAR(50),
    age INT 
    CONSTRAINT age_check CHECK (age >= 18 AND city="Delhi")
);

CREATE TABLE NewTab(
	age INT CHECK (age >= 18)
);

-- SUCCESSFUL ENTRY
INSERT INTO NEWTAB
VALUES (19);

-- CHECK VOILATED
INSERT INTO NEWTAB
VALUES (11);

