-- 02. Replace Titles

SELECT
	REPLACE (`title`,
	"The",
	"***") AS "title"
FROM
	`books`
WHERE
	SUBSTRING(`title` FROM 1 FOR 3) = "The";
