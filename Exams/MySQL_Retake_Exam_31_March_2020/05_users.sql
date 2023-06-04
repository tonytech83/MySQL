SELECT
	u.username,
	u.gender,
	u.age
FROM
	users u
ORDER BY
	u.age DESC,
	u.username;