/* @author Sharaf Qeshta */

DECLARE
  record employees%rowtype; -- used to store a full row from the emloyess table
BEGIN
    select * into record
    from employees
        where id = '12345';
    DBMS_OUTPUT.PUT_LINE('id: ' || record.ID || ' name: ' || record.NAME
        || ' salary: $' || record.SALARY);
    -- id: 12345 name: Sharaf Qeshta salary: $25154.26
end;