DECLARE 
	n NUMBER(5);
BEGIN
	n := &n;
	IF (MOD(n,2)=0) THEN
		DBMS_OUTPUT.PUT_LINE('EVEN');
	ELSE
		DBMS_OUTPUT.PUT_LINE('ODD');
	END IF;
END;
/