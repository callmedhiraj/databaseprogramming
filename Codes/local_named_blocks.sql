SET SERVEROUTPUT ON SIZE UNLIMITED 
DECLARE
 -- Declare local variable.
 lv_outer VARCHAR2(30) DEFAULT 'OUTER';
 lv_active VARCHAR2(30) DEFAULT 'OUTER';
 -- A local procedure without any formal parameters.
 PROCEDURE local_named IS
 -- Declare local variable.
 lv_active VARCHAR2(30) DEFAULT 'INNER';
 BEGIN
 -- Print the value before the assignment.
 dbms_output.put_line(
 'Inner ['||lv_outer||']['||lv_active||']');

 -- Assign new value to variable. 
	lv_active:= 'INNER';

 -- Print the value after the assignment.
 dbms_output.put_line(
 'Inner ['||lv_outer||']['||lv_active||']');
 END local_named;

 BEGIN
 -- Print the value before the inner block.
 dbms_output.put_line(
 'Outer ['||lv_outer||']['||lv_active||']');

 -- Call to the locally declared named procedure.
 local_named;

 -- Print the value after the nested block.
 dbms_output.put_line(
 'Outer ['||lv_outer||']['||lv_active||']');
 EXCEPTION
 WHEN OTHERS THEN
 dbms_output.put_line('Exception ['||SQLERRM||']');
 END;
 /