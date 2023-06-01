-- 13. Withdraw Money
-- url: https://judge.softuni.org/Contests/Compete/Index/298#12

DELIMITER $$

CREATE PROCEDURE usp_withdraw_money(account_id INT, money_amount DECIMAL(19,4))
BEGIN
	
	START TRANSACTION;
		IF (money_amount <= 0 OR (SELECT balance FROM accounts WHERE id = account_id) < money_amount) THEN ROLLBACK;
		ELSE
			UPDATE accounts SET balance = balance - money_amount WHERE id = account_id;
		END IF;
	COMMIT;
	
END$$

CALL usp_withdraw_money(1, 10);
SELECT * FROM accounts a WHERE id = 1;

 