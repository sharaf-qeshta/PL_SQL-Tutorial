/* @author Sharaf Qeshta */

DECLARE
    x number;
BEGIN
    x := 100;
    for y in reverse 1..10 loop -- y will start at 10 and end with 1
        x := x + 10;
        DBMS_OUTPUT.PUT_LINE('x = ' || x || '; y = ' || y);
    end loop;
    /*
    x = 110; y = 10
    x = 120; y = 9
    x = 130; y = 8
    x = 140; y = 7
    x = 150; y = 6
    x = 160; y = 5
    x = 170; y = 4
    x = 180; y = 3
    x = 190; y = 2
    x = 200; y = 1 */
end;