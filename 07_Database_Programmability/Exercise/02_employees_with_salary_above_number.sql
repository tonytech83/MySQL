-- 02. Employees with Salary Above Number
-- url: https://judge.softuni.org/Contests/Compete/Index/298#1

DELIMITER $$

CREATE PROCEDURE usp_get_employees_salary_above(searched_salary DECIMAL(19,4))
BEGIN
	SELECT
		first_name,
		last_name
	FROM
		employees
	WHERE 
		salary >= searched_salary
	ORDER BY
		first_name,
		last_name,
		employee_id;
END$$

DELIMITER ;

CALL usp_get_employees_salary_above(45000);
