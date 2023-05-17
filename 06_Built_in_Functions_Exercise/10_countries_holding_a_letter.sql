-- 10. Countries Holding 'A'
-- ulr: https://judge.softuni.org/Contests/Compete/Index/295#9

SELECT
	country_name,
	iso_code
FROM
	countries
WHERE
	country_name LIKE '%a%a%a%'
ORDER BY
	iso_code;