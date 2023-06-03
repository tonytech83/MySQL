UPDATE
	employees_clients
SET
	employee_id = (
		SELECT
			e.id AS 'e_id'
		FROM
			employees e
		JOIN employees_clients ec ON
			e.id = ec.employee_id
		WHERE
			ec.client_id = ec.employee_id
		GROUP BY
			e.id
		ORDER BY
			ec.employee_id
		LIMIT 1
	);

