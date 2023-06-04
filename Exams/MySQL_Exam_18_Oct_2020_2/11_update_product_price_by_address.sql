DELIMITER $$

CREATE PROCEDURE udp_update_product_price (address_name VARCHAR (50))
BEGIN

	UPDATE products AS p
	JOIN products_stores AS ps ON p.id = ps.product_id
	JOIN stores AS s ON ps.store_id = s.id
	JOIN addresses AS a ON s.address_id = a.id
	SET p.price = p.price + (IF(LEFT(a.name, 1) = '0', 100 , 200)) 
	WHERE a.name = address_name;

END$$

-- Query
CALL udp_update_product_price('07 Armistice Parkway');
SELECT name, price FROM products WHERE id = 15;

-- Query
CALL udp_update_product_price('1 Cody Pass');
SELECT name, price FROM products WHERE id = 17;

