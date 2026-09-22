SET SERVEROUTPUT ON
SET FEEDBACK OFF
SET VERIFY OFF

DECLARE
    L NUMBER(5);
    W NUMBER(5);
    RAREA NUMBER(7,2);

BEGIN
    L := &L;
    W := &W;

    DBMS_OUTPUT.PUT_LINE('AREA OF RECTANGLE');
    DBMS_OUTPUT.PUT_LINE('=================');

    RAREA := L * W;

    DBMS_OUTPUT.PUT_LINE('Length = ' || L);
    DBMS_OUTPUT.PUT_LINE('Width = ' || W);
    DBMS_OUTPUT.PUT_LINE('Area of Rectangle = ' || RAREA);
    DBMS_OUTPUT.PUT_LINE('=================');
END;
/

SET SERVEROUTPUT OFF
SET FEEDBACK ON
SET VERIFY ON