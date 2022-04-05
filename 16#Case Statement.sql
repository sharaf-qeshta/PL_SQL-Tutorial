/* @author Sharaf Qeshta */

DECLARE
    x number;
BEGIN
    x := 100;
    case x
        when 10 then
            DBMS_OUTPUT.PUT_LINE('x = 10');
        when 20 then
            DBMS_OUTPUT.PUT_LINE('x = 20');
        when 50 then
            DBMS_OUTPUT.PUT_LINE('x = 50');
        when 100 then
            DBMS_OUTPUT.PUT_LINE('x = 100');
        else -- if you don`t specify this block CASE_NOT_FOUND error will be raised
            DBMS_OUTPUT.PUT_LINE('x is not handled');
     end case;
end;