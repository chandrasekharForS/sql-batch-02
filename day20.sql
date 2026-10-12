-- grant and revoke
create database college;
use college;
-- 1. Students
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    gender VARCHAR(10),
    date_of_birth DATE,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15),
    department VARCHAR(50),
    year_of_study INT
);

-- 2. Departments
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100),
    hod_name VARCHAR(100),
    office_phone VARCHAR(15)
);

-- 3. Faculty
CREATE TABLE faculty (
    faculty_id INT PRIMARY KEY,
    faculty_name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15),
    department_id INT,
    designation VARCHAR(50),
    salary DECIMAL(10,2),
    FOREIGN KEY (department_id)
        REFERENCES departments(department_id)
);

-- 4. Courses
CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    credits INT,
    department_id INT,
    FOREIGN KEY (department_id)
        REFERENCES departments(department_id)
);
-- 5. Enrollments
CREATE TABLE enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    semester INT,
    FOREIGN KEY (student_id)
        REFERENCES students(student_id),
    FOREIGN KEY (course_id)
        REFERENCES courses(course_id)
);

-- 6. Exams
CREATE TABLE exams (
    exam_id INT PRIMARY KEY,
    course_id INT,
    exam_type VARCHAR(30),
    exam_date DATE,
    semester INT,
    FOREIGN KEY (course_id)
        REFERENCES courses(course_id)
);

-- 7. Marks
CREATE TABLE marks (
    mark_id INT PRIMARY KEY,
    student_id INT,
    exam_id INT,
    marks_obtained DECIMAL(5,2),
    FOREIGN KEY (student_id)
        REFERENCES students(student_id),
    FOREIGN KEY (exam_id)
        REFERENCES exams(exam_id)
);

-- 8. Attendance
CREATE TABLE attendance (
    attendance_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    attendance_date DATE,
    status VARCHAR(10),
    FOREIGN KEY (student_id)
        REFERENCES students(student_id),
    FOREIGN KEY (course_id)
        REFERENCES courses(course_id)
);

-- 9. Fees
CREATE TABLE fees (
    fee_id INT PRIMARY KEY,
    student_id INT,
    fee_type VARCHAR(50),
    amount DECIMAL(10,2),
    payment_date DATE,
    payment_status VARCHAR(20),
    FOREIGN KEY (student_id)
        REFERENCES students(student_id)
);

-- 10. Library Books
CREATE TABLE library_books (
    book_id INT PRIMARY KEY,
    book_title VARCHAR(150),
    author VARCHAR(100),
    category VARCHAR(50),
    available_copies INT
);

-- 11. Library Transactions
CREATE TABLE library_transactions (
    transaction_id INT PRIMARY KEY,
    student_id INT,
    book_id INT,
    issue_date DATE,
    return_date DATE,
    status VARCHAR(20),
    FOREIGN KEY (student_id)
        REFERENCES students(student_id),
    FOREIGN KEY (book_id)
        REFERENCES library_books(book_id)
);


-- 1. Departments

INSERT INTO departments
(department_id, department_name, hod_name, office_phone)
VALUES
(1, 'Computer Science and Engineering', 'Dr. Ramesh Kumar', '0891-2501001'),
(2, 'Electronics and Communication Engineering', 'Dr. Suresh Rao', '0891-2501002'),
(3, 'Mechanical Engineering', 'Dr. Prakash Varma', '0891-2501003'),
(4, 'Civil Engineering', 'Dr. Anil Kumar', '0891-2501004'),
(5, 'Electrical and Electronics Engineering', 'Dr. Lakshmi Devi', '0891-2501005');

-- 2. Students

