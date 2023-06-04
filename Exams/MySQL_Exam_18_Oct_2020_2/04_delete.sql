DELETE
FROM
	employees e
WHERE
	e.salary >= 6000
	AND e.manager_id IS NOT NULL;