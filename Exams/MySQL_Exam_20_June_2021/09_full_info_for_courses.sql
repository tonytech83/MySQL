SELECT
	a.name,
	IF(HOUR(c.`start`) BETWEEN 6 AND 20, 'Day', 'Night') AS 'day_time',
	c.bill,
	c2.full_name,
	c3.make,
	c3.model,
	c4.name AS 'category_name'
FROM
	courses c
JOIN addresses a ON
	c.from_address_id = a.id
JOIN clients c2 ON
	c.client_id = c2.id
JOIN cars c3 ON
	c.car_id = c3.id
JOIN categories c4 ON
	c3.category_id = c4.id
ORDER BY
	c.id;