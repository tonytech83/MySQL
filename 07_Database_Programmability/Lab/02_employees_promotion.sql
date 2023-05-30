-- 2. Employees Promotion
-- url: https://judge.softuni.org/Contests/Practice/Index/768#1

DELIMITER $$

CREATE PROCEDURE usp_raise_salaries(department_name VARCHAR(50))
BEGIN
	
	UPDATE employees SET salary = salary * 1.05
	WHERE department_id = (
		SELECT department_id FROM departments d
		WHERE d.name = department_name
	);
	
END$$

CALL usp_raise_salaries('Engineering')
