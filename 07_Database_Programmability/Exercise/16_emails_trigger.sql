-- 16. Emails Trigger
-- https://judge.softuni.org/Contests/Compete/Index/298#15

CREATE TABLE notification_emails(
	id INT PRIMARY KEY AUTO_INCREMENT, 
	recipient INT NOT NULL, 
	subject TEXT, 
	body TEXT
);

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

CREATE TRIGGER tr_new_record_to_email
AFTER INSERT
ON logs
FOR EACH ROW
BEGIN
	INSERT INTO notification_emails(
		recipient,
		subject,
		body)
	VALUES (
		NEW.account_id,
		CONCAT('Balance change for account: ', NEW.account_id),
		CONCAT('On ', NOW(), ' your balance was changed from ', NEW.old_sum, ' to ', NEW.new_sum, '.')
	);
END$$

CALL usp_deposit_money(1, 10);
