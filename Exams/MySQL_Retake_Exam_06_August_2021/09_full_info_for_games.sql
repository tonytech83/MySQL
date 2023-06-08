SELECT
	g.name,
	CASE 
		WHEN g.budget < 50000 THEN 'Normal budget'
		ELSE 'Insufficient budget'
	END AS 'budget_level',
	t.name AS 'team_name',
	a.name AS 'address name'
FROM
	games g
LEFT JOIN games_categories gc ON
	g.id = gc.game_id
JOIN teams t ON
	g.team_id = t.id
JOIN offices o ON
	t.office_id = o.id
JOIN addresses a ON
	o.address_id = a.id
WHERE
	g.release_date IS NULL
	AND gc.category_id IS NULL
GROUP BY
	g.name
ORDER BY
	g.name;
