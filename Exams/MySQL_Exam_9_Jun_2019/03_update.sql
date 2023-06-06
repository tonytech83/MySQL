UPDATE
	employees_clients AS ec
JOIN (
	SELECT
		employee_id
	FROM
		employees_clients
	GROUP BY
		employee_id
	ORDER BY
		COUNT(client_id),
		employee_id
	LIMIT 1
) AS sq ON
	ec.client_id = ec.employee_id
SET
	ec.employee_id = sq.employee_id;