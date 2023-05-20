-- 4. Appetizers Count
-- url: https://judge.softuni.org/Contests/Practice/Index/744#3

SELECT
	COUNT(*)
FROM
	products
WHERE
	category_id = 2
	AND price > 8;
