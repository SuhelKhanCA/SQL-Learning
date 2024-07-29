CREATE DATABASE university;

USE university;

CREATE TABLE student (
	id INT PRIMARY KEY,
    name VARCHAR(15)
);

INSERT INTO student
(id, name)
VALUES
(101, "Shasi"),
(102, "Neha"),
(103, "Sheetal");

CREATE TABLE course(
	stu_id INT,
    course VARCHAR(10)
);

INSERT INTO course
(stu_id, course)
VALUES
(102, "English"),
(105, "Math"),
(103, "Science"),
(107, "CompSci");


-- JOIN
SELECT *
FROM student
INNER JOIN course
ON id=stu_id;