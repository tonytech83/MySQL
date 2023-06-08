INSERT INTO games (name, rating, budget, team_id) (
	SELECT
		REVERSE(LOWER(SUBSTR(t.name, 2))),
		t.id,
		t.leader_id * 1000,
		t.id
	FROM
		teams t
	WHERE
		t.id BETWEEN 1 AND 9
);

