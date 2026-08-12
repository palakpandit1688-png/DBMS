/* Write a PL/SQL block that calculates the simple interest based on given principal amount, rate of interest and number of years.*/

SET SERVEROUTPUT ON
SET FEEDBACK OFF
SET VERIFY OFF

DECLARE
    P NUMBER(10,2);
    R NUMBER(5,2);
    T NUMBER(5);
    SI NUMBER(10,2);

BEGIN
    P := &P;
    R := &R;
    T := &T;

    SI := (P * R * T) / 100;

    DBMS_OUTPUT.PUT_LINE('SIMPLE INTEREST');
    DBMS_OUTPUT.PUT_LINE('---------------');
    DBMS_OUTPUT.PUT_LINE('Principal = ' || P);
    DBMS_OUTPUT.PUT_LINE('Rate = ' || R || '%');
    DBMS_OUTPUT.PUT_LINE('Years = ' || T);
    DBMS_OUTPUT.PUT_LINE('Simple Interest = ' || SI);
END;
/

SET SERVEROUTPUT OFF
SET FEEDBACK ON
SET VERIFY ON