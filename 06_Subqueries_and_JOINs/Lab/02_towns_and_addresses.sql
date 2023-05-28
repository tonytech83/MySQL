-- 2. Towns and Addresses
-- url: https://judge.softuni.org/Contests/Practice/Index/754#1

SELECT
	t.town_id,
	t.name AS 'town_name',
	a.address_text
FROM
	towns t
JOIN addresses a ON
	t.town_id = a.town_id
WHERE
	t.name IN ('San Francisco', 'Sofia', 'Carnation')
ORDER BY
	t.town_id ,
	a.address_id;