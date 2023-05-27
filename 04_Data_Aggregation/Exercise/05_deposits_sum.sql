-- 05. Deposits Sum
-- url: https://judge.softuni.org/Contests/Compete/Index/296#4

SELECT
	deposit_group,
	SUM(deposit_amount) AS 'total_sum'
FROM
	wizzard_deposits
GROUP BY
	deposit_group
ORDER BY `total_sum` ASC;
