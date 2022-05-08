DECLARE
	N NUMBER;
	s NUMBER:= 0;
	len NUMBER;
	r NUMBER;
	temp NUMBER;
BEGIN
	N:= &N;
	temp:= N;
	len := length(to_char(n));
	WHILE N > 0
	LOOP 
		r := MOD(N,10);
		s := s + power(r, len);
		N := trunc(N/10);
	END LOOP;
	IF (s=temp) THEN
		DBMS_OUTPUT.PUT_LINE('ARMSTRONG NO.');
	ELSE 
		DBMS_OUTPUT.PUT_LINE('NOT AN ARMSTRONG NO.');
	END IF;
END;
/