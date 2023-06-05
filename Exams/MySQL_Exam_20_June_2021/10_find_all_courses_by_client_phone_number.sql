DELIMITER $$

CREATE FUNCTION udf_courses_by_client(phone_num VARCHAR (20))
RETURNS INT
DETERMINISTIC
BEGIN
	RETURN (
	SELECT
		COUNT(*)
	FROM
		clients c
	JOIN courses c2 ON
		c.id = c2.client_id
	WHERE
		c.phone_number = phone_num);
END$$

-- Query
SELECT udf_courses_by_client ('(803) 6386812') as `count`; 