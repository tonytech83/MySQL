-- 17. Salary Challenge
-- url: https://judge.softuni.org/Contests/Compete/Index/296#16

SELECT
	first_name,
	last_name,
	department_id
FROM
	employees e1
WHERE
	salary > (
	SELECT
		AVG(salary)
	FROM
		employees e2
	WHERE
		e1.department_id = e2.department_id
		)
ORDER BY
	department_id,
	employee_id
LIMIT 10;