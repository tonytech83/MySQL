SELECT
	t.name AS 'team_name',
	a.name AS 'address_name',
	CHAR_LENGTH(a.name) AS 'count_of_characters'
FROM
	teams t
LEFT JOIN offices o ON
	t.office_id = o.id
LEFT JOIN addresses a ON
	o.address_id = a.id
WHERE
	o.website IS NOT NULL
ORDER BY
	t.name,
	address_name;