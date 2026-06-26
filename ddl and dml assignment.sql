-- 1. Create department table
CREATE TABLE department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

-- 2. Create employee table with PK and FK
CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INT,
    salary INT,
    email VARCHAR(100),
    FOREIGN KEY (dept_id) REFERENCES department(dept_id)
);

-- 3. Add column phone
ALTER TABLE employee ADD phone VARCHAR(15);

-- 4. Add column designation
ALTER TABLE employee ADD designation VARCHAR(30);

-- 5. Modify salary datatype
ALTER TABLE employee MODIFY salary DECIMAL(12,2);

-- 6. Rename column phone to mobile_no
ALTER TABLE employee CHANGE phone mobile_no VARCHAR(15);

-- 7. Drop column designation
ALTER TABLE employee DROP COLUMN designation;

-- 8. Add NOT NULL constraint to emp_name
ALTER TABLE employee MODIFY emp_name VARCHAR(50) NOT NULL;

-- 9. Add UNIQUE constraint on mobile_no
ALTER TABLE employee ADD CONSTRAINT unique_mobile UNIQUE (mobile_no);

-- 10. Rename employee table to emp_details
ALTER TABLE employee RENAME TO emp_details;

-- 11. Insert a new employee
INSERT INTO emp_details (emp_id, emp_name, dept_id, salary, email, mobile_no)
VALUES (101, 'Ravi', 1, 50000.00, 'ravi@example.com', '9876543210');

-- 12. Insert 3 employees in a single query
INSERT INTO emp_details (emp_id, emp_name, dept_id, salary, email, mobile_no)
VALUES 
(102, 'Sneha', 2, 60000.00, 'sneha@example.com', '9876500001'),
(103, 'Amit', 1, 55000.00, 'amit@example.com', '9876500002'),
(104, 'Priya', 3, 47000.00, 'priya@example.com', '9876500003');

-- 13. Insert employee using selected columns
INSERT INTO emp_details (emp_id, emp_name, dept_id)
VALUES (105, 'Kiran', 2);

-- 14. Increase Ravi's salary by 5000
UPDATE emp_details SET salary = salary + 5000 WHERE emp_name = 'Ravi';

-- 15. Update all IT employees' salary by 10%
UPDATE emp_details SET salary = salary * 1.10 WHERE dept_id = 1;

-- 16. Change department of Sneha to Marketing
UPDATE emp_details SET dept_id = 3 WHERE emp_name = 'Sneha';

-- 17. Update email of employee 101
UPDATE emp_details SET email = 'ravi_new@example.com' WHERE emp_id = 101;

-- 18. Delete employee whose id is 106
DELETE FROM emp_details WHERE emp_id = 106;

-- 19. Delete all employees from Finance department
DELETE FROM emp_details WHERE dept_id = 2;

-- 20. Delete employees whose salary is less than 45000
DELETE FROM emp_details WHERE salary < 45000;

-- 21. Remove all records without deleting structure
TRUNCATE TABLE emp_details;

-- 22. Delete employee table permanently
DROP TABLE emp_details;

-- 23. Delete department table permanently
DROP TABLE department;
