create database `minions`;

use `minions`;

-- minions (id, name, age)
create table `minions` (
	`id` int primary key auto_increment,
    `name` varchar(50),
    `age` int
);
-- towns (town_id, name)
create table `towns` (
	`town_id` int primary key auto_increment,
    `name` varchar(50)
);