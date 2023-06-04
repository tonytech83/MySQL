SELECT
	REVERSE(s.name) AS 'reversed_name',
	CONCAT_WS('-', UPPER(t.name), a.name)AS 'full_address',
	COUNT(e.id) AS 'employees_count'
FROM
	stores s
JOIN addresses a ON
	s.address_id = a.id
JOIN towns t ON
	a.town_id = t.id
JOIN employees e ON
	s.id = e.store_id
GROUP BY
	s.id
HAVING
	employees_count >= 1
ORDER BY
	full_address;