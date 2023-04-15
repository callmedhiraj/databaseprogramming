SET SERVEROUTPUT ON SIZE UNLIMITED;
CREATE OR REPLACE PROCEDURE local_named IS
 -- Declare local variable.
 lv_active VARCHAR2(30) DEFAULT 'INNER';
 lv_outer VARCHAR2(30) DEFAULT ' ';
 BEGIN
 -- Print the value before the assignment.
 dbms_output.put_line(
 'Inner ['||lv_outer||']['||lv_active||']');

 -- Assign new value to variable.
 lv_outer := 'INNER';

 -- Print the value after the assignment.
 dbms_output.put_line(
 'Inner ['||lv_outer||']['||lv_active||']');
 END local_named;
 /