SELECT * from  person2;

-- ALTER Table person2
--  ADD COLUMN email VARCHAR(25) DEFAULT 'default@gmail.com' NOT NULL;


ALTER Table person2
ADD COLUMN address VARCHAR (25) DEFAULT 'ctg' NOT NULL ;

--    ALTER TABLE person2
--    DROP COLUMN address;
--  INSERT INTO person2 VALUES (6, 'abul', 26, 'abil@gmail.com')
 INSERT INTO person2 VALUES (7, 'cabul', 27, 'cabul@gmail.com', 'dhaka')

--  rename table column

ALTER Table person2
RENAME COLUMN age to user_age;

ALTER Table person2
ADD constraint unique_person2_user_age UNIQUE(user_age)