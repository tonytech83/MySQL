-- 05. Salary Level Function
-- url: https://judge.softuni.org/Contests/Compete/Index/298#4

DELIMITER $$

CREATE FUNCTION ufn_get_salary_level(target_salary DECIMAL(19,4))
RETURNS VARCHAR(10)
DETERMINISTIC
BEGIN
	DECLARE salary_level VARCHAR(10);

	IF target_salary < 30000 THEN SET salary_level := 'Low';
	ELSEIF target_salary BETWEEN 30000 AND 50000  THEN SET salary_level := 'Average';
	ELSE SET salary_level := 'High';
	END IF;
	
	RETURN salary_level;

END$$

SELECT ufn_get_salary_level(50001) AS 'Salary Level';