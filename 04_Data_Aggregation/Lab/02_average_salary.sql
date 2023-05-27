-- 2. Average Salary
-- url: https://judge.softuni.org/Contests/Practice/Index/744#1

SELECT
	department_id,
	ROUND(AVG(salary), 2) AS 'Average Salary'
FROM
	employees
GROUP BY
	department_id;