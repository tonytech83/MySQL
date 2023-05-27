-- 06. Deposits Sum for Ollivander Family
-- url: https://judge.softuni.org/Contests/Compete/Index/296#5

SELECT
	deposit_group,
	SUM(deposit_amount) AS 'total_sum'
FROM
	wizzard_deposits
WHERE
	magic_wand_creator = 'Ollivander family'
GROUP BY
	deposit_group
ORDER BY
	deposit_group;