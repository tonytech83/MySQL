SELECT
	CONCAT_WS(' ', e.first_name, e.last_name) AS 'name',
	e.started_on,
	COUNT(ec.client_id) AS 'count_of_clients'
FROM
	employees e
JOIN employees_clients ec ON
	e.id = ec.employee_id
GROUP BY
	ec.employee_id
ORDER BY
	count_of_clients DESC,
	e.id
LIMIT 5;