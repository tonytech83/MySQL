-- 5. Find Email Address of Each Employee

SELECT
	CONCAT( `first_name`, '.', `last_name`, '@softuni.bg') AS `full_email_address`
FROM
	`employees`;
