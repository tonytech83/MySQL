-- 15. Log Accounts Trigger
-- url: https://judge.softuni.org/Contests/Compete/Index/298#14

CREATE TABLE logs(
	log_id INT PRIMARY KEY AUTO_INCREMENT, 
	account_id INT, 
	old_sum DECIMAL(19,4), 
	new_sum DECIMAL(19,4)
);

DELIMITER $$

CREATE TRIGGER tr_update_balance
AFTER UPDATE
ON accounts
FOR EACH ROW 
BEGIN 
	
	INSERT INTO logs(
		account_id,
		old_sum,
		new_sum)
	VALUES (
		OLD.id,
		OLD.balance,
		NEW.balance);
END$$


CALL usp_deposit_money(1, 10);