CREATE TABLE `people` (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(200) NOT NULL,
    `picture` BLOB,
    `height` DOUBLE(10 , 2 ),
    `weight` DOUBLE(10 , 2 ),
    `gender` CHAR(1) NOT NULL,
    `birthdate` DATE NOT NULL,
    `biography` TEXT
);
    
insert into `people` (name, gender, birthdate) 
values ('Ivan Ivanov', 'm', date(now())),
('Ivanka Ivanova', 'f', date(now())),
('Ivan Ivanov', 'm', date(now())),
('Ivanka Ivanova', 'f', date(now())),
('Ivan Ivanov', 'm', date(now()));     
