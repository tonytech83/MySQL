-- 16. 3rd Highest Salary
-- url: https://judge.softuni.org/Contests/Compete/Index/296#15

SELECT
	DISTINCT 
	department_id,
	(
	SELECT
		DISTINCT 
		salary
	FROM
		employees e2
	WHERE
		e2.department_id = e1.department_id
	ORDER BY
		salary DESC
	LIMIT 1 OFFSET 2
	) AS 'third_highest_salary'
FROM
	employees e1
HAVING
	`third_highest_salary` IS NOT NULL
ORDER BY
	department_id;