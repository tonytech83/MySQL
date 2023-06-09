SELECT
	c.name,
	COUNT(*) AS 'movies_count'
FROM
	countries c
JOIN movies m ON
	c.id = m.country_id
GROUP BY
	c.id
HAVING
	movies_count >= 7
ORDER BY
	c.name DESC;