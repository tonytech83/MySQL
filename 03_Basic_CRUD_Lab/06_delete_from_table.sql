-- Problem 6: Delete from Table

DELETE FROM employees 
WHERE
    department_id = 1 OR department_id = 2 ORDER BY id;
    
select * from employees;