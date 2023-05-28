-- 03. Sales Employee
-- url: https://judge.softuni.org/Contests/Compete/Index/606#2

SELECT
	e.employee_id,
	e.first_name,
	e.last_name,
	d.name AS 'department_name'
FROM
	employees e
JOIN departments d ON
	e.department_id = d.department_id
	AND d.name = 'Sales'
ORDER BY
	e.employee_id DESC;