-- 03. Town Names Starting With
-- url: https://judge.softuni.org/Contests/Compete/Index/298#2

DELIMITER $$

CREATE PROCEDURE usp_get_towns_starting_with(starting_string VARCHAR(50))
BEGIN
	SELECT
		t.name AS 'town_name'
	FROM
		towns t
	WHERE
		t.name LIKE CONCAT(starting_string, '%')
	ORDER BY 
		t.name;
END$$

DELIMITER ;

CALL usp_get_towns_starting_with('b');
