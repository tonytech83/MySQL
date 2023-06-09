SELECT
	c.first_name ,
	c.last_name ,
	c.birthdate ,
	c.review
FROM
	clients c
WHERE
	c.card IS NULL
	AND YEAR(c.birthdate) BETWEEN 1978 AND 1993
ORDER BY
	c.last_name DESC,
	c.id
LIMIT 5;