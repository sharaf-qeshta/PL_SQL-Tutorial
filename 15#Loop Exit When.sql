/* @author Sharaf Qeshta */

DECLARE
    x number;
BEGIN
    x := 100;
    loop
        exit when x > 1000; -- breaking the loop
        x := x + 10;
    end loop;
    DBMS_OUTPUT.PUT_LINE('x = ' || x); -- x = 1010
end;