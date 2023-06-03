SELECT
	c.id,
	CONCAT_WS(' ', c.first_name, c.last_name) AS 'full_name'
FROM
	colonists c
JOIN travel_cards tc ON
	c.id = tc.colonist_id
WHERE
	tc.job_during_journey = 'Pilot'
ORDER BY
	c.id;