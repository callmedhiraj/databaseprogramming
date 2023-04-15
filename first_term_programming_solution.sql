-- Prepare and execute an Anonymous block that 
-- reads three numbers and displays the sum of these floating type numbers.
set serveroutput on
DECLARE 
num1 number;
num2 number;
num3 number;
sum_of_three number;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Enter the first Number:');
    num1 := &sv_num1;
    DBMS_OUTPUT.PUT_LINE('Enter the second Number:');
    num2 := &sv_num2;
    DBMS_OUTPUT.PUT_LINE('Enter the third Number:');
    num3 := &sv_num3;
    
    -- calculate the sum
    sum_of_three := num1 + num2 + num3;
    --display the sum
    DBMS_OUTPUT.PUT_LINE('The sum of ' || sum_of_three );
END;
/
/**
PL/SQL block to read a number and display the even multiples less than 500
**/
DECLARE 
   x number := &sv_x; 
   i number := 1;
BEGIN 
   LOOP 
    IF  x * i > 500 THEN 
    exit; 
    END IF;
    IF (x * i) MOD 2 =0 THEN 
    dbms_output.put_line((x * i)); 
    END IF; 
    i:= i+1; 
   END LOOP; 
   
END; 
/
/*
Write a PL/SQL block of statement that raises 
some error if the input is not in the range of 1 to 100.
*/
DECLARE 
num1 NUMBER;
lv_error EXCEPTION;
BEGIN
DBMS_OUTPUT.PUT_LINE('Enter a number between 1 and 100');
num1:= &sv_num1;
IF (num1 < 1) OR (num1 > 100) THEN
RAISE lv_error;
END IF;
DBMS_OUTPUT.PUT_LINE('You entered' || num1);
EXCEPTION 
    WHEN lv_error THEN
    DBMS_OUTPUT.PUT_LINE('Number not in range');
    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE(SQLERRM); 
END;
/










