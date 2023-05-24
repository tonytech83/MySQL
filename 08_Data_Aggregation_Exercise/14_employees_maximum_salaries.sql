-- 14. Employees Maximum Salaries
-- url: https://judge.softuni.org/Contests/Compete/Index/296#13

SELECT
	department_id,
	ROUND(MAX(salary), 4) AS 'max_salary'
FROM
	employees
GROUP BY
	department_id
HAVING
	NOT max_salary BETWEEN 30000 AND 70000
ORDER BY department_id;