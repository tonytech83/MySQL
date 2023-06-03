SELECT
	j.id,
	p.name AS 'planet_name',
	s.name AS 'spaceport_name',
	j.purpose AS 'journey_purpose'
FROM
	journeys j
JOIN spaceports s ON
	j.destination_spaceport_id = s.id
JOIN planets p ON
	s.planet_id = p.id
ORDER BY
	TIMESTAMPDIFF(DAY, journey_start, journey_end)
LIMIT 1;