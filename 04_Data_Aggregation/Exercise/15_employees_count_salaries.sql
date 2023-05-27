-- 15. Employees Count Salaries
-- url: https://judge.softuni.org/Contests/Compete/Index/296#14

SELECT
	COUNT(salary)
FROM
	employees
WHERE
	manager_id IS NULL
