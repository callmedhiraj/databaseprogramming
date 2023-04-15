PROCEDURE add_student(id INTEGER, name varchar2(100)) IS
BEGIN
   INSERT INTO  students 
	 (sid, sname)
VALUES
(@id, @name) ;

END add_student;
/