INSERT INTO students
(student_id, student_name, gender, date_of_birth, email, phone, department, year_of_study)
VALUES
(101, 'Arjun Reddy', 'Male', '2005-06-15', 'arjun.reddy@gmail.com', '9876543210', 'Computer Science and Engineering', 3),
(102, 'Priya Sharma', 'Female', '2005-09-22', 'priya.sharma@gmail.com', '9876543211', 'Computer Science and Engineering', 3),
(103, 'Rahul Kumar', 'Male', '2004-12-10', 'rahul.kumar@gmail.com', '9876543212', 'Electronics and Communication Engineering', 4),
(104, 'Sneha Reddy', 'Female', '2006-02-18', 'sneha.reddy@gmail.com', '9876543213', 'Computer Science and Engineering', 2),
(105, 'Vikram Singh', 'Male', '2005-04-25', 'vikram.singh@gmail.com', '9876543214', 'Mechanical Engineering', 3),
(106, 'Ananya Rao', 'Female', '2004-11-30', 'ananya.rao@gmail.com', '9876543215', 'Civil Engineering', 4),
(107, 'Karthik Naidu', 'Male', '2006-01-12', 'karthik.naidu@gmail.com', '9876543216', 'Electrical and Electronics Engineering', 2),
(108, 'Divya Sharma', 'Female', '2005-07-08', 'divya.sharma@gmail.com', '9876543217', 'Computer Science and Engineering', 3),
(109, 'Manoj Varma', 'Male', '2004-08-19', 'manoj.varma@gmail.com', '9876543218', 'Mechanical Engineering', 4),
(110, 'Keerthi Rao', 'Female', '2006-03-27', 'keerthi.rao@gmail.com', '9876543219', 'Electronics and Communication Engineering', 2);

-- 3. Faculty

INSERT INTO faculty
(faculty_id, faculty_name, email, phone, department_id, designation, salary)
VALUES
(201, 'Dr. Suresh Kumar', 'suresh.kumar@college.edu', '9000000001', 1, 'Professor', 95000.00),
(202, 'Dr. Meena Rao', 'meena.rao@college.edu', '9000000002', 1, 'Associate Professor', 78000.00),
(203, 'Prof. Ravi Sharma', 'ravi.sharma@college.edu', '9000000003', 2, 'Professor', 92000.00),
(204, 'Prof. Kavitha Reddy', 'kavitha.reddy@college.edu', '9000000004', 3, 'Assistant Professor', 65000.00),
(205, 'Prof. Mahesh Kumar', 'mahesh.kumar@college.edu', '9000000005', 4, 'Associate Professor', 75000.00),
(206, 'Dr. Sunitha Devi', 'sunitha.devi@college.edu', '9000000006', 5, 'Professor', 90000.00);

-- 4. Courses

INSERT INTO courses
(course_id, course_name, credits, department_id)
VALUES
(301, 'Core Java Programming', 4, 1),
(302, 'Database Management Systems', 4, 1),
(303, 'Web Technologies', 3, 1),
(304, 'Data Structures', 4, 1),
(305, 'Digital Electronics', 4, 2),
(306, 'Thermodynamics', 4, 3),
(307, 'Structural Engineering', 4, 4),
(308, 'Power Systems', 4, 5);


-- 5. Enrollments

INSERT INTO enrollments
(enrollment_id, student_id, course_id, enrollment_date, semester)
VALUES
(401, 101, 301, '2026-07-01', 5),
(402, 101, 302, '2026-07-01', 5),
(403, 102, 301, '2026-07-01', 5),
(404, 102, 303, '2026-07-01', 5),
(405, 103, 305, '2026-07-01', 7),
(406, 104, 301, '2026-07-01', 3),
(407, 105, 306, '2026-07-01', 5),
(408, 106, 307, '2026-07-01', 7),
(409, 107, 308, '2026-07-01', 3),
(410, 108, 304, '2026-07-01', 5),
(411, 109, 306, '2026-07-01', 7),
(412, 110, 305, '2026-07-01', 3);

-- 6. Exams

INSERT INTO exams
(exam_id, course_id, exam_type, exam_date, semester)
VALUES
(501, 301, 'Mid Term', '2026-09-15', 5),
(502, 302, 'Mid Term', '2026-09-17', 5),
(503, 303, 'Mid Term', '2026-09-19', 5),
(504, 304, 'Mid Term', '2026-09-20', 5),
(505, 305, 'Mid Term', '2026-09-16', 7),
(506, 306, 'Mid Term', '2026-09-18', 5),
(507, 307, 'Mid Term', '2026-09-21', 7),
(508, 308, 'Mid Term', '2026-09-22', 3);

-- 7. Marks

INSERT INTO marks
(mark_id, student_id, exam_id, marks_obtained)
VALUES
(601, 101, 501, 87.00),
(602, 102, 501, 92.00),
(603, 104, 501, 78.00),
(604, 101, 502, 81.00),
(605, 102, 503, 89.00),
(606, 108, 504, 84.00),
(607, 103, 505, 76.00),
(608, 105, 506, 88.00),
(609, 106, 507, 91.00),
(610, 107, 508, 73.00),
(611, 109, 506, 82.00),
(612, 110, 505, 95.00);



