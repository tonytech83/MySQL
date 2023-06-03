DELIMITER $$

CREATE FUNCTION udf_count_colonists_by_destination_planet(planet_name VARCHAR (30))
RETURNS INT
DETERMINISTIC
BEGIN
	
	RETURN (SELECT
		COUNT(tc.colonist_id)
	FROM
		planets p
	JOIN spaceports s ON
		p.id = s.planet_id
	JOIN journeys j ON
		s.id = j.destination_spaceport_id
	JOIN travel_cards tc ON
		j.id = tc.journey_id
	WHERE
		p.name = planet_name);
		
END$$

SELECT p.name, udf_count_colonists_by_destination_planet('Otroyphus') AS count
FROM planets AS p
WHERE p.name = 'Otroyphus';

