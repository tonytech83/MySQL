DELIMITER @@

CREATE FUNCTION udf_average_alumni_grade_by_course_name(course_name VARCHAR(60))
RETURNS DECIMAL(3, 2)
DETERMINISTIC
BEGIN
	
	RETURN (
		SELECT
			AVG(sc.grade)
		FROM
			students_courses sc
		JOIN courses c ON
			sc.course_id = c.id
		JOIN students s ON
			sc.student_id = s.id
		WHERE
			c.name = course_name AND s.is_graduated =  1
		GROUP BY
			c.id
	);
END@@

-- Query
SELECT c.name, udf_average_alumni_grade_by_course_name('Quantum Physics') as average_alumni_grade FROM courses c 
WHERE c.name = 'Quantum Physics';





	