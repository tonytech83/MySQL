SELECT
	MAX(sd.speed) AS 'max_speed',
	t2.name AS 'town_name'
FROM
	skills_data sd
RIGHT JOIN players p ON
	sd.id = p.skills_data_id
RIGHT JOIN teams t ON
	p.team_id = t.id
RIGHT JOIN stadiums s ON
	t.stadium_id = s.id
RIGHT JOIN towns t2 ON
	s.town_id = t2.id
WHERE
	t.name != 'Devify'
GROUP BY
	t2.id
ORDER BY 
	max_speed DESC,
	town_name;