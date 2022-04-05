/* @author Sharaf Qeshta */

begin
    for x in (select * from employees) loop
        DBMS_OUTPUT.PUT_LINE('Name: ' || x.NAME || ' Salary: $' || x.SALARY);
    end loop;
end;


