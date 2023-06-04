INSERT INTO addresses (address, town, country, user_id) (
	SELECT
		u.username AS 'address',
		u.`password` AS town,
		u.ip AS 'country',
		u.age AS 'user_id'
	FROM
		users u
	WHERE
		u.gender = 'M'
);

