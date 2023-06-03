SELECT
	COUNT(c.id) AS 'Count'
FROM
	colonists c
JOIN travel_cards tc ON
	c.id = tc.colonist_id
JOIN journeys j ON
	tc.journey_id = j.id
WHERE
	j.purpose = 'Technical';