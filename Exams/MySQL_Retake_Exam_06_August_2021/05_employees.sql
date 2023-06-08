SELECT
	e.first_name ,
	e.last_name ,
	e.age,
	e.salary ,
	e.happiness_level
FROM
	employees e
ORDER BY
	e.salary ,
	e.id;