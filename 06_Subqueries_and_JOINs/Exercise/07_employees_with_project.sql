-- 07. Employees with Project
-- url: https://judge.softuni.org/Contests/Compete/Index/606#6

SELECT
	e.employee_id,
	e.first_name,
	p.name AS 'project_name'
FROM
	employees e
JOIN employees_projects ep ON
	e.employee_id = ep.employee_id
JOIN projects p ON
	ep.project_id = p.project_id
WHERE
	DATE(p.start_date) > '2002-08-13'
	AND p.end_date IS NULL
ORDER BY
	e.first_name,
	project_name
LIMIT 5;