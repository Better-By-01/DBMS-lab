BEGIN
	UPDATE DEPOSIT_2005017 SET AMOUNT=AMOUNT*1.15
		WHERE ACTNO=&ACTNO;
	IF SQL%FOUND THEN 
		DBMS_OUTPUT.PUT_LINE('MODIFIED');
	END IF;
	IF SQL%NOTFOUND THEN
		DBMS_OUTPUT.PUT_LINE('NOT MODIFIED');
	END IF;
END;
/