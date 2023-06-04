SELECT
	CONCAT_WS(' ', u.id, u.username) AS 'id_username',
	u.email
FROM
	users u
JOIN users_photos up ON
	u.id = up.user_id
JOIN photos p ON
	up.photo_id = p.id
WHERE
	u.id = p.id
ORDER BY
	u.id;