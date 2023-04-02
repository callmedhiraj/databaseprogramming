-- Nested Anonymous Blocks
DECLARE
 -- Declare local variable.
 lv_input VARCHAR2(30) DEFAULT 'OUTER';
 BEGIN
 -- Print the value before the inner block.
 dbms_output.put_line('Outer block ['||lv_input||']');
 -- Nested block.
 BEGIN
 -- Print the value before the assignment.
 dbms_output.put_line('Inner block ['||lv_input||']');

 -- Assign new value to variable.
 lv_input := 'INNER';

 -- Print the value after the assignment.
 dbms_output.put_line('Inner block ['||lv_input||']');
 END;

 -- Print the value after the nested block.
 dbms_output.put_line('Outer block ['||lv_input||']');
 EXCEPTION
 WHEN OTHERS THEN
 dbms_output.put_line('Exception ['||SQLERRM||']');
 END;
 /