DELIMITER $$

CREATE FUNCTION udf_users_photos_count(username VARCHAR(30)) 
RETURNS INT
DETERMINISTIC
BEGIN
	RETURN (
		SELECT
			COUNT(up.photo_id)
		FROM
			users u
		JOIN users_photos up ON
			u.id = up.user_id
		WHERE
			u.username = username);
END$$

SELECT udf_users_photos_count('ssantryd') AS photosCount;


