/* @author Sharaf Qeshta */

create or replace package com.mathematics is
    function sum_numbers(num1 in number, num2 in number) return integer is
        begin
            return num1 + num2;
        end sum_numbers;

    function subtract_numbers(num1 in number, num2 in number) return integer is
        begin
            return num1 - num2;
        end subtract_numbers;

    function multiply_numbers(num1 in number, num2 in number) return integer is
        begin
            return num1 * num2;
        end multiply_numbers;

    function divide_numbers(num1 in number, num2 in number) return integer is
        begin
            return num1 / num2;
        end divide_numbers;

    procedure display_numbers(num1 in number, num2 in number) is
        begin
            DBMS_OUTPUT.PUT_LINE('Num1: ' || num1 || 'Num2: ' || num2);
        end display_numbers;
    end mathematics;

    
begin
    com.mathematics.sum_numbers(10, 20); -- 30
    com.mathematics.subtract_numbers(10, 20); -- -10
    com.mathematics.multiply_numbers(10, 20); -- 200
end;
