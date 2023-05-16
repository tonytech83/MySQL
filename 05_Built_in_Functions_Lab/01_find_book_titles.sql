-- 01. Find Book Titles

SELECT
	title
from
	books
WHERE SUBSTRING(title, 1, 3) = 'The'; 
