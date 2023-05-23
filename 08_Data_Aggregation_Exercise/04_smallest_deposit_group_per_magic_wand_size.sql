-- 04. Smallest Deposit Group per Magic Wand Size
-- url: https://judge.softuni.org/Contests/Compete/Index/296#3

SELECT
	deposit_group
FROM
	wizzard_deposits
GROUP BY
	deposit_group
ORDER BY
	AVG(magic_wand_size)
LIMIT 1;
