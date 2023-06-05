SELECT
	c.full_name,
	COUNT(c2.car_id) AS 'count_of_cars',
	ROUND(SUM(c2.bill), 2) AS 'total_sum'
FROM
	clients c
JOIN courses c2 ON
	c.id = c2.client_id
GROUP BY
	c.id
HAVING
	c.full_name LIKE '_a%'
	AND count_of_cars > 1
ORDER BY
	c.full_name;