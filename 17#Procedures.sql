/* @author Sharaf Qeshta */

create procedure first_procedure as
    begin
        DBMS_OUTPUT.PUT_LINE('first_procedure executed');
    end;


-- executing the procedure
BEGIN
    first_procedure(); -- first_procedure executed
end;