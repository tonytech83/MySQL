-- 02. Addresses with Towns
-- url: https://judge.softuni.org/Contests/Compete/Index/606#1

SELECT
	e.first_name,
	e.last_name,
	t.name AS 'town',
	a.address_text
FROM
	employees e
JOIN addresses a ON
	e.address_id = a.address_id
JOIN towns t ON
	a.town_id = t.town_id
ORDER BY
	e.first_name,
	e.last_name
LIMIT 5;