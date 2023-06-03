SELECT
	j.id,
	j.journey_start,
	j.journey_end
FROM
	journeys j
WHERE
	j.purpose = 'Military'
ORDER BY
	j.journey_start;