DECLARE
	a NUMBER(5);
	b NUMBER(5);
	c NUMBER(5);
BEGIN
	a := &a;
	b := &b;
	c := &c;
	IF (a > b) AND (a > c) THEN
		DBMS_OUTPUT.PUT_LINE(a||' is greatest');
	ELSIF (b > a) AND (b > c) THEN
		DBMS_OUTPUT.PUT_LINE(b||' is greatest');

	ELSIF (c > a) AND (c > b) THEN
		DBMS_OUTPUT.PUT_LINE(c||' is greatest');
	END IF;
END;
/
