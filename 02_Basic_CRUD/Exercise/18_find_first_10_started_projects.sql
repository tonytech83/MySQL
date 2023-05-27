-- 18. Find First 10 Started Projects

SELECT
	*
FROM
	projects
WHERE
	start_date IS NOT NULL
ORDER BY
	start_date ,
	name
LIMIT 10;