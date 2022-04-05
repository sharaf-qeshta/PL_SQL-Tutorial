/* @author Sharaf Qeshta */

create or replace function factorial (num in number)
    return integer is
    begin
        if num <= 1 then
            return 1;
        else
            return num * factorial(num-1);
        end if;
    end;


begin
    DBMS_OUTPUT.PUT_LINE(factorial(5)); -- 120
end;
