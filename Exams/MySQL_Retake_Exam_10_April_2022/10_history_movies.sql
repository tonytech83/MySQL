DELIMITER //

CREATE FUNCTION udf_actor_history_movies_count(full_name VARCHAR(50)) 
RETURNS INT
DETERMINISTIC
BEGIN
	RETURN (SELECT
		COUNT(*)
	FROM
		genres g
	JOIN genres_movies gm ON
		g.id = gm.genre_id
	JOIN movies m ON
		gm.movie_id = m.id
	JOIN movies_actors ma ON
		m.id = ma.movie_id
	JOIN actors a ON
		ma.actor_id = a.id
	WHERE
		g.name = 'History' AND CONCAT_WS(' ', a.first_name, a.last_name) = full_name
	GROUP BY
		g.id);
END//

-- Query
SELECT udf_actor_history_movies_count('Stephan Lundberg')  AS 'history_movies';

-- Query
SELECT udf_actor_history_movies_count('Jared Di Batista')  AS 'history_movies';
