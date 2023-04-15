DECLARE
 -- Declare local variable.
 lv_outer VARCHAR2(30) DEFAULT 'OUTER';
 lv_active VARCHAR2(30) DEFAULT 'OUTER';

 BEGIN
 -- Print the value before the inner block.
 dbms_output.put_line('Outer ['||lv_outer||']['||lv_active||']');

 -- Call to the locally declared named procedure.
 local_named;

 -- Print the value after the nested block.
 dbms_output.put_line('Outer ['||lv_outer||']['||lv_active||']');
 EXCEPTION
 WHEN OTHERS THEN
 dbms_output.put_line('Exception ['||SQLERRM||']');
 END;
 /