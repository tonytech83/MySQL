SELECT
	p.name AS 'product_name',
	p.price,
	p.best_before,
	CONCAT_WS('', LEFT(p.description, 10), '...') AS 'short_description',
	p2.url
FROM
	products p
JOIN pictures p2 ON
	p.picture_id = p2.id
WHERE
	LENGTH(p.description) > 100
	AND YEAR(p2.added_on) < 2019
	AND p.price > 20
ORDER BY
	p.price DESC;