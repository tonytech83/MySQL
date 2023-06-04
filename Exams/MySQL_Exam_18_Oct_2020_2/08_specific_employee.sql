SELECT
	CONCAT_WS(' ', e.first_name, e.last_name) AS 'Full_name',
	s.name AS 'Store_name',
	a.name AS 'address',
	e.salary
FROM
	employees AS e
JOIN stores s ON
	e.store_id = s.id
JOIN addresses a ON
	s.address_id = a.id
WHERE
	e.salary < 4000
	AND a.name LIKE '%5%'
	AND LENGTH(s.name) > 8
	AND RIGHT(e.last_name, 1) = 'n';

