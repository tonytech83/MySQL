
DELIMITER $$

CREATE FUNCTION udf_stadium_players_count (stadium_name VARCHAR(30))
RETURNS INT
DETERMINISTIC
BEGIN
	RETURN
		(SELECT
			COUNT(p.id)
		FROM
			players p
		RIGHT JOIN teams t ON
			p.team_id = t.id
		RIGHT JOIN stadiums s ON
			t.stadium_id = s.id
		WHERE s.name = stadium_name
		GROUP BY s.id);
END$$

SELECT udf_stadium_players_count ('Jaxworks') as `count`;