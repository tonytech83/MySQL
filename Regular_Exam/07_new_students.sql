SELECT
	CONCAT_WS(' ', s.first_name, s.last_name) AS 'full_name',
	substr(s.email, 2, 10) AS 'username',
	reverse(s.phone) AS 'password'
FROM
	students s
LEFT JOIN students_courses sc ON
	s.id = sc.student_id
WHERE
	sc.student_id IS NULL
ORDER BY
	password DESC;