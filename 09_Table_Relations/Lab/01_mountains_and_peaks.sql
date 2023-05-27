CREATE table `mountains` (
	id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(30) NOT NULL
);

CREATE TABLE `peaks` (
	id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(30) NOT NULL,
	mountain_id INT NOT NULL
);

ALTER TABLE `peaks`
ADD CONSTRAINT `fk_peaks_mountains`
FOREIGN KEY (mountain_id)
REFERENCES mountains(id);

INSERT
	INTO
	`mountains`(`name`)
VALUES 
	('Rila'),
	('Pirin');

INSERT
	INTO
	peaks (name, mountain_id)
VALUES 
	('Musala', 1),
	('Vihren', 2);
