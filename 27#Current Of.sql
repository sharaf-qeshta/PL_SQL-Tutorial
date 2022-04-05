/* @author Sharaf Qeshta */

/* current of check whether the row passed is the same as the current row in the cursor*/


declare
    cursor rows is select * from employees;
    record employees%rowtype;
begin
    open rows;
    fetch rows into record;
    UPDATE employees SET salary = salary * 1.02 WHERE CURRENT OF rows; -- it will update the first row
    close rows;
end;


