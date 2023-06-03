DELETE FROM employees WHERE id NOT IN 
	(
	SELECT
		ec.employee_id
	FROM
		employees_clients ec
	GROUP BY 
		ec.employee_id
	);
