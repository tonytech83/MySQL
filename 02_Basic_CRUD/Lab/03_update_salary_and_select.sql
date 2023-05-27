-- Problem 3: Update Employees Salary
use hotel;

UPDATE employees 
SET salary = salary + 100
WHERE job_title = 'Manager';
    
select salary from employees;