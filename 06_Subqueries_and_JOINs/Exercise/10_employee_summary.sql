-- 10. Employee Summary
-- url: https://judge.softuni.org/Contests/Compete/Index/606#9

SELECT
	e.employee_id ,
	CONCAT(e.first_name, ' ', e.last_name) AS 'employee_name',
	CONCAT(e2.first_name, ' ', e2.last_name) AS 'manager_name',
	d.name AS 'department_name'
FROM
	employees e
JOIN employees e2 ON
	e.manager_id = e2.employee_id
JOIN departments d ON
	e.department_id = d.department_id
ORDER BY
	e.employee_id
LIMIT 5;