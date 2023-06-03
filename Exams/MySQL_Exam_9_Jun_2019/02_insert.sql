INSERT INTO cards (card_number, card_status, bank_account_id) (
	SELECT
		REVERSE(c.full_name) AS 'card_number',
		'Active' AS 'card_status',
		c.id AS 'bank_account_id'
	FROM
		clients c
	WHERE c.id BETWEEN 191 AND 200
);

