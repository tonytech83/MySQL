-- 12. Games From 2011 and 2012 Year
-- url: https://judge.softuni.org/Contests/Compete/Index/295#11

SELECT
	`name`,
	DATE_FORMAT(`start` , '%Y-%m-%d') AS `start`
FROM
	`games`
WHERE
	YEAR(`start`) IN (2011, 2012)
ORDER BY
	`start`
LIMIT 50;