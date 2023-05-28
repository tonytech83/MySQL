-- 15. *Continents and Currencies
-- url: https://judge.softuni.org/Contests/Compete/Index/606#14

SET sql_mode = ''

SELECT
	c.continent_code,
	c.currency_code,
	COUNT(*) AS 'currency_usage'
FROM
	countries c
GROUP BY
	c.continent_code,
	c.currency_code
HAVING
	currency_usage > 1
	AND currency_usage =
	(
	SELECT
		COUNT(*) AS 'most_used_curr'
	FROM
		countries c2
	WHERE
		c2.continent_code = c.continent_code
	GROUP BY
		c2.currency_code
	ORDER BY
		most_used_curr DESC
	LIMIT 1
	)
ORDER BY
	c.continent_code,
	c.currency_code;
