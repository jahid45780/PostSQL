-- Step 1: মূল টেবিল তৈরি
CREATE TABLE my_user (
    userName VARCHAR(50),
    email VARCHAR(100)
);

-- Step 2: কিছু ডাটা ইনসার্ট
INSERT INTO my_user (userName, email) VALUES
('john_doe', 'john@example.com'),
('jane_smith', 'jane@example.com'),
('mike_ross', 'mike.ross@example.com'),
('rachel_green', 'rachel.green@example.com'),
('harvey_specter', 'harvey@example.com'),
('louis_litt', 'louis@example.com'),
('donna_paulsen', 'donna@example.com'),
('jessica_pearson', 'jessica@example.com'),
('sheila_sazs', 'sheila@example.com'),
('katrina_bennett', 'katrina@example.com');

-- Step 3: রিপোর্ট টেবিল তৈরি
CREATE TABLE deleted_user_report (
    deleted_user_name VARCHAR(50),
    deletedAt TIMESTAMP
);

-- Step 4: ফাংশন তৈরি
CREATE OR REPLACE FUNCTION save_deleted_user()
RETURNS TRIGGER
LANGUAGE plpgsql
AS
$$
BEGIN
    INSERT INTO deleted_user_report (deleted_user_name, deletedAt)
    VALUES (OLD.userName, now());

    RETURN OLD;
END;
$$;

-- Step 5: ট্রিগার তৈরি
CREATE OR REPLACE TRIGGER save_deleted_user
BEFORE DELETE ON my_user
FOR EACH ROW
EXECUTE FUNCTION save_deleted_user();

-- Step 6: ডিলিট করলে রিপোর্টে রেকর্ড যাবে
DELETE FROM my_user WHERE userName = 'katrina_bennett';

-- চেক করো রিপোর্ট টেবিল
SELECT * FROM deleted_user_report;
