declare
	m PLSQL_STUDENT_2005017.mark%TYPE;
	name plsql_student_2005017.name%TYPE;
	r number;
	n number;
	d number;
begin
	select count(roll) into n from plsql_student_2005017;
	r := 1;
	WHILE n > 0 
		loop
			select mark, name into m, name from plsql_student_2005017 where roll = r;
			d := TRUNC(m/10);
			case d
			when 10 then dbms_output.put_line('Name: '||name||' Mark: '||m||' Grade: A+');
			when 9 then dbms_output.put_line('Name: '||name||' Mark: '||m||' Grade: A');
			when 8 then dbms_output.put_line('Name: '||name||' Mark: '||m||' Grade: B');
			when 7 then dbms_output.put_line('Name: '||name||' Mark: '||m||' Grade: C');
			when 6 then dbms_output.put_line('Name: '||name||' Mark: '||m||' Grade: D');
			when 5 then dbms_output.put_line('Name: '||name||' Mark: '||m||' Grade: E');
			when 4 then dbms_output.put_line('Name: '||name||' Mark: '||m||' Grade: F');
			when 3 then dbms_output.put_line('Name: '||name||' Mark: '||m||' Grade: G');
			end case;
			r := r+1;
			n := n-1;
		end loop;
end;
/
