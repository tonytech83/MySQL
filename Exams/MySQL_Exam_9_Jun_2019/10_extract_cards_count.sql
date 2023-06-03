DELIMITER $$

CREATE FUNCTION udf_client_cards_count(name VARCHAR(30))
RETURNS INT
DETERMINISTIC
BEGIN
	RETURN (
		SELECT
			COUNT(c.id)
		FROM
			cards c
		JOIN bank_accounts ba ON
			c.bank_account_id = ba.id
		JOIN clients c2 ON
			ba.client_id = c2.id
		WHERE 
			c2.full_name = name
		GROUP BY 
			c2.id
	);
END$$

SELECT c.full_name, udf_client_cards_count('Baxy David') as `cards` FROM clients c
WHERE c.full_name = 'Baxy David';

