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

