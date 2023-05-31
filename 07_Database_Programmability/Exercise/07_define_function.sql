-- 07. Define Function
-- url: https://judge.softuni.org/Contests/Compete/Index/298#6

DELIMITER $$

CREATE FUNCTION ufn_is_word_comprised(set_of_letters varchar(50), word varchar(50))
RETURNS INT(1)
DETERMINISTIC
BEGIN
	
	RETURN word REGEXP (CONCAT('^[', set_of_letters, ']+$'));

END$$

SELECT ufn_is_word_comprised('oistmiahf', 'Sofia') AS 'result';