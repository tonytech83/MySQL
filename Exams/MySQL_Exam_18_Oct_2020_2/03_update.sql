UPDATE
	employees AS e 
SET
	e.manager_id = 3,
	e.salary = salary - 500
WHERE 
	YEAR(hire_date) > 2003 AND
	e.store_id NOT IN (SELECT id FROM stores WHERE name IN ('Cardguard', 'Veribet'));

