-- 13. Count Mountain Ranges
-- url: https://judge.softuni.org/Contests/Compete/Index/606#12

SELECT
	c.country_code,
	COUNT(m.mountain_range) AS 'mountain_range'
FROM
	countries c
JOIN mountains_countries mc ON
	c.country_code = mc.country_code
JOIN mountains m ON
	mc.mountain_id = m.id
GROUP BY
	c.country_code
HAVING
	c.country_code IN ('BG', 'RU', 'US')
ORDER BY
	mountain_range DESC;