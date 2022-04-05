/* @author Sharaf Qeshta */

create or replace procedure get_info
    (id_ in varchar) as
    salary_ number;
    name_ varchar(50);
    exceed_boundary exception;
    begin
        select SALARY, NAME into salary_, name_
        from employees
        where ID = id_;

        if salary_ > 20000 then
            raise exceed_boundary; -- raising the exception
        end if;

        exception
            when exceed_boundary then -- handle the exception
                DBMS_OUTPUT.PUT_LINE(name_ || ' salary exceed the bound!!');
            when others then
                DBMS_OUTPUT.PUT_LINE('Other Exception Raised');
    end;


BEGIN
    get_info('12345'); -- Sharaf Qeshta salary exceed the bound!!
end;