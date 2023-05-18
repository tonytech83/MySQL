-- 1. Departments Info
-- url: https://judge.softuni.org/Contests/Practice/Index/744#0

SELECT
	department_id,
	COUNT(id) AS 'Number of employees'
FROM
	employees
GROUP BY
	department_id;
