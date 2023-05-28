-- 16. Countries without any Mountains
-- url: https://judge.softuni.org/Contests/Compete/Index/606#15

SELECT
	COUNT(*) AS 'country_count'
FROM
	countries c
LEFT JOIN mountains_countries mc ON
	c.country_code = mc.country_code
LEFT JOIN mountains m ON
	mc.mountain_id = m.id
WHERE
	m.id IS NULL;