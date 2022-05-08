DECLARE
	r DECIMAL(5,2);
	a DECIMAL(10,2);
BEGIN
	r := &r;
	a := 3.14*r*r;
	DBMS_OUTPUT.PUT_LINE('Area of circle: ' || a);
END;
/