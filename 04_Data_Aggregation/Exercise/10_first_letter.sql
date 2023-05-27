-- 10. First Letter
-- url: https://judge.softuni.org/Contests/Compete/Index/296#9

SELECT
	LEFT(first_name,
	1) AS 'first_letter'
FROM
	wizzard_deposits
WHERE
	deposit_group = 'Troll Chest'
GROUP BY
	first_letter
ORDER BY first_letter;