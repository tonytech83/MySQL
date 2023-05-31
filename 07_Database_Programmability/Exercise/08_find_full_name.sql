-- 08. Find Full Name
-- url: https://judge.softuni.org/Contests/Compete/Index/298#7

DELIMITER $$

CREATE PROCEDURE usp_get_holders_full_name()
BEGIN
	SELECT CONCAT(first_name, ' ', last_name) AS 'full_name'
	FROM account_holders
	ORDER BY full_name;
END$$

CALL usp_get_holders_full_name();

