-- 09. Employee Manager
-- url: https://judge.softuni.org/Contests/Compete/Index/606#8

SELECT
	e.employee_id ,
	e.first_name,
	e2.employee_id AS 'manager_id',
	e2.first_name AS 'manager_name'
FROM
	employees e
JOIN employees e2 ON
	e.manager_id = e2.employee_id
WHERE
	e.manager_id IN (3, 7)
ORDER BY
	e.first_name;