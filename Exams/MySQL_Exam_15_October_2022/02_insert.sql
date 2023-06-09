INSERT INTO products (name, `type`, price) (
	SELECT
		CONCAT_WS(' ', w.last_name, 'specialty'),
		'Cocktail',
		CEIL(w.salary * 0.01)
	FROM
		waiters w
	WHERE
		w.id > 6
);
