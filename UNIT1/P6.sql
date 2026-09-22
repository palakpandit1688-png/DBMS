/* 6 Write a PL/SQL block which accepts measurement in feet and displays it in cm, inch and meter. */

SET SERVEROUTPUT ON;
SET VERIFY OFF;
SET FEEDBACK OFF;

DECLARE 
	feet NUMBER;
	cm NUMBER;
	inch NUMBER;
	meter NUMBER;

BEGIN

	
	feet:=&feet;

	
	inch:=feet*12;
	cm:=feet*30.48;
	meter:=feet*0.3048;

	
	DBMS_OUTPUT.PUT_LINE('Measurement in Feet:'||feet);
	DBMS_OUTPUT.PUT_LINE('Measurement in inch:'||inch);
	DBMS_OUTPUT.PUT_LINE('Measurement in cm:'||cm);
	DBMS_OUTPUT.PUT_LINE('Measurement in meter:'||meter);

END;
/

SET SERVEROUTPUT OFF;
SET VERIFY ON;
SET FEEDBACK ON;