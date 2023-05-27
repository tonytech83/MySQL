-- 11. Movies Database

create database movies;
use movies;

CREATE TABLE directors (
    id INT PRIMARY KEY AUTO_INCREMENT,
    director_name VARCHAR(50) NOT NULL,
    notes TEXT
);

insert into directors (director_name)
value ('test'),
('test'),
('test'),
('test'),
('test');

CREATE TABLE genres (
    id INT PRIMARY KEY AUTO_INCREMENT,
    genre_name VARCHAR(50) NOT NULL,
    notes TEXT
);

insert into genres(genre_name)
values ('test'),
('test'),
('test'),
('test'),
('test');

CREATE TABLE categories (
    id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(50) NOT NULL,
    notes TEXT
);

insert	into  categories(category_name)
values ('test'),
('test'),
('test'),
('test'),
('test');

CREATE TABLE movies (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(50) NOT NULL,
    director_id INT,
    copyright_year YEAR,
    length DOUBLE(10 , 2 ),
    genre_id INT,
    category_id INT,
    rating DOUBLE(2 , 2 ),
    notes TEXT,
    FOREIGN KEY (director_id)
        REFERENCES directors (id),
    FOREIGN KEY (genre_id)
        REFERENCES genres (id),
    FOREIGN KEY (category_id)
        REFERENCES categories (id)
);

insert into movies(title, director_id, genre_id, category_id)
values ('test', 1, 5, 4),
('test', 5, 2, 2),
('test', 1, 2, 3),
('test', 4, 3, 2),
('test', 3, 4, 5);