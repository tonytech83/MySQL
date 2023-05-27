-- 2. Trip Organization
-- url: https://judge.softuni.org/Contests/Practice/Index/748#1

SELECT
	driver_id,
	vehicle_type,
	CONCAT_WS(' ', c.first_name, c.last_name) AS 'driver_name'
FROM
	vehicles v
JOIN campers c ON
	v.driver_id = c.id;