CREATE Function all_datas()
RETURNS SETOF employees
LANGUAGE SQL
AS
$$
  SELECT * FROM employees
$$;
SELECT * FROM all_datas()

CREATE OR REPLACE FUNCTION alls_data()
RETURNS TABLE( employee_name, salary NUMERIC)
LANGUAGE SQL
AS
$$
  SELECT salary FROM employees;
$$;
SELECT * FROM alls_data();
