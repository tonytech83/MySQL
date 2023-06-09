SELECT
	t.id,
	t.capacity,
	COUNT(*) AS 'count_clients',
	CASE 
		WHEN t.capacity > COUNT(*) THEN 'Free seats'
		WHEN t.capacity = COUNT(*) THEN 'Full'
		ELSE 'Extra seats'
	END AS 'availability'
FROM
	tables t
JOIN orders o ON
	t.id = o.table_id
JOIN orders_clients oc ON
	o.id = oc.order_id
JOIN clients c ON
	oc.client_id = c.id
WHERE
	t.`floor` = 1
GROUP BY
	t.id
ORDER BY
	t.id DESC;