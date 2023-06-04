SELECT
	p.id,
	(
	SELECT
		COUNT(*)
	FROM
		likes l
	WHERE
		l.photo_id = p.id) AS 'likes_count',
	(
	SELECT
		COUNT(*)
	FROM
		comments c
	WHERE
		c.photo_id = p.id) AS 'comments_count'	
FROM
	photos p
GROUP BY
	p.id
ORDER BY
	likes_count DESC,
	comments_count DESC,
	p.id;

