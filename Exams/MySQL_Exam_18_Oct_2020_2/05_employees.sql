SELECT
	e.first_name,
	e.middle_name ,
	e.last_name ,
	e.salary,
	e.hire_date
FROM
	employees e
ORDER BY 
	e.hire_date DESC;