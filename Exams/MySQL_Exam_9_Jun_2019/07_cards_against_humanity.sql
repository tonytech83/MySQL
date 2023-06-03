SELECT
	c.id,
	CONCAT_WS(' : ', c.card_number, c2.full_name) AS 'card_token'
FROM
	cards c
JOIN bank_accounts ba ON
	c.bank_account_id = ba.id
JOIN clients c2 ON
	ba.client_id = c2.id
ORDER BY
	c.id DESC;