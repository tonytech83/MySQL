SELECT
	g.name,
	g.release_date,
	CONCAT(LEFT(g.description, 10), '...') AS 'summary',
	CASE 
		WHEN MONTH(g.release_date) <= 3 THEN 'Q1'
		WHEN MONTH(g.release_date) <= 6 THEN 'Q2'
		WHEN MONTH(g.release_date) <= 9 THEN 'Q3'
		ELSE 'Q4'
	END AS 'quarter',
	t.name AS 'team_name'
FROM
	games g
JOIN teams t ON
	g.team_id = t.id
WHERE
	MONTH (g.release_date) % 2 = 0 AND RIGHT(g.name, 1) = '2' AND YEAR(g.release_date) = 2022
ORDER BY
	`quarter`;
	
