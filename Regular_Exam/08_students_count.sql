SELECT
	COUNT(*) AS 'students_count',
	u.name AS 'university_name'
FROM
	universities u
JOIN courses c ON
	u.id = c.university_id
JOIN students_courses sc ON
	c.id = sc.course_id
JOIN students s ON
	sc.student_id = s.id
GROUP BY
	u.id
HAVING
	students_count >= 8
ORDER BY
	students_count DESC,
	university_name DESC;