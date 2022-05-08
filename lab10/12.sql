declare
	stu_m plsql_student_2005017.mark%TYPE;
	stu_n plsql_student_2005017.name%TYPE;
	stu_per decimal(10,2);
	stu_cgpa decimal(10,2);
	n number;
	r number;
	
begin
	r := 1;	
	select count(roll) into n from plsql_student_2005017;
	while r <= n
	loop
		select name, mark into stu_n, stu_m from plsql_student_2005017 where roll=r;	
		--considering full marks = 100--
		stu_per := (stu_m/100)*100;
		stu_cgpa := (stu_per/9.5);
		dbms_output.put_line('Name: '||stu_n||' CGPA: '||stu_cgpa);
		r := r+1;
	end loop;
end;
/
