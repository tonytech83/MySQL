DELIMITER @@

CREATE PROCEDURE udp_award_movie(movie_title VARCHAR(50))
BEGIN
	UPDATE
		actors a
	JOIN movies_actors ma ON
		a.id = ma.actor_id
	JOIN movies m ON
		ma.movie_id = m.id
	SET
		a.awards = a.awards + 1
	WHERE
		m.title = movie_title;
END@@

-- Query
CALL udp_award_movie('Tea For Two');