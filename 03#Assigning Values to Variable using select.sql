/* @author Sharaf Qeshta */

DECLARE
  bonus number;
  emp_id varchar(10) := '1234567890';
BEGIN
   SELECT salary * 0.10 INTO bonus FROM employees
    WHERE employee_id = emp_id;
end;