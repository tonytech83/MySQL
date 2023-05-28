-- 12. Highest Peaks in Bulgaria
-- url: https://judge.softuni.org/Contests/Compete/Index/606#11

SELECT
	c.country_code,
	m.mountain_range,
	p.peak_name,
	p.elevation
FROM
	countries c
JOIN mountains_countries mc ON
	c.country_code = mc.country_code
JOIN mountains m ON
	mc.mountain_id = m.id
JOIN peaks p ON
	m.id = p.mountain_id
WHERE
	c.country_code = 'BG'
	AND p.elevation > 2835
ORDER BY
	p.elevation DESC;