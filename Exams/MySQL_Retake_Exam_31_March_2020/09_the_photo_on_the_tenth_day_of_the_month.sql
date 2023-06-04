SELECT
	CONCAT_WS('', LEFT(p.description, 30), '...') AS 'summary',
	p.`date`
FROM
	photos p
WHERE
	DAY(p.`date`) = 10
ORDER BY
	p.`date` DESC;