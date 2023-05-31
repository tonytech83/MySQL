-- 06. Employees by Salary Level
-- https://judge.softuni.org/Contests/Compete/Index/298#5

DELIMITER $$

CREATE PROCEDURE usp_get_employees_by_salary_level(salary_level VARCHAR(10))
BEGIN 
	SELECT
		e.first_name,
		e.last_name
	FROM
		employees e
	WHERE 
		ufn_get_salary_level(salary) = salary_level
	ORDER BY
		e.first_name DESC,
		e.last_name DESC;
END$$


CALL usp_get_employees_by_salary_level('High');
