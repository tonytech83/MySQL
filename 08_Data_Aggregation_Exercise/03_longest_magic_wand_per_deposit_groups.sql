-- 03. Longest Magic Wand per Deposit Groups
-- url: https://judge.softuni.org/Contests/Compete/Index/296#2

SELECT
	deposit_group,
	max(magic_wand_size) AS 'longest_magic_wand'
FROM
	wizzard_deposits
GROUP BY
	deposit_group
ORDER BY
	longest_magic_wand,
	deposit_group;