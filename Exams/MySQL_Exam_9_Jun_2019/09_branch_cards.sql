SELECT
	b.name,
	COUNT(c2.id) AS 'count_of_cards'
FROM
	branches b
LEFT JOIN employees e ON
	b.id = e.branch_id
LEFT JOIN employees_clients ec ON
	e.id = ec.employee_id
LEFT JOIN clients c ON
	ec.client_id = c.id
LEFT JOIN bank_accounts ba ON
	c.id = ba.client_id
LEFT JOIN cards c2 ON
	ba.id = c2.bank_account_id
GROUP BY
	b.id
ORDER BY
	count_of_cards DESC,
	b.name;