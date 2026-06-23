use data;

create database assign1;
use assign1;
CREATE TABLE departments (
    dept_id INT AUTO_INCREMENT PRIMARY KEY,
    dept_name VARCHAR(100) NOT NULL UNIQUE,
    location VARCHAR(100) NOT NULL
);

INSERT INTO departments (dept_name, location)
VALUES
('HR', 'Hyderabad'),
('Finance', 'Delhi'),
('IT', 'Mumbai'),
('Marketing', 'Chennai'),
('Operations', 'Pune');
CREATE TABLE employees (
    emp_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    salary DECIMAL(10,2) CHECK (salary > 0),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);
INSERT INTO employees (first_name, last_name, email, salary, dept_id)
VALUES
('Arjun','Kumar','arjun.k@example.com',55000.00,1),
('Priya','Sharma','priya.s@example.com',62000.00,2),
('Ravi','Patel','ravi.p@example.com',48000.00,3),
('Sneha','Reddy','sneha.r@example.com',70000.00,4),
('Karan','Mehta','karan.m@example.com',80000.00,5),
('Ananya','Singh','ananya.s@example.com',56000.00,1),
('Vikram','Das','vikram.d@example.com',60000.00,2),
('Meera','Iyer','meera.i@example.com',47000.00,3),
('Rahul','Nair','rahul.n@example.com',65000.00,4),
('Divya','Joshi','divya.j@example.com',72000.00,5);

