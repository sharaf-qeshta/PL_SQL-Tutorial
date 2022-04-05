/* @author Sharaf Qeshta */

create or replace procedure get_info
    (id_ in varchar) as
    salary_ number;
    name_ varchar(50);
    begin
        select SALARY, NAME into salary_, name_
        from employees
        where ID = id_;
        DBMS_OUTPUT.PUT_LINE('Name: ' || name_ || ' salary: $' || salary_);
    end;


BEGIN
    get_info('12345'); -- Name: Sharaf Qeshta salary: $25154.26
end;