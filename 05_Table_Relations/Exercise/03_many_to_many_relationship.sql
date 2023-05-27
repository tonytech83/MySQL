-- 03. Many-To-Many Relationship
-- url: https://judge.softuni.org/Contests/Compete/Index/605#2

CREATE DATABASE many_to_many;
USE many_to_many;

CREATE TABLE students (
	student_id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(15) NOT NULL
);

CREATE TABLE exams (
	exam_id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(15) NOT NULL
);

ALTER TABLE exams AUTO_INCREMENT = 101;

CREATE TABLE students_exams (
	student_id INT,
	exam_id INT,
	CONSTRAINT pk_students_exams
		PRIMARY KEY (student_id, exam_id),
	CONSTRAINT fk_students_exams
		FOREIGN KEY (student_id)
		REFERENCES students(student_id),
	CONSTRAINT fk_exams_students
		FOREIGN KEY (exam_id)
		REFERENCES exams(exam_id)
);

INSERT 
INTO
	students (name)
VALUES
	('Mila'),
	('Toni'),
	('Ron');
	
INSERT
	INTO
	exams (name)
VALUES
	('Spring MVC'),
	('Neo4j'),
	('Oracle 11g');
	
INSERT
	INTO
	students_exams (student_id,
	exam_id)
VALUES
	(1, 101),
	(1, 102),
	(2, 101),
	(3, 103),
	(2, 102),
	(2, 103);