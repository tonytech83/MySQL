DELIMITER $$

CREATE FUNCTION udf_customer_products_count(name VARCHAR(30))
RETURNS INT
DETERMINISTIC
BEGIN
	RETURN (
		SELECT
			COUNT(*)
		FROM
			orders o
		JOIN customers c ON
			o.customer_id = c.id
		JOIN orders_products op ON
			o.id = op.order_id
		WHERE
			c.first_name = name
		GROUP BY
			c.id
	);
END$$

-- Query
SELECT c.first_name,c.last_name, udf_customer_products_count('Shirley') as `total_products` FROM customers c
WHERE c.first_name = 'Shirley';



