/* @author Sharaf Qeshta */

DECLARE
    x number;
BEGIN
    x := 100;
    for y in 1..10 loop
        x := x + 10;
        DBMS_OUTPUT.PUT_LINE('x = ' || x || '; y = ' || y);
    end loop;
    /*
    x = 110; y = 1
    x = 120; y = 2
    x = 130; y = 3
    x = 140; y = 4
    x = 150; y = 5
    x = 160; y = 6
    x = 170; y = 7
    x = 180; y = 8
    x = 190; y = 9
    x = 200; y = 10 */
end;