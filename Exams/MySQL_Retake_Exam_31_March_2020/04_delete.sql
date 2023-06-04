DELETE
FROM
	addresses AS a
WHERE
	a.id % 3 = 0;