-- 3. Employees Promotion By ID
-- url: https://judge.softuni.org/Contests/Practice/Index/768#2

DELIMITER $$

CREATE PROCEDURE usp_raise_salary_by_id(id INT(10))
BEGIN
	
	DECLARE is_employee INT;

	START TRANSACTION;
	SET is_employee := (SELECT COUNT(*) FROM employees WHERE employee_id = id);
			
	UPDATE employees SET salary = salary * 1.05 WHERE employee_id = id;
	
	IF (is_employee < 1) THEN
		ROLLBACK;
	ELSE
		COMMIT;
	END IF;

END$$
