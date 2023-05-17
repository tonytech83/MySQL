-- 07. Find Towns Not Starting With
-- url: https://judge.softuni.org/Contests/Compete/Index/295#6

SELECT
	town_id ,
	name
FROM
	towns
WHERE
	NOT name REGEXP '^[RBD].*$'
ORDER BY
	name;