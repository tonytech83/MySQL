SELECT
	tc.job_during_journey AS 'job_name'
FROM
	travel_cards tc
WHERE tc.journey_id = (
	SELECT
		j.id
	FROM
		journeys j
	ORDER BY
		TIMESTAMPDIFF(DAY, j.journey_start, j.journey_end) DESC
	LIMIT 1
)
GROUP BY
	tc.job_during_journey
ORDER BY
	COUNT(tc.job_during_journey)
LIMIT 1;


