/* @author Sharaf Qeshta */

create or replace procedure get_info
    (id_ in varchar) as
    salary_ number;
    name_ varchar(50);
    begin
        select SALARY, NAME into salary_, name_
        from employees
        where ID = id_;

        exception
            when NO_DATA_FOUND THEN
                DBMS_OUTPUT.PUT_LINE('The id doesn`t belong to any employee');
    end;


BEGIN
    get_info('15345'); -- The id doesn`t belong to any employee
end;