-- 8. Attendance

INSERT INTO attendance
(attendance_id, student_id, course_id, attendance_date, status)
VALUES
(701, 101, 301, '2026-09-01', 'Present'),
(702, 102, 301, '2026-09-01', 'Present'),
(703, 104, 301, '2026-09-01', 'Absent'),
(704, 101, 302, '2026-09-02', 'Present'),
(705, 102, 303, '2026-09-02', 'Present'),
(706, 103, 305, '2026-09-02', 'Absent'),
(707, 105, 306, '2026-09-03', 'Present'),
(708, 106, 307, '2026-09-03', 'Present'),
(709, 107, 308, '2026-09-03', 'Present'),
(710, 108, 304, '2026-09-04', 'Absent'),
(711, 109, 306, '2026-09-04', 'Present'),
(712, 110, 305, '2026-09-04', 'Present');

-- 9. Fees

INSERT INTO fees
(fee_id, student_id, fee_type, amount, payment_date, payment_status)
VALUES
(801, 101, 'Tuition Fee', 65000.00, '2026-07-05', 'Paid'),
(802, 102, 'Tuition Fee', 65000.00, '2026-07-06', 'Paid'),
(803, 103, 'Tuition Fee', 70000.00, '2026-07-05', 'Paid'),
(804, 104, 'Tuition Fee', 65000.00, '2026-07-08', 'Pending'),
(805, 105, 'Tuition Fee', 68000.00, '2026-07-07', 'Paid'),
(806, 106, 'Tuition Fee', 62000.00, '2026-07-09', 'Paid'),
(807, 107, 'Tuition Fee', 60000.00, '2026-07-10', 'Pending'),
(808, 108, 'Tuition Fee', 65000.00, '2026-07-11', 'Paid'),
(809, 109, 'Tuition Fee', 68000.00, '2026-07-12', 'Paid'),
(810, 110, 'Tuition Fee', 70000.00, '2026-07-13', 'Paid');

-- 10. Library Books

INSERT INTO library_books
(book_id, book_title, author, category, available_copies)
VALUES
(901, 'Java: The Complete Reference', 'Herbert Schildt', 'Programming', 5),
(902, 'Head First Java', 'Kathy Sierra', 'Programming', 3),
(903, 'Database System Concepts', 'Abraham Silberschatz', 'Database', 4),
(904, 'Clean Code', 'Robert C. Martin', 'Programming', 6),
(905, 'Python Crash Course', 'Eric Matthes', 'Programming', 5),
(906, 'Data Structures and Algorithms', 'Robert Lafore', 'Computer Science', 2),
(907, 'Operating System Concepts', 'Abraham Silberschatz', 'Operating Systems', 4),
(908, 'Computer Networks', 'Andrew S. Tanenbaum', 'Networking', 3);

-- 11. Library Transactions

INSERT INTO library_transactions
(transaction_id, student_id, book_id, issue_date, return_date, status)
VALUES
(1001, 101, 901, '2026-09-01', '2026-09-15', 'Returned'),
(1002, 102, 902, '2026-09-02', NULL, 'Issued'),
(1003, 103, 903, '2026-09-03', '2026-09-17', 'Returned'),
(1004, 104, 904, '2026-09-04', NULL, 'Issued'),
(1005, 105, 905, '2026-09-05', '2026-09-19', 'Returned'),
(1006, 106, 906, '2026-09-06', NULL, 'Issued'),
(1007, 107, 907, '2026-09-07', '2026-09-21', 'Returned'),
(1008, 108, 908, '2026-09-08', NULL, 'Issued'),
(1009, 109, 901, '2026-09-09', '2026-09-23', 'Returned'),
(1010, 110, 902, '2026-09-10', NULL, 'Issued');

-- grant
-- create user user_name idendified by password;

create user 'simran'@'localhost'
identified by 'simran@123';

drop user simran@'localhost';

create user 'santhosh'@'localhost'
identified by 'santhos@123';

drop user santhosh@'localhost';

select * from students;

grant select on college.students
to 'simran'@'localhost';

