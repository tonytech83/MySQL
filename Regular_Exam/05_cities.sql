SELECT
	c.id,
	c.name,
	c.population,
	c.country_id
FROM
	cities c
ORDER BY
	c.population DESC;