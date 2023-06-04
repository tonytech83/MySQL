SELECT
	p.id,
	p.`date` AS 'date_and_time',
	p.description,
	COUNT(c.photo_id) AS 'commentsCount'
FROM
	photos p
JOIN comments c ON
	p.id = c.photo_id
GROUP BY
	p.id
ORDER BY
	commentsCount DESC,
	p.id
LIMIT 5;