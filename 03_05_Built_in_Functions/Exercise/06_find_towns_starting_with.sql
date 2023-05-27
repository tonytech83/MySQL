-- 06. Find Towns Starting With
-- url: https://judge.softuni.org/Contests/Compete/Index/295#5

SELECT
	town_id ,
	name
FROM
	towns
WHERE
	name REGEXP '^[BMKE].*$'
ORDER BY
	name;