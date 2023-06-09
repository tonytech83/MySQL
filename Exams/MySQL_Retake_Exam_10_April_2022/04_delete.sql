DELETE
	c
FROM
	countries c
LEFT JOIN movies m ON
	c.id = m.country_id
WHERE
	m.country_id IS NULL;