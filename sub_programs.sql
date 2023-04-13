-- set the serverout on
SET SERVEROUTPUT ON;
DECLARE
	zename varchar2(20);
	procedure printsalary(pename IN VARCHAR2)
	IS
	x NUMBER;
	BEGIN
		SELECT salary
		INTO x
		FROM employees
		WHERE first_name = pename;
	DBMS_OUTPUT.PUT_LINE(x);
END;
BEGIN
printsalary('Ellen');
zename := 'Sundar';
printsalary(zename); 
END;
/
	