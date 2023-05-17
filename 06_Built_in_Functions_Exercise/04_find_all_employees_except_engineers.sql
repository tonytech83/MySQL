-- 04. Find All Employees Except Engineers
-- url: https://judge.softuni.org/Contests/Compete/Index/295#3

SELECT
	first_name ,
	last_name
FROM
	employees
WHERE NOT 
	job_title REGEXP '^.*engineer.*$'
ORDER BY employee_id;