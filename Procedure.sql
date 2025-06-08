CREATE OR REPLACE PROCEDURE remove_emp_var(p_emp_id INT)
LANGUAGE plpgsql
AS
$$
DECLARE
    test_var INT;
BEGIN
    SELECT employee_id INTO test_var FROM employees WHERE employee_id = p_emp_id;

    IF FOUND THEN
        DELETE FROM employees WHERE employee_id = test_var;
        RAISE NOTICE 'emp remove done sir';
    END IF;
END;
$$;

-- প্রোসিজার কল করা হচ্ছে
CALL remove_emp_var(27);

-- এখন টেবিল চেক করা হচ্ছে
SELECT * FROM employees;
