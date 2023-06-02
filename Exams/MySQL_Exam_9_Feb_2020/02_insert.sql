INSERT
	INTO
	coaches (
	first_name,
	last_name,
	salary,
	coach_level)
	(
	SELECT 
		p.first_name,
		p.last_name,
		p.salary * 2 AS 'salary',
		LENGTH(p.first_name) AS 'coach_level'
	FROM 
		players p
	WHERE 
		p.age >= 45
	);
