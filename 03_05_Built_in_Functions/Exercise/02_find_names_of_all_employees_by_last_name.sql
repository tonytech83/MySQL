-- 02. Find Names of All Employees by Last Name
-- URL: https://judge.softuni.org/Contests/Compete/Index/295#1

SELECT
	first_name,
	last_name
FROM
	employees
WHERE
	last_name REGEXP '^.*ei.*$'
