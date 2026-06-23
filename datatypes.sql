use pord;
CREATE TABLE employees (
    emp_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    email VARCHAR(100),
    phone VARCHAR(15),
    hire_date DATE,
    salary DECIMAL(10,2),
    bonus DECIMAL(10,2),
    dept_id INT,
    city VARCHAR(50),
    state VARCHAR(50),
    zip_code INT
);
desc employees;
INSERT INTO employees (first_name, last_name, age, gender, email, phone, hire_date, salary, bonus, dept_id, city, state, zip_code)
VALUES
('Arjun', 'Kumar', 28, 'Male', 'arjun.kumar@example.com', '9876543210', '2022-01-15', 55000.00, 5000.00, 1, 'Hyderabad', 'TG', 500001),
('Priya', 'Sharma', 32, 'Female', 'priya.sharma@example.com', '9876543211', '2021-03-10', 62000.00, 6000.00, 2, 'Delhi', 'DL', 110001),
('Ravi', 'Patel', 26, 'Male', 'ravi.patel@example.com', '9876543212', '2023-07-01', 48000.00, 4000.00, 3, 'Mumbai', 'MH', 400001),
('Sneha', 'Reddy', 29, 'Female', 'sneha.reddy@example.com', '9876543213', '2020-11-20', 70000.00, 7000.00, 4, 'Chennai', 'TN', 600001),
('Karan', 'Mehta', 35, 'Male', 'karan.mehta@example.com', '9876543214', '2019-05-05', 80000.00, 8000.00, 5, 'Pune', 'MH', 411001),
('Ananya', 'Singh', 27, 'Female', 'ananya.singh@example.com', '9876543215', '2024-02-14', 56000.00, 4500.00, 1, 'Bangalore', 'KA', 560001),
('Vikram', 'Das', 31, 'Male', 'vikram.das@example.com', '9876543216', '2022-09-09', 60000.00, 5500.00, 2, 'Kolkata', 'WB', 700001),
('Meera', 'Iyer', 25, 'Female', 'meera.iyer@example.com', '9876543217', '2023-04-18', 47000.00, 3500.00, 3, 'Hyderabad', 'TG', 500002),
('Rahul', 'Nair', 30, 'Male', 'rahul.nair@example.com', '9876543218', '2021-12-01', 65000.00, 6000.00, 4, 'Cochin', 'KL', 682001),
('Divya', 'Joshi', 28, 'Female', 'divya.joshi@example.com', '9876543219', '2020-08-25', 72000.00, 7500.00, 5, 'Jaipur', 'RJ', 302001);
select * from employees;
CREATE TABLE departments (
    dept_id INT AUTO_INCREMENT PRIMARY KEY,
    dept_name VARCHAR(100),
    manager_name VARCHAR(100),
    total_employees INT,
    budget DECIMAL(12,2),
    location VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100),
    established_year INT,
    floor_number INT,
    building_name VARCHAR(100),
    city VARCHAR(50),
    state VARCHAR(50),
    zip_code INT
);
desc departments;
INSERT INTO departments (dept_name, manager_name, total_employees, budget, location, phone, email, established_year, floor_number, building_name, city, state, zip_code)
VALUES
('Human Resources', 'Neha Kapoor', 15, 1500000.00, 'Block A', '9123456780', 'hr@example.com', 2010, 2, 'Corporate Tower', 'Hyderabad', 'TG', 500001),
('Finance', 'Rajesh Gupta', 20, 2500000.00, 'Block B', '9123456781', 'finance@example.com', 2008, 3, 'Business Plaza', 'Delhi', 'DL', 110001),
('IT', 'Suresh Rao', 30, 5000000.00, 'Block C', '9123456782', 'it@example.com', 2012, 5, 'Tech Hub', 'Mumbai', 'MH', 400001),
('Marketing', 'Pooja Verma', 18, 2000000.00, 'Block D', '9123456783', 'marketing@example.com', 2015, 4, 'Creative Center', 'Chennai', 'TN', 600001),
('Operations', 'Anil Kumar', 25, 3000000.00, 'Block E', '9123456784', 'operations@example.com', 2009, 1, 'Logistics Park', 'Pune', 'MH', 411001),
('Sales', 'Ritika Sharma', 22, 2800000.00, 'Block F', '9123456785', 'sales@example.com', 2013, 6, 'Commerce Tower', 'Bangalore', 'KA', 560001),
('Customer Support', 'Amit Das', 12, 1200000.00, 'Block G', '9123456786', 'support@example.com', 2016, 2, 'Service Hub', 'Kolkata', 'WB', 700001),
('Research', 'Dr. Meena Iyer', 10, 3500000.00, 'Block H', '9123456787', 'research@example.com', 2011, 7, 'Innovation Lab', 'Hyderabad', 'TG', 500002),
('Legal', 'Sunil Nair', 8, 1800000.00, 'Block I', '9123456788', 'legal@example.com', 2014, 3, 'Law Center', 'Cochin', 'KL', 682001),
('Admin', 'Divya Joshi', 14, 1600000.00, 'Block J', '9123456789', 'admin@example.com', 2007, 1, 'Main Office', 'Jaipur', 'RJ', 302001);
select *
 from departments;