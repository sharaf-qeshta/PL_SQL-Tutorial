/* @author Sharaf Qeshta */
/* cursor works as a pointer to the rows in specific table */

declare
    cursor rows is select * from employees;
    x varchar2(100);
    y varchar2(100);
    z employees.salary%type;
begin
    open rows; -- you should open the cursor before using it

    fetch rows into x, y, z; -- take the first row and put the data in x, y
        DBMS_OUTPUT.PUT_LINE('name: ' || y || '; salary: $' || z); -- name: Sharaf Qeshta; salary: $25154.26

    fetch rows into x, y, z; -- move to the next row
        DBMS_OUTPUT.PUT_LINE('name: ' || y || '; salary: $' || z); -- name: John Smith; salary: $21035.25

    fetch rows into x, y, z; -- and so on
        DBMS_OUTPUT.PUT_LINE('name: ' || y || '; salary: $' || z); -- name: noah; salary: $29035.25

    close rows; -- you should close the cursor when you finish
end;


