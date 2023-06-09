SELECT
	m.title,
	CASE 
		WHEN mai.rating <= 4 THEN 'poor'
		WHEN mai.rating <= 7 THEN 'good'
		ELSE 'excellent'
	END AS 'rating',
	IF(mai.has_subtitles, 'english', '-') AS 'subtitles',
	mai.budget
FROM
	movies m
JOIN movies_additional_info mai ON
	m.movie_info_id = mai.id
ORDER BY
	mai.budget DESC;