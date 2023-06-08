SELECT
	p.id,
	p.brand_id,
	p.name,
	p.quantity_in_stock
FROM
	products p
WHERE
	p.price > 1000
	AND p.quantity_in_stock < 30
ORDER BY
	p.quantity_in_stock,
	p.id;