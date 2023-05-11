use minions;

insert into towns (id, name) 
values (1, 'Sofia'),
(2, 'Plovdiv'),
(3, 'Varna');

insert into minions (id, name, age, town_id)
values (1, 'Kevin', 22, 1),
(2, 'Bob', 15, 3),
(3, 'Steward', NULL, 2);
