-- 05. Employees Without Project
-- url: https://judge.softuni.org/Contests/Compete/Index/606#4

SELECT
	e.employee_id,
	e.first_name
FROM
	employees e
LEFT JOIN employees_projects ep ON
	e.employee_id = ep.employee_id
	AND ep.project_id IS NULL
ORDER BY
	e.employee_id DESC
LIMIT 3;
