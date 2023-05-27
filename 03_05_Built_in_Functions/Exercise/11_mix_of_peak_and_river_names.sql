-- 11. Mix of Peak and River Names
-- url: https://judge.softuni.org/Contests/Compete/Index/295#10

SELECT
	peak_name,
	river_name,
	CONCAT(LOWER(peak_name), LOWER(SUBSTR(river_name, 2))) AS `mix`
FROM
	peaks,
	rivers
WHERE
	RIGHT(peak_name,
	1) = LEFT(river_name,
	1)
ORDER BY mix;
