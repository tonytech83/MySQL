-- 4. High Salary
-- url: https://judge.softuni.org/Contests/Practice/Index/754#3

SELECT
	COUNT(e.employee_id) AS 'count'
FROM
	employees e
WHERE
	e.salary > (
	SELECT
		AVG(e2.salary)
	FROM
		employees e2
);