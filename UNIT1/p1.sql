SET SERVEROUTPUT ON
SET FEEDBACK OFF
SER VERIFY OFF

DECLARE
	 PI CONSTANT NUMBER(3,2) :- 3.14;
	R NUMBER(5);
	CAREA NUMBER(7,2);

	 L NUMBER(5);
	W NUMBER(5);
	RAREA NUMBER(7,2);

	CIR NUMBER(7,2); 

BEGIN
	R:=&R;

	 L:=&L;  
	W:=&W; 

	DBMS_OUTPUT.PUT_LINE('1. AREA OF CIRCLE ');
	DBMS_OUTPUT.PUT_LINE('==================');
	CAREA:=PI*POWER(R,2);
	DBMS_OUTPUT.PUT_LINE('THE  AREA OF CIRCLE IS: '||CAREA);
	DBMS_OUTPUT.PUT_LINE('==================');
	DBMS_OUTPUT.PUT_LINE('	');

	 -- Area of Rectangle
  	  DBMS_OUTPUT.PUT_LINE('2. AREA OF RECTANGLE');
   	 DBMS_OUTPUT.PUT_LINE('========================');
    	RAREA := L * W;
   	 DBMS_OUTPUT.PUT_LINE('Length = ' || L);
   	 DBMS_OUTPUT.PUT_LINE('Width = ' || W);
   	 DBMS_OUTPUT.PUT_LINE('Area of Rectangle = ' || RAREA);
   	 DBMS_OUTPUT.PUT_LINE(' ');

   	 -- Circumference of Circle
    	DBMS_OUTPUT.PUT_LINE('3. CIRCUMFERENCE OF CIRCLE');
   	 DBMS_OUTPUT.PUT_LINE('========================');
   	 CIR := 2 * PI * R;
    	DBMS_OUTPUT.PUT_LINE('Radius = ' || R);
    	DBMS_OUTPUT.PUT_LINE('Circumference of Circle = ' || CIR);
    	DBMS_OUTPUT.PUT_LINE('========================');

END;
/

SET SERVEROUTPUT OFF
SET FEEDBACK ON
SET VERIFY ON


	

