-- 16. Orders Table
-- url: https://judge.softuni.org/Contests/Compete/Index/295#15

SELECT
	product_name,
	order_date,
	DATE_ADD(order_date , INTERVAL 3 DAY) AS 'pay_due',
	DATE_ADD(order_date , INTERVAL 1 MONTH) AS 'pay_due'
FROM
	orders;