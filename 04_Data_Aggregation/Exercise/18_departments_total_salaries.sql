-- 18. Departments Total Salaries
-- url: https://judge.softuni.org/Contests/Compete/Index/296#17

SELECT
	department_id,
	SUM(salary) AS 'total_sum'
FROM
	employees
GROUP BY
	department_id
ORDER BY
	department_id;