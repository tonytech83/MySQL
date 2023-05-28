-- 01. Employee Address
-- url: https://judge.softuni.org/Contests/Compete/Index/606#0

SELECT
	e.employee_id,
	e.job_title,
	e.address_id,
	a.address_text
FROM
	employees e
JOIN addresses a ON
	e.address_id = a.address_id
ORDER BY
	address_id
LIMIT 5;