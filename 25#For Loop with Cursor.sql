/* @author Sharaf Qeshta */

/*use for loop with cursor means the cursor will automatically
  1- opened
  2- fetched
  3- closed*/


declare
    cursor rows is select * from employees;
begin
    for x in rows loop
        DBMS_OUTPUT.PUT_LINE('Name: ' || x.NAME || ' Salary: $' || x.SALARY);
    end loop;
end;


