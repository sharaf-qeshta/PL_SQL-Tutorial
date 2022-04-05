/* @author Sharaf Qeshta */

DECLARE
  record employees%rowtype;
BEGIN
    select * into record
    from employees
    where id = '12345';

    -- if statement
    if record.SALARY > 20000 then
        DBMS_OUTPUT.PUT_LINE('Salary Greater Than 20000');
    else
        DBMS_OUTPUT.PUT_LINE('Salary Less Than 20000');
    end if;
end;