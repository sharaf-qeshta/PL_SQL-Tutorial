/* @author Sharaf Qeshta */

DECLARE
    x number;
BEGIN
    x := 100;
    while x < 1000 loop
        x := x + 10;
    end loop;
    
    DBMS_OUTPUT.PUT_LINE('x = ' || x); -- x = 1000
end;