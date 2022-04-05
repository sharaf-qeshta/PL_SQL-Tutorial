/* @author Sharaf Qeshta */

create or replace function sum_values(num1 in number, num2 in number
 , num3 in number) return integer is
    begin
        return num1 + num2 + num3;
    end;



BEGIN
   DBMS_OUTPUT.PUT_LINE(sum_values(10, 20, 30)); -- 60
end;