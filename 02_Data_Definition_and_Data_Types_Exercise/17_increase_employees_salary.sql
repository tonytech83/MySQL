-- 17. Increase Employees Salary

use soft_uni;

SET SQL_SAFE_UPDATES=0;
UPDATE employees 
SET 
    salary = salary * 1.1;

select salary from employees;