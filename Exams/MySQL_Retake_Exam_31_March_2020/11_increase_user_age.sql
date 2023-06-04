DELIMITER $$

CREATE PROCEDURE udp_modify_user (address VARCHAR(30), town VARCHAR(30))
BEGIN
	IF (
		SELECT u.id
		FROM users u
		JOIN addresses a ON u.id = a.user_id
		WHERE a.town = town AND a.address = address) IS NOT NULL 
		THEN UPDATE users AS u2 SET u2.age = u2.age + 10;
	ELSE
		ROLLBACK;
	END IF;
END$$


CALL udp_modify_user ('97 Valley Edge Parkway', 'Divinópolis');

SELECT u.username, u.email,u.gender,u.age,u.job_title 
FROM users AS u
WHERE u.username = 'eblagden21';

