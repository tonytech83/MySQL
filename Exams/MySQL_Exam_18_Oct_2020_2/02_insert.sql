INSERT INTO products_stores (product_id, store_id) (
		SELECT 
			p.id AS 'product_id',
			1 AS 'store_id'	
		FROM products p
		WHERE p.id NOT IN (SELECT ps.product_id FROM products_stores ps)
);
