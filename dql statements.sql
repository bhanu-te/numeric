-- 1. Display all names of employees
SELECT emp_name FROM emp_details;

-- 2. Display salaries of employees
SELECT salary FROM emp_details;

-- 3. Display names along with their designation
SELECT emp_name, designation FROM emp_details;

-- 4. Display Name, salary along with department numbers
SELECT emp_name, salary, dept_id FROM emp_details;

-- 5. Display salaries of employees without repetition
SELECT DISTINCT salary FROM emp_details;

-- 6. Display all details of employees
SELECT * FROM emp_details;

-- 7. Display all details of departments
SELECT * FROM department;

-- 8. Display Name and emp_id of employees
SELECT emp_name, emp_id FROM emp_details;

-- 9. Display location of employees from departments
-- Assuming department table has a column 'loc'
SELECT e.emp_name, d.loc
FROM emp_details e
JOIN department d ON e.dept_id = d.dept_id;

-- 10. Display Name and Hire-date of employees
-- Assuming emp_details has a column 'hire_date'
SELECT emp_name, hire_date FROM emp_details;

-- 11. Display annual salary with deduction of 23%
SELECT emp_name, (salary * 12) * (1 - 0.23) AS annual_salary_after_deduction
FROM emp_details;

-- 12. Display details of employees along with annual salaries
SELECT e.*, (salary * 12) AS annual_salary
FROM emp_details e;

-- 13. Display details of employees along with salaries with hike of 59%
SELECT e.*, (salary * 1.59) AS salary_after_hike
FROM emp_details e;

-- 14. Display details of employees along with annual and quarterly salary
SELECT e.*, (salary * 12) AS annual_salary, (salary * 3) AS quarterly_salary
FROM emp_details e;

-- 15. Display name along with annual salary with deduction of 92% of quarterly salary
SELECT emp_name,
       (salary * 12) - ((salary * 3) * 0.92) AS adjusted_annual_salary
FROM emp_details;
