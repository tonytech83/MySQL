SELECT
	s.name,
	s.manufacturer
FROM
	spaceships s
JOIN journeys j ON
	s.id = j.spaceship_id
JOIN travel_cards tc ON
	j.id = tc.journey_id
JOIN colonists c ON
	tc.colonist_id = c.id
WHERE
	tc.job_during_journey = 'Pilot'
	AND (TIMESTAMPDIFF(YEAR, c.birth_date, '2019-01-01')) < 30
ORDER BY
	s.name;

