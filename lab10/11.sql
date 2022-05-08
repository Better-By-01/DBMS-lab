declare
	stu_data plsql_student_2005017%ROWTYPE;
	r number;
	n number;
	d number;
begin
	select count(roll) into n from plsql_student_2005017;
	r := 1;
	WHILE n > 0 
		loop
			select * into stu_data from plsql_student_2005017 where roll = r;
			d := TRUNC(stu_data.mark/10);
			case d
			when 10 then dbms_output.put_line('Name: '||stu_data.name||' Mark: '||stu_data.mark||' Grade: A+');
			when 9 then dbms_output.put_line('Name: '||stu_data.name||' Mark: '||stu_data.mark||' Grade: A');
			when 8 then dbms_output.put_line('Name: '||stu_data.name||' Mark: '||stu_data.mark||' Grade: B');
			when 7 then dbms_output.put_line('Name: '||stu_data.name||' Mark: '||stu_data.mark||' Grade: C');
			when 6 then dbms_output.put_line('Name: '||stu_data.name||' Mark: '||stu_data.mark||' Grade: D');
			when 5 then dbms_output.put_line('Name: '||stu_data.name||' Mark: '||stu_data.mark||' Grade: E');
			when 4 then dbms_output.put_line('Name: '||stu_data.name||' Mark: '||stu_data.mark||' Grade: F');
			when 3 then dbms_output.put_line('Name: '||stu_data.name||' Mark: '||stu_data.mark||' Grade: G');
			end case;
			r := r+1;
			n := n-1;
		end loop;
end;
/
