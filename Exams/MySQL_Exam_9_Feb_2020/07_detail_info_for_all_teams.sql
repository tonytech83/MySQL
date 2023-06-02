SELECT
	t.name AS 'team_name',
	t.established,
	t.fan_base,
	COUNT(p.team_id) AS 'players_count'
FROM
	teams t
LEFT JOIN players p ON
	t.id = p.team_id
GROUP BY
	t.name,
	t.established,
	t.fan_base
ORDER BY
	players_count DESC,
	fan_base DESC; 