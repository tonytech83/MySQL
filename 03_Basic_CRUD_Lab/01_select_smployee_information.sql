-- Problem 1: Select Employee Information

SELECT 
    e.id AS 'No.',
    e.first_name AS 'First Name',
    e.last_name AS 'Last Name',
    e.job_title AS 'Job title'
FROM
    employees as e
ORDER BY e.id;

-- CONCAT
SELECT 
    id AS 'No.',
    CONCAT('Mr./Mrs.',
            ' ',
            first_name,
            ' ',
            last_name) AS 'Full Name'
FROM
    employees
ORDER BY id;

-- CONCAT_WS
SELECT 
    id AS 'No.',
    CONCAT_WS(' ', first_name, last_name, job_title) AS 'Employee info'
FROM
    employees
ORDER BY id;