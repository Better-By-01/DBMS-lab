DECLARE
	ch CHAR;
BEGIN
	ch := '&ch';
	IF ch IN ('A', 'E', 'I', 'O', 'U', 'a', 'e', 'i', 'o', 'u') THEN
		DBMS_OUTPUT.PUT_LINE(ch || ' is a vowel');
	ELSE
		DBMS_OUTPUT.PUT_LINE(ch || ' is a consonant');
	END IF;
END;
/