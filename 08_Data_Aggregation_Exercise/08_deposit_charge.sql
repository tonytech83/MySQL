-- 08. Deposit Charge
-- url: https://judge.softuni.org/Contests/Compete/Index/296#7

SELECT
	deposit_group,
	magic_wand_creator,
	MIN(deposit_charge) AS 'min_deposit_charge'
FROM
	wizzard_deposits
GROUP BY
	deposit_group,
	magic_wand_creator
ORDER BY
	magic_wand_creator,
	deposit_group