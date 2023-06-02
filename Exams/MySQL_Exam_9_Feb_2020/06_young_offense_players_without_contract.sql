SELECT
	p.id,
	CONCAT(p.first_name, ' ', p.last_name) AS 'full_name',
	p.age,
	p.`position`,
	p.hire_date
FROM
	players p
JOIN skills_data sd ON
	p.skills_data_id = sd.id
WHERE
	p.age < 23
	AND p.`position` = 'A'
	AND sd.strength > 50
	AND p.hire_date IS NULL
ORDER BY
	p.salary,
	p.age;