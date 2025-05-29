CREATE Table students(

 student_id SERIAL PRIMARY KEY,
 first_name VARCHAR(25) NOT NULL,
 last_name VARCHAR(25) NOT NULL,
 age INT,
 grade CHAR(2),
 course VARCHAR(50),
 email VARCHAR(100),
 dob DATE,
 blood_group VARCHAR(5),
 country VARCHAR(50)

);


INSERT INTO students (
    first_name, last_name, age, grade, course, email, dob, blood_group, country
) VALUES
('jahid', 'Doe', 20, 'A', 'Computer Science', 'john.doe@example.com', '2004-01-15', 'O+', 'USA'),
('mim', 'Smith', 22, 'B', 'Mathematics', 'emily.smith@example.com', '2002-05-22', 'A-', 'Canada'),
('rupa', 'Brown', 19, 'A', 'Physics', 'michael.brown@example.com', '2005-08-10', 'B+', 'UK'),
('farjana', 'Johnson', 21, 'C', 'Biology', 'sophia.johnson@example.com', '2003-03-18', 'AB+', 'Australia'),
('sadia', 'Lee', 23, 'B', 'Chemistry', 'david.lee@example.com', '2001-07-25', 'O-', 'India');
('nadia', 'Lee', 23, 'B', 'Chemistry', 'david.lee@example.com', '2001-07-25', 'O-', 'UK');
('kadia', 'Lee', 23, 'B', 'Chemistry', 'david.lee@example.com', '2001-07-25', 'O-', 'India');
('ladia', 'Lee', 23, 'B', 'Chemistry', 'david.lee@example.com', '2001-07-25', 'O-', 'India');

SELECT * from students;

-- SELECT * FROM students ORDER BY age ASC;
-- SELECT age FROM students;
-- SELECT age AS "student_age" FROM students;

-- SELECT * from students
-- WHERE country = 'UK';

-- SELECT * FROM students
-- WHERE (country = 'UK' OR country = 'USA') AND age = 20;

-- SELECT * FROM students
-- WHERE age = 20 AND grade = 'A';

-- SELECT max(length(first_name)) FROM students;

-- SELECT concat (first_name, ' ', last_name ) FROM students;

--  SELECT min (age) FROM students;

--  SELECT upper (first_name) FROM students;?

-- SELECT COALESCE(email, 'not provided') AS Email FROM students;
-- SELECT * FROM  students WHERE country = 'UK' OR country = 'USA' this long commeand

-- this short comeeand in

-- SELECT * FROM students WHERE country IN  ('UK', 'USA')

-- SELECT * FROM students WHERE country NOT IN  ('UK', 'USA')

-- SELECT * FROM students
--  WHERE dob BETWEEN '2003-05-22' AND '2001-03-22' ORDER BY dob;

-- SELECT * FROM students
--  WHERE first_name LIKE ('%mim');

-- SELECT * FROM students
--  WHERE first_name  ILIKE ('%mim');

-- SELECT * FROM students LIMIT 3 OFFSET 3 * 0;

-- SELECT * FROM students LIMIT 3 OFFSET 3 * 1;

SELECT * FROM students;

-- DELETE FROM students
-- WHERE grade = 'B' AND country = 'USA';

-- update table cmd

UPDATE students
 SET email = 'rupa@gmail.com', age = 21
 WHERE student_id = 3;



