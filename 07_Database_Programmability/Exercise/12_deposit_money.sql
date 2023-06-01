-- 12. Deposit Money
-- url: https://judge.softuni.org/Contests/Compete/Index/298#11

DELIMITER $$

CREATE PROCEDURE usp_deposit_money(account_id INT, money_amount DECIMAL(19,4))
BEGIN
	START TRANSACTION;

		IF money_amount <= 0 THEN ROLLBACK;
		ELSE
			UPDATE accounts SET balance = balance + money_amount
			WHERE id = account_id;
		END IF;
	COMMIT;

END$$

CALL usp_deposit_money(1, 10);
SELECT * FROM accounts WHERE id = 1;