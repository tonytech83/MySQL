-- 1. Managers
-- url: https://judge.softuni.org/Contests/Practice/Index/754#0

SELECT
	employee_id,
	CONCAT_WS(' ', first_name, last_name) AS 'full_name',
	d.department_id,
	d.name AS 'department_name'
FROM
	departments d
JOIN employees e ON
	d.manager_id = e.employee_id 
ORDER BY
	e.employee_id
LIMIT 5;