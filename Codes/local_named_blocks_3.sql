 DECLARE
 PROCEDURE jack;
 FUNCTION hector RETURN VARCHAR2;
 PROCEDURE jack IS
 BEGIN
 dbms_output.put_line(hector||' World!');
 END jack;
 FUNCTION hector RETURN VARCHAR2 IS
 BEGIN
 RETURN 'Hello';
 END hector;
 BEGIN
 jack;
 END;
 /