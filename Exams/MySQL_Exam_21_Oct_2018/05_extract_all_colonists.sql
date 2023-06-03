SELECT
	c.id,
	CONCAT_WS(' ', c.first_name, c.last_name) AS 'full_name',
	c.ucn
FROM
	colonists c
ORDER BY
	c.first_name,
	c.last_name,
	c.id;