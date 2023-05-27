-- 14. Get Users with IP Address Like Pattern
-- url: https://judge.softuni.org/Contests/Compete/Index/295#13

SELECT
	user_name,
	ip_address
FROM
	users
WHERE
	ip_address LIKE '___.1%.%.___'
ORDER BY
	user_name;