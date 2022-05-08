declare
	stu_n plsql_student_2005017.name%TYPE;
	stu_m plsql_student_2005017.name%TYPE;
	stu_r plsql_student_2005017.name%TYPE;
	stu_dob plsql_student_2005017.name%TYPE;
	r number;
	l number;
	b  number := 0;
begin
	r := &r;
	select roll into b from plsql_student_2005017 where roll=r; 
	if b!=0 then
		select roll, name, mark, dob into stu_r, stu_n, stu_m, stu_dob 
			   from plsql_student_2005017 where roll=r; 
		dbms_output.put_line('Roll: '||stu_r|| ' Name: '||stu_n||
			   ' Mark: '||stu_m||' DOB: '||stu_dob);
	end if;
exception
	when no_data_found then
		dbms_output.put_line('Invalid Roll No');
end;
/
