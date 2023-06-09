DELIMITER @@

CREATE FUNCTION udf_client_bill(full_name VARCHAR(50))
RETURNS DECIMAL(19, 2)
DETERMINISTIC
BEGIN
	RETURN (SELECT
		SUM(p.price)
	FROM
		products p
	JOIN orders_products op ON
		p.id = op.product_id
	JOIN orders o ON
		op.order_id = o.id
	JOIN orders_clients oc ON
		o.id = oc.order_id
	JOIN clients c ON
		oc.client_id = c.id
	WHERE
		CONCAT_WS(' ', c.first_name, c.last_name) = full_name
	GROUP BY
		c.id);
END@@

-- Query
SELECT c.first_name,c.last_name, udf_client_bill('Silvio Blyth') as 'bill' FROM clients c
WHERE c.first_name = 'Silvio' AND c.last_name= 'Blyth';
