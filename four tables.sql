create database assignment;
use assignment;
CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100),
    age INT,
    city VARCHAR(100)
);
desc users;
INSERT INTO users (username, email, age, city)
VALUES
('arjun_k', 'arjun.k@example.com', 25, 'Hyderabad'),
('priya_s', 'priya.s@example.com', 28, 'Delhi'),
('ravi_p', 'ravi.p@example.com', 22, 'Mumbai'),
('sneha_r', 'sneha.r@example.com', 30, 'Chennai'),
('karan_m', 'karan.m@example.com', 35, 'Pune'),
('ananya_s', 'ananya.s@example.com', 24, 'Bangalore'),
('vikram_d', 'vikram.d@example.com', 29, 'Kolkata'),
('meera_i', 'meera.i@example.com', 21, 'Hyderabad'),
('rahul_n', 'rahul.n@example.com', 27, 'Cochin'),
('divya_j', 'divya.j@example.com', 26, 'Jaipur');
select * from users;
CREATE TABLE departments (
    dept_id INT AUTO_INCREMENT PRIMARY KEY,
    dept_name VARCHAR(100) NOT NULL UNIQUE,
    location VARCHAR(100) NOT NULL,
    budget DECIMAL(12,2) CHECK (budget > 0),
    established_year INT CHECK (established_year >= 1990)
);

desc departments;

INSERT INTO departments (dept_name, location, budget, established_year)
VALUES
('HR', 'Hyderabad', 1500000.00, 2000),
('Finance', 'Delhi', 2500000.00, 1995),
('IT', 'Mumbai', 5000000.00, 2005),
('Marketing', 'Chennai', 2000000.00, 2010),
('Operations', 'Pune', 3000000.00, 1998),
('Sales', 'Bangalore', 2800000.00, 2012),
('Support', 'Kolkata', 1200000.00, 2015),
('Research', 'Hyderabad', 3500000.00, 2008),
('Legal', 'Cochin', 1800000.00, 2011),
('Admin', 'Jaipur', 1600000.00, 1992);
CREATE TABLE employees (
    emp_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50),
    age INT CHECK (age >= 18),
    gender VARCHAR(10) CHECK (gender IN ('Male','Female')),
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15) UNIQUE,
    hire_date DATE DEFAULT (CURRENT_DATE),
    salary DECIMAL(10,2) CHECK (salary > 0),
    dept_id INT
);
INSERT INTO employees (first_name, last_name, age, gender, email, phone, hire_date, salary, dept_id)
VALUES
('Arjun','Kumar',28,'Male','arjun.kumar@example.com','9876543210','2022-01-15',55000.00,1),
('Priya','Sharma',32,'Female','priya.sharma@example.com','9876543211','2021-03-10',62000.00,2),
('Ravi','Patel',26,'Male','ravi.patel@example.com','9876543212','2023-07-01',48000.00,3),
('Sneha','Reddy',29,'Female','sneha.reddy@example.com','9876543213','2020-11-20',70000.00,4),
('Karan','Mehta',35,'Male','karan.mehta@example.com','9876543214','2019-05-05',80000.00,5),
('Ananya','Singh',27,'Female','ananya.singh@example.com','9876543215','2024-02-14',56000.00,1),
('Vikram','Das',31,'Male','vikram.das@example.com','9876543216','2022-09-09',60000.00,2),
('Meera','Iyer',25,'Female','meera.iyer@example.com','9876543217','2023-04-18',47000.00,3),
('Rahul','Nair',30,'Male','rahul.nair@example.com','9876543218','2021-12-01',65000.00,4),
('Divya','Joshi',28,'Female','divya.joshi@example.com','9876543219','2020-08-25',72000.00,5);
CREATE TABLE projects (
    project_id INT AUTO_INCREMENT PRIMARY KEY,
    project_name VARCHAR(100) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE,
    budget DECIMAL(12,2) CHECK (budget > 0),
    dept_id INT NOT NULL,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);
INSERT INTO projects (project_name, start_date, end_date, budget, dept_id)
VALUES
('Recruitment Drive','2023-01-01','2023-06-30',500000.00,1),
('Annual Audit','2023-02-01','2023-05-31',800000.00,2),
('ERP Upgrade','2023-03-01','2023-09-30',1200000.00,3),
('Ad Campaign','2023-04-01','2023-07-31',600000.00,4),
('Logistics Optimization','2023-05-01','2023-12-31',900000.00,5),
('Sales Expansion','2023-06-01','2023-11-30',750000.00,6),
('Customer Portal','2023-07-01','2023-10-31',400000.00,7),
('AI Research','2023-08-01','2024-01-31',1500000.00,8),
('Compliance Review','2023-09-01','2023-12-31',300000.00,9),
('Office Renovation','2023-10-01','2024-03-31',500000.00,10);

