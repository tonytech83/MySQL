DELETE
	g
FROM
	games g
LEFT JOIN games_categories gc ON
	g.id = gc.game_id
WHERE
	gc.category_id IS NULL
	AND g.release_date IS NULL;
	
