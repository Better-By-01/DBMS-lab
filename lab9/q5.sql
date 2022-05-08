DECLARE
	n NUMBER(10);
	i NUMBER(5);
BEGIN
	n := &n;
	i := 1;
	WHILE (i < 11)
	LOOP
		DBMS_OUTPUT.PUT_LINE(n||' x '||i|| ' = '||(n*i));
		i := i + 1;
	END LOOP;
END;
/ 

