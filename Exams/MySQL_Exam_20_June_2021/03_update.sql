UPDATE cars AS c SET
c.`condition` = 'C'
WHERE c.mileage >= 800000
OR c.mileage IS NULL
AND c.`year` <= 2010
AND c.make != 'Mercedes-Benz';