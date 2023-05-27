-- 4. Delete Mountains
-- url: https://judge.softuni.org/Contests/Practice/Index/748#3


CREATE table `mountains` (
	id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(30) NOT NULL
);

CREATE TABLE `peaks` (
	id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(30) NOT NULL,
	mountain_id INT NOT NULL,
	CONSTRAINT `fk_peaks_mountains`
		FOREIGN KEY (mountain_id)
		REFERENCES mountains(id)
		ON DELETE CASCADE
);

INSERT
	INTO
	`mountains`(`name`)
VALUES 
	('Rila'),
	('Pirin');

INSERT
	INTO
	peaks (name,
	mountain_id)
VALUES 
	('Musala',
1),
	('Vihren',
2);

-----------------------------

DELETE
FROM
	peaks
WHERE
	id = 2;
	
DELETE
FROM
	mountains
WHERE
	id = 2;
	
SELECT * FROM mountains m ;
SELECT * FROM peaks;
