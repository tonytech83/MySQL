-- 12. Car Rental Database

create database car_rental;
use car_rental;

CREATE TABLE categories (
    id INT PRIMARY KEY AUTO_INCREMENT,
    category VARCHAR(30) NOT NULL,
    daily_rate DOUBLE,
    weekly_rate DOUBLE,
    monthly_rate DOUBLE,
    weekend_rate DOUBLE
);

CREATE TABLE cars (
    id INT PRIMARY KEY AUTO_INCREMENT,
    plate_number VARCHAR(8) NOT NULL,
    make VARCHAR(20) NOT NULL,
    model VARCHAR(20) NOT NULL,
    car_year YEAR,
    category_id INT,
    doors INT(1),
    picture BLOB,
    car_condition VARCHAR(20),
    available BOOLEAN,
    FOREIGN KEY (category_id)
        REFERENCES categories (id)
);

CREATE TABLE employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    title VARCHAR(30),
    notes TEXT
);

CREATE TABLE customers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    driver_licence_number varchar(10) NOT NULL,
    full_name VARCHAR(100) not null,
    address VARCHAR(150) not null,
    city VARCHAR(20) not null,
    zip_code INT(4),
    notes TEXT
);

CREATE TABLE rental_orders (
    id INT PRIMARY KEY AUTO_INCREMENT,
    employee_id INT,
    customer_id INT,
    car_id INT,
    car_condition VARCHAR(20) NOT NULL,
    tank_level VARCHAR(10) NOT NULL,
    kilometrage_start DOUBLE(10 , 2 ),
    kilometrage_end DOUBLE(10 , 2 ),
    total_kilometrage DOUBLE,
    start_date DATE,
    end_date DATE,
    total_days INT,
    rate_applied DOUBLE,
    tax_rate DOUBLE,
    order_status VARCHAR(25),
    notes TEXT,
    FOREIGN KEY (employee_id)
        REFERENCES employees (id),
    FOREIGN KEY (customer_id)
        REFERENCES customers (id),
    FOREIGN KEY (car_id)
        REFERENCES cars (id)
);

insert into categories(category)
values('sedan'),
('station wagon'),
('targa');

insert into cars(plate_number, make, model, category_id)
values ('CB0773PT', 'AUDI', 'A3', 1),
('CT0023TT', 'VW', 'Polo', 2),
('CB0010MM', 'Mercedes', 'C230', 3);

insert into employees(first_name, last_name)
values ('Ivan', 'Ivanov'),
('Stoqn', 'Stoqnov'),
('Pencho', 'Penchev');

insert into customers(driver_licence_number, full_name, address, city)
values ('1234564', 'Kiril Kirchev', 'sadasd dasda', 'Sofia'),
('76645353', 'Petar Radev', 'sdada fdfdfdf', 'Stara Zagora'),
('43545567', 'Dian Demerdzhiev', 'dgeed lessaq', 'Galabovo');

insert into rental_orders(employee_id, customer_id, car_id, car_condition, tank_level)
values (3, 1, 3, 'new', 'full'),
(1, 2, 1, 'new', 'empty'),
(2, 3, 2, 'used','middle');