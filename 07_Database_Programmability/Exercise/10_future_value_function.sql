-- 10. Future Value Function
-- url: https://judge.softuni.org/Contests/Compete/Index/298#9

DELIMITER $$

CREATE FUNCTION ufn_calculate_future_value(initial_sum DECIMAL(19,4), y_interest_rate DOUBLE, year_number INT)
RETURNS DECIMAL(19,4)
DETERMINISTIC
BEGIN
	RETURN (initial_sum * POW(1 + y_interest_rate, year_number));
END$$

SELECT ufn_calculate_future_value(1000, 0.5, 5);