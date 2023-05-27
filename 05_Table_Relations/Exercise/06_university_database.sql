-- 06. University Database
-- url: https://judge.softuni.org/Contests/Compete/Index/605#5

CREATE DATABASE university;

USE university;

CREATE TABLE majors (
	major_id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(50)
);

CREATE TABLE students (
	student_id INT PRIMARY KEY AUTO_INCREMENT,
	student_number VARCHAR(12) NOT NULL UNIQUE,
	student_name VARCHAR(50),
	major_id INT,
	CONSTRAINT fk_students_majors
		FOREIGN KEY (major_id)
		REFERENCES majors(major_id)
);

CREATE TABLE payments (
	payment_id INT PRIMARY KEY AUTO_INCREMENT,
	payment_date DATE,
	payment_amount DECIMAL (8, 2),
	student_id INT,
	CONSTRAINT fk_payments_students
		FOREIGN KEY (student_id)
		REFERENCES students(student_id)
);

CREATE TABLE subjects (
	subject_id INT PRIMARY KEY AUTO_INCREMENT,
	subject_name VARCHAR(50) NOT NULL
);

CREATE TABLE agenda (
	student_id INT,
	subject_id INT,
	CONSTRAINT pk_agenda
		PRIMARY KEY (student_id, subject_id),
	CONSTRAINT fk_agenda_subjects
		FOREIGN KEY (subject_id)
		REFERENCES subjects(subject_id),
	CONSTRAINT fk_agenda_students
		FOREIGN KEY (student_id)
		REFERENCES students(student_id)
);