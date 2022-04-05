/* @author Sharaf Qeshta */
/* cursor have many useful attributes
   1- isopen (boolean value)
   2- countrows (how many rows has been fetched)*/


declare
    cursor rows is select * from employees;
    x employees%rowtype;
begin

    if not rows%isopen then
        open rows;
    end if;

    fetch rows into x;
    DBMS_OUTPUT.PUT_LINE('Name: ' || x.NAME);
    DBMS_OUTPUT.PUT_LINE('Number Of Rows: ' || rows%rowcount); -- rowcount attribute ('how many rows has been fetched')

    if rows%isopen then -- isopen attribute
        close rows;
    end if;
end;

