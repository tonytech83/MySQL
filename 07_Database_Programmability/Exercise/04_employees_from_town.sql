-- 04. Employees from Town
-- url: https://judge.softuni.org/Contests/Compete/Index/298#3

DELIMITER $$

CREATE PROCEDURE usp_get_employees_from_town(town_name VARCHAR(50))
BEGIN
	SELECT
		e.first_name,
		e.last_name
	FROM
		employees e
	JOIN addresses a ON
		a.address_id = e.address_id
	JOIN towns t ON
		a.town_id = t.town_id
	WHERE
		t.name = town_name
	ORDER BY
		e.first_name,
		e.last_name,
		e.employee_id;
END$$

DELIMITER ;

CALL usp_get_employees_from_town('Sofia');
