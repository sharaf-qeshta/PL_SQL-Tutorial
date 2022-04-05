/* @author Sharaf Qeshta */

DECLARE
  name_ employees.name%type; -- take the data type of the 'name' column and declare for name_
  salary_ employees.salary%type; -- same
BEGIN
    select name, salary into name_, salary_
    from employees
        where id = '12345';
    DBMS_OUTPUT.PUT_LINE('name: ' || name_ || ' salary: $' || salary_);
    -- name: Sharaf Qeshta salary: $25154.26
end;