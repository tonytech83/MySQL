SELECT
	s.first_name,
	s.last_name,
	s.age,
	s.phone,
	s.email
FROM
	students s
WHERE
	s.age >= 21
ORDER BY
	s.first_name DESC,
	s.email,
	s.id
LIMIT 10;
