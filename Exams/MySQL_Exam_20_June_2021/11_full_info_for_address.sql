DELIMITER $$

CREATE PROCEDURE udp_courses_by_address (address_name VARCHAR(100))
BEGIN
	SELECT
		a.name,
		c.full_name,
		CASE 
			WHEN c2.bill <= 20 THEN 'Low'
			WHEN c2.bill <= 30 THEN 'Medium'
			ELSE 'High'
		END AS 'level_of_bill',
		c3.make,
		c3.`condition`,
		c4.name AS 'cat_name'
	FROM
		clients c
	JOIN courses c2 ON
		c.id = c2.client_id
	JOIN addresses a ON
		c2.from_address_id = a.id
	JOIN cars c3 ON
		c2.car_id = c3.id
	JOIN categories c4 ON
		c3.category_id = c4.id
	WHERE
		a.name = address_name
	ORDER BY
		c3.make,
		c.full_name;
END$$


-- Query
CALL udp_courses_by_address('66 Thompson Drive');

