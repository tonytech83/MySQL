SELECT
	s.name,
	COUNT(p.id) AS 'product_count',
	ROUND(AVG(p.price), 2) AS 'avg'
FROM
	stores s
LEFT JOIN products_stores ps ON
	s.id = ps.store_id
LEFT JOIN products p ON
	ps.product_id = p.id
GROUP BY
	s.name
ORDER BY
	product_count DESC,
	avg DESC,
	s.id;