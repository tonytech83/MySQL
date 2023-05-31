-- 01. Employees with Salary Above 35000
-- url: https://judge.softuni.org/Contests/Compete/Index/298#0

DELIMITER $$

CREATE PROCEDURE usp_get_employees_salary_above_35000() 
BEGIN
	
	SELECT
		`first_name`,
		`last_name`
	FROM
		`employees`
	WHERE
		`salary` > 35000
	ORDER BY
		`first_name`,
		`last_name`,
		`employee_id`;

END$$

CALL usp_get_employees_salary_above_35000();