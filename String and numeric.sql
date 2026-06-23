create database tab;
use tab;
CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT,
    grade DECIMAL(4,2),
    city VARCHAR(100)
);
INSERT INTO students (name, age, grade, city)
VALUES
('Arjun Kumar', 20, 8.5, 'Hyderabad'),
('Priya Sharma', 22, 9.1, 'Delhi'),
('Ravi Patel', 19, 7.8, 'Mumbai'),
('Sneha Reddy', 21, 8.9, 'Chennai'),
('Karan Mehta', 23, 6.5, 'Pune'),
('Ananya Singh', 20, 9.3, 'Bangalore'),
('Vikram Das', 22, 7.2, 'Kolkata'),
('Meera Iyer', 19, 8.0, 'Hyderabad'),
('Rahul Nair', 21, 7.9, 'Cochin'),
('Divya Joshi', 20, 8.7, 'Jaipur');
desc students;
CREATE TABLE courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    duration_months INT,
    fee DECIMAL(10,2),
    instructor VARCHAR(100)
);
desc courses;
INSERT INTO courses (course_name, duration_months, fee, instructor)
VALUES
('Data Science', 6, 45000.00, 'Dr. Ramesh'),
('Web Development', 4, 30000.00, 'Ms. Kavita'),
('Cyber Security', 5, 40000.00, 'Mr. Arvind'),
('AI & ML', 6, 50000.00, 'Dr. Neha'),
('Cloud Computing', 3, 35000.00, 'Mr. Suresh'),
('Digital Marketing', 2, 20000.00, 'Ms. Pooja'),
('UI/UX Design', 4, 28000.00, 'Mr. Kiran'),
('Blockchain Basics', 3, 32000.00, 'Dr. Anil'),
('Mobile App Dev', 5, 38000.00, 'Ms. Rekha'),
('Big Data Analytics', 6, 47000.00, 'Dr. Sanjay');
select * from students;
select * from courses;