DELIMITER $$

CREATE PROCEDURE udp_reduce_price(category_name VARCHAR(50))
BEGIN
	UPDATE products p
	LEFT JOIN categories c ON p.category_id = c.id
	LEFT JOIN reviews r ON p.review_id = r.id
	SET p.price = p.price * 0.7
	WHERE r.rating < 4 AND c.name = category_name;
END$$

-- Query
CALL udp_reduce_price ('Phones and tablets');