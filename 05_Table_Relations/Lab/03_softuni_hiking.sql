-- 3. SoftUni Hiking
-- url: https://judge.softuni.org/Contests/Practice/Index/748#2

SELECT
	starting_point,
	end_point,
	leader_id,
	CONCAT_WS(' ', c.first_name, c.last_name) AS 'leader_name'
FROM
	routes r
JOIN campers c ON
	r.leader_id = c.id