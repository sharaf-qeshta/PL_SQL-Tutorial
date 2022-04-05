/* @author Sharaf Qeshta */

/* cursor have many useful attributes
   1- found (true whenever  row is successfully fetched)
   2- notfound (true after last row has been read)*/


declare
    cursor rows is select * from employees;
    x employees%rowtype;
begin
    open rows;

    loop
        exit when rows%notfound; -- when all data fetched
        fetch rows into x;
        DBMS_OUTPUT.PUT_LINE(x.NAME); -- print all the names in the table
    end loop;

    close rows;
end;

