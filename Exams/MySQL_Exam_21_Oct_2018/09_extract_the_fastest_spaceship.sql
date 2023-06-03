SELECT
	s.name AS 'spaceship_name',
	s2.name AS 'spaceport_name'
FROM
	spaceships s
JOIN journeys j ON
	s.id = j.spaceship_id
JOIN spaceports s2 ON
	j.destination_spaceport_id = s2.id
ORDER BY
	s.light_speed_rate DESC
LIMIT 1;