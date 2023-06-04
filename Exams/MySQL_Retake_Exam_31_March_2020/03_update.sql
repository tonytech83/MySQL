UPDATE
	addresses AS a
SET
	country = (
	CASE 
		WHEN LEFT(a.country, 1) = 'B' THEN 'Blocked'
		WHEN LEFT(a.country, 1) = 'T' THEN 'Test'
		WHEN LEFT(a.country, 1) = 'P' THEN 'In Progress'
		ELSE a.country
	END
);