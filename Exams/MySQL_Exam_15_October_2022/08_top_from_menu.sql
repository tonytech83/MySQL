SELECT
	p.id,
	p.name,
	COUNT(*) AS 'count'
FROM
	products p
JOIN orders_products op ON
	p.id = op.product_id
JOIN orders o ON
	op.order_id = o.id
GROUP BY
	p.id
HAVING
	`count` >= 5
ORDER BY
	`count` DESC,
	p.name;