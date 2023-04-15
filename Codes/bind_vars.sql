BEGIN
:num2 := &first;
:num2 := &second;
:sum := :num1 + :num2;
-- display the sum
DBMS_OUTPUT.PUT_LINE('Sum : '||:sum);
END;
/