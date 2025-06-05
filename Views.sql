CREATE VIEW sum_avg
AS
SELECT department_name FROM employees GROUP BY department_name;

SELECT * FROM sum_avg;

