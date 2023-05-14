-- 16. Create View Employees with Job Titles

CREATE VIEW v_employees_job_titles AS
SELECT
	CONCAT(first_name, ' ', IFNULL(CONCAT( middle_name, ' '), ''), last_name) AS 'full_name',
	job_title
FROM
	employees;

SELECT * FROM v_employees_job_titles;