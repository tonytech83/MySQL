-- 3. Employees Without Managers
-- url: https://judge.softuni.org/Contests/Practice/Index/754#2

SELECT
	e.employee_id,
	e.first_name,
	e.last_name,
	e.department_id,
	e.salary
FROM
	employees e
WHERE
	e.manager_id IS NULL;
