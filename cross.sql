CREATE Table employee (
     em_id INT,
     em_name VARCHAR(50) NOT NULL,
     dept_id INT
);
CREATE Table department (
    dept_id INT,
    dept_name VARCHAR(50) NOT NULL
);

INSERT INTO employee (em_id, em_name, dept_id) VALUES
(101, 'Alice', 1),
(102, 'Bob', 2),
(103, 'Charlie', 3),
(104, 'Diana', 2);


INSERT INTO department (dept_id, dept_name) VALUES
(1, 'Human Resources'),
(2, 'IT'),
(3, 'Finance'),
(4, 'Marketing');

SELECT * FROM employee;
SELECT * FROM department;
-- cross join
SELECT * FROM employee
 CROSS JOIN department;

 -- natual join
 SELECT * FROM employee
  NATURAL JOIN department;