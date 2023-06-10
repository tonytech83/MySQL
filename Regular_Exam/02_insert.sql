INSERT
	INTO
	courses (name, duration_hours, start_date, teacher_name, description, university_id) (
	SELECT
		concat_ws(' ', c.teacher_name, 'course'),
		char_length(c.name) / 10,
		date_add(c.start_date, INTERVAL 5 DAY),
		reverse(c.teacher_name),
		CONCAT('Course ', c.teacher_name, reverse(c.description)),
		DAY(c.start_date)
	FROM
		courses c
	WHERE
		c.id <= 5
);

