create database college;

use college;


create table student(
	rollno INT PRIMARY KEY,
    name VARCHAR(10), 
    marks INT NOT NULL,
    grade CHAR(1),
    city VARCHAR(20)
);

INSERT INTO student(rollno, name, marks, grade, city)
VALUES
(101, "Anil", 78, "C", "Pune"),
(102, "Bhumika", 88, "B", "Aligarh"),
(103, "Chetan", 95, "A", "Mumbai"),
(104, "Dhruv", 96, "A", "Pune"),
(105, "Farah", 75, "C", "ALigarh"),
(106, "Arif", 60, "D", "Pune");

select * from student;

SELECT * 
FROM student
WHERE marks>80;

SELECT rollno, marks
FROM student;

SELECT * 
FROM student 
WHERE marks>80 AND city="Pune";

UPDATE student
SET grade ="O"
WHERE grade = "A";

SET SQL_SAFE_UPDATES = 0;

SELECT rollno, grade
FROM student;

UPDATE student
SET marks=85
WHERE rollno=106;

select * from student;

update student
set marks = marks +1;


update student
set marks=12
where rollno=105;

delete from student
where marks<33;

select * from student;


-- Foreign Key

create table dept(
	id int  primary key,
    name varchar(20)
); 

create table teacher(
	id int primary key,
    name varchar(20),
    dept_id int,
    foreign key(dept_id) references dept(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

insert into dept values (01, "Science"), (02, "English"), (03, "Hindi");

select * from dept;

insert into teacher values
(1001, "Nadi", 01),
(1002, "Fazu", 03),
(1003, "Saji", 01),
(1004, "Arf", 02);

select * from teacher;

DROP table teacher;

update dept
set id = 10
where id = 01;

select * from dept;


alter table student
add column age int;

alter table student
drop column age;

-- SUB QUERRIES
SELECT name, marks
FROM student
WHERE marks > (
	SELECT AVG(marks)
    FROM student);