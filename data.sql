-- SHOW timezone;
CREATE TABLE timez (ts TIMESTAMP without time zone, tsz TIMESTAMP with time zone);
INSERT INTO timez VALUES('2024-04-14 10:19:00,', '2024-04-14 10:19:00,' );

SELECT * FROM timez;

SELECT to_char (now(), 'ddd');

SELECT CURRENT_DATE - INTERVAL '1 year 7 month';

SELECT age (CURRENT_DATE, '2003-04-24');

-- SELECT *, age(CURRENT_DATE, dob) FROM students;