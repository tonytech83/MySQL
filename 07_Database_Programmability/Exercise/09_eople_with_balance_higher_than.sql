-- 09. People with Balance Higher Than
-- url: https://judge.softuni.org/Contests/Compete/Index/298#8

DELIMITER $$

CREATE PROCEDURE usp_get_holders_with_balance_higher_than(target_balance DECIMAL(19,4))
BEGIN
	SELECT first_name, last_name FROM account_holders ah
	JOIN accounts a ON ah.id = a.account_holder_id
	GROUP BY account_holder_id
	HAVING SUM(a.balance) > target_balance
	ORDER BY account_holder_id;
END$$

CALL usp_get_holders_with_balance_higher_than(7000);
