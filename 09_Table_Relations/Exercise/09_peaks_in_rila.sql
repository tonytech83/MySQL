USE geography;

SELECT
	m.mountain_range,
	p.peak_name,
	p.elevation AS 'peak_elevation'
FROM
	mountains m
JOIN peaks p ON
	m.id = p.mountain_id
WHERE
	m.mountain_range = 'Rila'
ORDER BY
	p.elevation DESC;