-- 09. Length of Last Name
-- url: https://judge.softuni.org/Contests/Compete/Index/295#8

SELECT
	first_name,
	last_name
FROM
	employees
WHERE
	LENGTH(last_name) = 5;