-- 3. Minimum Salary
-- url: https://judge.softuni.org/Contests/Practice/Index/744#2

SELECT
	`department_id`,
	ROUND(MIN(`salary`), 2) AS 'Min Salary'
FROM
	`employees`
GROUP BY
	`department_id`
HAVING
	`Min Salary` > 800;
