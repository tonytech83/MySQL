DELIMITER $$

CREATE PROCEDURE udp_clientinfo(full_name VARCHAR(50))
BEGIN
	SELECT
		c.full_name,
		c.age,
		ba.account_number,
		CONCAT('$', ba.balance) AS 'balance'
	FROM
		clients c
	JOIN bank_accounts ba ON
		c.id = ba.client_id
	WHERE
		c.full_name = full_name;
END$$

CALL udp_clientinfo('Hunter Wesgate');