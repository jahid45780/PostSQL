CREATE Table employees (
  employee_id SERIAL PRIMARY KEY,
  employee_name VARCHAR(50) NOT NULL,
  department_name VARCHAR(50),
  salary DECIMAL(10, 2),
  hire_date DATE
);

INSERT INTO employees (employee_name, department_name, salary, hire_date) VALUES 
('Alice Rahman', 'HR', 50000.00, '2020-01-15'),
('Bob Karim', 'IT', 65000.00, '2019-03-22'),
('Cathy Alam', 'Marketing', 48000.00, '2021-07-11'),
('David Hasan', 'Finance', 72000.00, '2022-05-30'),
('Eva Islam', 'IT', 67000.00, '2018-11-02'),
('Farhan Chowdhury', 'Sales', 55000.00, '2023-01-18'),
('Gina Akter', 'HR', 51000.00, '2017-06-21'),
('Hasan Kabir', 'Marketing', 46000.00, '2021-09-05'),
('Isha Khan', 'Finance', 73000.00, '2020-04-12'),
('Jamil Ahmed', 'IT', 69000.00, '2019-08-09'),
('Kanta Begum', 'Sales', 54000.00, '2022-12-01'),
('Liton Roy', 'HR', 52000.00, '2023-03-07'),
('Mitu Sultana', 'Marketing', 47000.00, '2021-01-29'),
('Nayeem Islam', 'Finance', 71000.00, '2020-10-16'),
('Oli Rahman', 'IT', 66000.00, '2018-05-20'),
('Pinki Das', 'Sales', 56000.00, '2023-06-14'),
('Quazi Nahar', 'HR', 53000.00, '2021-02-24'),
('Rafiq Sayed', 'Marketing', 49000.00, '2020-09-03'),
('Sadia Munni', 'Finance', 75000.00, '2019-12-10'),
('Tareq Zaman', 'IT', 68000.00, '2022-07-27'),
('Umme Habiba', 'Sales', 57000.00, '2023-04-17'),
('Vinita Sarkar', 'HR', 54000.00, '2020-06-22'),
('Wasim Akram', 'Marketing', 50000.00, '2021-11-13'),
('Xenia Khatun', 'Finance', 76000.00, '2018-08-04'),
('Yasir Arafat', 'IT', 70000.00, '2019-10-26'),
('Zinia Ahmed', 'Sales', 58000.00, '2023-05-05'),
('Arif Hossain', 'HR', 55000.00, '2022-01-11'),
('Bristy Islam', 'Marketing', 49500.00, '2021-08-19'),
('Chowdhury Tanvir', 'Finance', 77000.00, '2020-03-28'),
('Dipa Khatun', 'IT', 71000.00, '2023-02-06');

-- SELECT max(salary) FROM employees WHERE department_name = 'HR';
-- SELECT department_name, sum(salary) FROM employees GROUP BY department_name ;


--  Subqueries exm

-- SELECT * FROM ( SELECT department_name, sum(salary) AS total_salary FROM employees GROUP BY department_name ) AS sum_dept_salary;

SELECT employee_name, salary, department_name FROM employees 
 WHERE department_name IN
 (SELECT department_name FROM employees WHERE department_name LIKE '%R%')
 ;
