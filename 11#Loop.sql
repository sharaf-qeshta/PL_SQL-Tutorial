/* @author Sharaf Qeshta */

DECLARE
    x number;
BEGIN
    x := 100;
    loop
        x := x + 10;
        if x > 1000 then
            exit; -- from the loop
        end if;
        DBMS_OUTPUT.PUT_LINE('x = ' || x);
        /*
        * x = 110
        * ...
        * x = 1000
        */
    end loop;
end;