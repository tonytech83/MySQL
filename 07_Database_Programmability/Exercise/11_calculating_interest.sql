-- 11. Calculating Interest
-- url: https://judge.softuni.org/Contests/Compete/Index/298#10


DELIMITER $$

CREATE PROCEDURE usp_calculate_future_value_for_account(account_id INT(11), rate DECIMAL(19,4))
BEGIN
	SELECT
		a.id AS 'account_id',
		ah.first_name,
		ah.last_name,
		a.balance AS 'current_balance',
		ufn_calculate_future_value(a.balance, rate, 5) AS 'balance_in_5_years'
	FROM
		account_holders ah
	JOIN accounts a ON
		ah.id = a.account_holder_id
	WHERE a.id = account_id;
END$$

CALL usp_calculate_future_value_for_account(1, 0.1);