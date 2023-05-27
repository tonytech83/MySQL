-- 01. Find Names of All Employees by First Name

SELECT
	first_name,
	last_name
FROM
	employees
WHERE
	SUBSTR(first_name, 1, 2) = "Sa"