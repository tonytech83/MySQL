-- 1. Count Employees by Town
-- url: https://judge.softuni.org/Contests/Practice/Index/768#0

-- with function


CREATE FUNCTION ufn_count_employees_by_town(town_name VARCHAR(50))
RETURNS INT
DETERMINISTIC
BEGIN
	DECLARE id_for_town INT;
	DECLARE count_by_town INT;

	SET id_for_town := (SELECT town_id FROM towns WHERE `name` = town_name);
	SET count_by_town := (
		SELECT COUNT(*) FROM employees e 
		WHERE e.address_id IN (
			SELECT address_id FROM addresses a WHERE town_id = id_for_town
		)
	);

	RETURN count_by_town;
END

SELECT ufn_count_employees_by_town('Sofia')


-- with JOIN

SELECT
	COUNT(*)
FROM
	employees e
JOIN addresses a ON
	a.address_id = e.address_id
JOIN towns t ON
	a.town_id = t.town_id
WHERE
	t.name = 'Sofia';
	
-- with subqueries

SELECT
	COUNT(*)
FROM
	employees e
WHERE
	e.address_id IN (
	SELECT
		address_id
	FROM
		addresses a
	WHERE
		a.town_id = (
		SELECT
			town_id
		FROM
			towns
		WHERE
			name = 'Sofia'
		)
);



