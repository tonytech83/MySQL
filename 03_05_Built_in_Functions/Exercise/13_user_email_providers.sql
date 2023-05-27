-- 13. User Email Providers
-- url: https://judge.softuni.org/Contests/Compete/Index/295#12

SELECT
	user_name,
	SUBSTR(`email`, LOCATE('@', `email`)+ 1) as 'email provider'
FROM
	users
ORDER BY
	`email provider`,
	`user_name`;