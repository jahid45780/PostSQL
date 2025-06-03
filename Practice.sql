-- Step 1: Create department table first
CREATE Table department (
    dept_id SERIAL PRIMARY KEY,
    dept_name VARCHAR(50)
);

-- Step 2: Create employee table after department
CREATE Table employee (
     em_id SERIAL PRIMARY KEY ,
     em_name VARCHAR(50),
     dept_id INT REFERENCES department(dept_id),
     salary DECIMAL(10, 2),
     hire_date DATE
);

-- Step 3: Insert data into department
INSERT INTO department (dept_name) VALUES
('HR'),
('Finance'),
('Engineering'),
('Marketing');

-- Step 4: Insert data into employee
INSERT INTO employee (em_name, dept_id, salary, hire_date) VALUES
('Alice Johnson', 1, 50000.00, '2021-03-15'),
('Bob Smith', 2, 60000.00, '2020-06-01'),
('Charlie Brown', 3, 75000.00, '2019-11-20'),
('Diana Prince', 4, 58000.00, '2022-01-10'),
('Edward King', 3, 70000.00, '2021-09-05'),
('Fiona Adams', 2, 62000.00, '2023-04-25'),
('George Clark', 1, 52000.00, '2020-08-18'),
('Hannah Lewis', 4, 61000.00, '2022-12-12');

-- SELECT * FROM employee
-- JOIN department ON employee.dept_id = department.dept_id;
-- SELECT * FROM employee
-- JOIN department USING(dept_id);

-- SELECT dept_name, round(avg(salary)) FROM employee
-- JOIN department USING(dept_id)
-- GROUP BY dept_name
-- ;

-- SELECT dept_name, count(*) FROM employee
-- JOIN department USING(dept_id)
-- GROUP BY dept_name
-- ;

SELECT dept_name, round(max(salary)) AS max_salary FROM employee
JOIN department USING(dept_id)
GROUP BY dept_name
ORDER BY max_salary DESC
LIMIT 1
;
SELECT EXTRACT(YEAR FROM hire_date) AS hire_year, COUNT(*)
FROM employee
GROUP BY EXTRACT(YEAR FROM hire_date)
ORDER BY hire_year;


