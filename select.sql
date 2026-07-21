CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
);
-- Insert 30 Student Records

INSERT INTO students
(first_name, last_name, age, grade, course, email, dob, blood_group, country)
VALUES
('John', 'Smith', 20, 'A+', 'Computer Science', 'john.smith@example.com', '2004-03-12', 'O+', 'USA'),

('Emma', 'Johnson', 22, 'A', 'Software Engineering', 'emma.johnson@example.com', '2002-08-25', 'A+', 'Canada'),

('Michael', 'Brown', 21, 'B+', 'Information Technology', 'michael.brown@example.com', '2003-01-15', 'B+', 'UK'),

('Sophia', 'Davis', 19, 'A-', 'Business Administration', 'sophia.davis@example.com', '2005-05-10', 'AB+', 'Australia'),

('Daniel', 'Wilson', 23, 'B', 'Accounting', 'daniel.wilson@example.com', '2001-11-21', 'O-', 'Germany'),

('Olivia', 'Taylor', 20, 'A+', 'Marketing', 'olivia.taylor@example.com', '2004-06-30', 'A-', 'France'),

('James', 'Anderson', 24, 'C+', 'Economics', 'james.anderson@example.com', '2000-12-18', 'B-', 'Italy'),

('Ava', 'Thomas', 21, 'A', 'Finance', 'ava.thomas@example.com', '2003-04-27', 'O+', 'Spain'),

('William', 'Jackson', 22, 'B+', 'Mathematics', 'william.jackson@example.com', '2002-02-14', 'AB-', 'Japan'),

('Mia', 'White', 20, 'A-', 'Physics', 'mia.white@example.com', '2004-07-19', 'A+', 'South Korea'),

('Benjamin', 'Harris', 23, 'B', 'Chemistry', 'benjamin.harris@example.com', '2001-09-08', 'B+', 'India'),

('Charlotte', 'Martin', 19, 'A+', 'Biology', 'charlotte.martin@example.com', '2005-10-11', 'O+', 'Bangladesh'),

('Lucas', 'Thompson', 21, 'B+', 'English', 'lucas.thompson@example.com', '2003-01-29', 'A-', 'India'),

('Amelia', 'Garcia', 22, 'A', 'History', 'amelia.garcia@example.com', '2002-05-20', 'AB+', 'Mexico'),

('Henry', 'Martinez', 20, 'C', 'Political Science', 'henry.martinez@example.com', '2004-09-09', 'O-', 'Argentina'),

('Harper', 'Robinson', 24, 'B+', 'Psychology', 'harper.robinson@example.com', '2000-06-16', 'B-', 'Netherlands'),

('Alexander', 'Clark', 23, 'A', 'Data Science', 'alexander.clark@example.com', '2001-03-22', 'A+', 'Sweden'),

('Evelyn', 'Rodriguez', 21, 'A-', 'Artificial Intelligence', 'evelyn.rodriguez@example.com', '2003-12-02', 'O+', 'Norway'),

('Matthew', 'Lewis', 22, 'B+', 'Cyber Security', 'matthew.lewis@example.com', '2002-11-13', 'AB-', 'Denmark'),

('Abigail', 'Lee', 19, 'A+', 'Machine Learning', 'abigail.lee@example.com', '2005-08-05', 'A-', 'Singapore'),

('David', 'Walker', 20, 'B', 'Graphic Design', 'david.walker@example.com', '2004-04-18', 'B+', 'Malaysia'),

('Ella', 'Hall', 21, 'A', 'Web Development', 'ella.hall@example.com', '2003-07-07', 'O+', 'Nepal'),

('Joseph', 'Allen', 22, 'B+', 'Computer Engineering', 'joseph.allen@example.com', '2002-02-28', 'A+', 'Pakistan'),

('Grace', 'Young', 20, 'A-', 'Civil Engineering', 'grace.young@example.com', '2004-01-31', 'AB+', 'Sri Lanka'),

('Samuel', 'King', 24, 'C+', 'Mechanical Engineering', 'samuel.king@example.com', '2000-10-15', 'O-', 'China'),

('Chloe', 'Scott', 23, 'A', 'Electrical Engineering', 'chloe.scott@example.com', '2001-05-09', 'B+', 'Thailand'),

('Andrew', 'Green', 21, 'B', 'Architecture', 'andrew.green@example.com', '2003-03-17', 'A-', 'UAE'),

('Lily', 'Baker', 22, 'A+', 'Law', 'lily.baker@example.com', '2002-09-24', 'O+', 'Turkey'),

('Christopher', 'Adams', 20, 'B+', 'Medicine', 'christopher.adams@example.com', '2004-12-01', 'AB-', 'New Zealand'),

('Zoe', 'Nelson', 19, 'A', 'Nursing', 'zoe.nelson@example.com', '2005-06-14', 'A+', 'Ireland');

-- Show all students
SELECT * FROM students;
select first_name , age from students

-- coulumn alias
 select first_name as "f Nm", age as "Ag" from students;

--sorting 
select first_name , blood_group, country, age from students order by age asc
select first_name , blood_group, country, age from students order by country asc


--Distinct
select distinct country from students

-- select students form any country
select * from students where country = 'Bangladesh'
select first_name, course from students where country = 'India'

--select sudents with ' a  grade in physices'

select first_name, course from students where grade = 'A'







-- ==========================================
-- Database 1 : Library Management System
-- Create Table
-- ==========================================

CREATE TABLE books (
    book_id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    author VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    price NUMERIC(6,2),
    publish_year INT,
    language VARCHAR(30),
    stock INT,
    publisher VARCHAR(100),
    country VARCHAR(50)
);


-- ==========================================
-- Insert Book Records
-- ==========================================

INSERT INTO books
(title, author, category, price, publish_year, language, stock, publisher, country)

VALUES
('Clean Code', 'Robert Martin', 'Programming', 45.99, 2008, 'English', 12, 'Prentice Hall', 'USA'),

('Atomic Habits', 'James Clear', 'Self Help', 20.50, 2018, 'English', 15, 'Penguin', 'UK'),

('The Alchemist', 'Paulo Coelho', 'Novel', 15.99, 1988, 'English', 20, 'Harper', 'Brazil'),

('Python Crash Course', 'Eric Matthes', 'Programming', 38.00, 2019, 'English', 8, 'No Starch', 'USA'),

('Rich Dad Poor Dad', 'Robert Kiyosaki', 'Finance', 18.75, 1997, 'English', 10, 'Plata', 'USA'),

('Think and Grow Rich', 'Napoleon Hill', 'Motivation', 16.00, 1937, 'English', 7, 'Success Books', 'USA'),

('Deep Work', 'Cal Newport', 'Productivity', 24.99, 2016, 'English', 11, 'Grand Central', 'Canada'),

('The Pragmatic Programmer', 'Andrew Hunt', 'Programming', 42.00, 1999, 'English', 6, 'Addison Wesley', 'USA'),

('Ikigai', 'Hector Garcia', 'Lifestyle', 19.99, 2017, 'English', 13, 'Penguin', 'Japan'),

('You Can Win', 'Shiv Khera', 'Motivation', 14.99, 2003, 'English', 18, 'Macmillan', 'India');

--show all data form books 
SELECT * FROM books;

-- select title and price form books
SELECT title, price FROM books;