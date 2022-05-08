declare
	i number;
	j number;
	a number;
	b number;
	flag number;
begin
	a := &a;
	b := &b;
	for i in a..b
	loop
		j := 2;
		flag := 0;

		while (j < i) 
		loop
			if MOD(i,j)=0 then
				flag := 1;
				EXIT;
			end if;
			j := j+1;
		end loop;

		if flag=0 then
			dbms_output.put_line(i||' ');
		end if;
	end loop;
end;
/
