 /* area of circle*/

SET SERVEROUTPUT ON
SET FEEDBACK OFF
SET VERIFY OFF

DECLARE
    PI CONSTANT NUMBER(3,2) := 3.14;
    R NUMBER(5);
    CAREA NUMBER(7,2);

BEGIN
    R := &R;

    DBMS_OUTPUT.PUT_LINE('AREA OF CIRCLE');
    DBMS_OUTPUT.PUT_LINE('==============');

    CAREA := PI * POWER(R,2);

    DBMS_OUTPUT.PUT_LINE('Radius = ' || R);
    DBMS_OUTPUT.PUT_LINE('Area of Circle = ' || CAREA);
    DBMS_OUTPUT.PUT_LINE('==============');
END;
/

SET SERVEROUTPUT OFF
SET FEEDBACK ON
SET VERIFY ON
