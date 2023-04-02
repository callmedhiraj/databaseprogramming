 SET SERVEROUTPUT ON;
 DECLARE
 PROCEDURE jack IS
 BEGIN
 dbms_output.put_line(hector||' World!');
 END jack;
 FUNCTION hector RETURN NVARCHAR2 IS
 BEGIN
 RETURN 'Hello';
 END hector;
 BEGIN
 jack;
 END;
 /