-- SELECT country, count(*), avg(age) FROM students
--  GROUP BY country
--  HAVING avg(age) > 20;

SELECT extract (year FROM dob) AS birth_year, count(*) 
FROM students
 GROUP BY birth_year;