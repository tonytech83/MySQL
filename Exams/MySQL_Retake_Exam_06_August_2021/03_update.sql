UPDATE
	employees e
JOIN teams t ON
	e.id = t.leader_id
SET
	salary = salary + 1000
WHERE
	e.age < 40
	AND e.salary <= 5000;
	
