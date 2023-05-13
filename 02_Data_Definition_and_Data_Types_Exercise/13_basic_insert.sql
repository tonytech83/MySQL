-- 13. Basic Insert

create database soft_uni;
use soft_uni;

CREATE TABLE towns (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30)
);

CREATE TABLE addresses (
    id INT PRIMARY KEY AUTO_INCREMENT,
    address_text VARCHAR(50) NOT NULL,
    town_id INT,
    FOREIGN KEY (town_id)
        REFERENCES towns (id)
);

CREATE TABLE departments (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL
);

CREATE TABLE employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(30) NOT NULL,
    middle_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    job_title VARCHAR(30) NOT NULL,
    department_id INT,
    hire_date DATE,
    salary DOUBLE(10 , 2 ) NOT NULL,
    address_id INT,
    FOREIGN KEY (department_id)
        REFERENCES departments (id),
    FOREIGN KEY (address_id)
        REFERENCES addresses (id)
);

insert into towns(name)
values ('Sofia'),
('Plovdiv'),
('Varna'),
('Burgas');

insert into addresses(address_text, town_id)
values
	('address 1', 1),
	('address 2', 2),
	('address 3', 1),
	('address 4', 3),
	('address 5', 4);


insert into departments(name)
values ('Engineering'),
('Sales'),
('Marketing'),
('Software Development'),
('Quality Assurance');

insert into employees (first_name, middle_name, last_name, job_title, department_id, hire_date, salary)
values('Ivan', 'Ivanov', 'Ivanov', '.NET Developer', 4, '2013-02-01', 3500.00),
('Petar', 'Petrov', 'Petrov', 'Senior Engineer', 1, '2004-03-02', 4000.00),
('Maria', 'Petrova', 'Ivanova', 'Intern', 5, '2016-08-28', 525.25),
('Georgi', 'Terziev', 'Ivanov', 'CEO', 2, '2007-12-09', 3000.00),
('Peter', 'Pan', 'Pan', 'Intern', 3, '2016-08-28', 599.88);