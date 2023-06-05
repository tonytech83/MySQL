SELECT
	c.id AS 'car_id',
	c.make,
	c.mileage,
	COUNT(c2.id) AS 'count_of_courses',
	ROUND(AVG(c2.bill), 2) AS 'avg_bill'
FROM
	cars c
LEFT JOIN courses c2 ON
	c.id = c2.car_id
GROUP BY
	c.id
HAVING
	count_of_courses != 2
ORDER BY
	count_of_courses DESC,
	c.id;