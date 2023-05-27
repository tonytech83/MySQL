-- 05. Find Towns with Name Length
-- url: https://judge.softuni.org/Contests/Compete/Index/295#4

SELECT
	name
FROM
	towns
WHERE
	LENGTH(name) = 5
	OR LENGTH(name) = 6
ORDER BY name;