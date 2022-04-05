/* @author Sharaf Qeshta */

/*Triggers Like The Event in programming*/
/*similar to event-driven programming */

-- before
create or replace trigger print_salary_changes
    before update of SALARY on EMPLOYEES for each row
        declare
            salary_differences number;
        begin
            salary_differences := :new.salary - :old.salary;

            DBMS_OUTPUT.PUT_LINE('Old Salary: ' || :old.salary);
            DBMS_OUTPUT.PUT_LINE('New Salary: ' || :new.salary);
            DBMS_OUTPUT.PUT_LINE('Difference: ' || salary_differences);
        end;

-- after

create or replace trigger print_salary_changes
    after update of SALARY on EMPLOYEES for each row
        declare
            salary_differences number;
        begin
            salary_differences := :new.salary - :old.salary;

            DBMS_OUTPUT.PUT_LINE('Old Salary: ' || :old.salary);
            DBMS_OUTPUT.PUT_LINE('New Salary: ' || :new.salary);
            DBMS_OUTPUT.PUT_LINE('Difference: ' || salary_differences);
        end;



update EMPLOYEES set SALARY = SALARY * 1.05 where NAME = 'Sharaf Qeshta';
/*
Old Salary: 25154.26
New Salary: 26411.97
Difference: 1257.71*/


