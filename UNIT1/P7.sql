/* 7 Write a PL/SQL block which converts temperature from Celsius to Fahrenheit*/

SET SERVEROUTPUT ON
SET VERIFY OFF
SET FEEDBACK OFF

DECLARE
    CHOICE     NUMBER;
    CELSIUS    NUMBER;
    FAHRENHEIT NUMBER;

BEGIN

    CHOICE := &CHOICE;

    IF CHOICE = 1 THEN

        CELSIUS := &CELSIUS;

        FAHRENHEIT := (CELSIUS * 9 / 5) + 32;

        DBMS_OUTPUT.PUT_LINE('--------- RESULT ---------');
        DBMS_OUTPUT.PUT_LINE('Celsius    : ' || CELSIUS);
        DBMS_OUTPUT.PUT_LINE('Fahrenheit : ' || FAHRENHEIT);

    ELSIF CHOICE = 2 THEN

        FAHRENHEIT := &FAHRENHEIT;

        CELSIUS := (FAHRENHEIT - 32) * 5 / 9;

        DBMS_OUTPUT.PUT_LINE('--------- RESULT ---------');
        DBMS_OUTPUT.PUT_LINE('Fahrenheit : ' || FAHRENHEIT);
        DBMS_OUTPUT.PUT_LINE('Celsius    : ' || CELSIUS);

    ELSE

        DBMS_OUTPUT.PUT_LINE('Invalid Choice');

    END IF;

END;
/

SET SERVEROUTPUT OFF
SET VERIFY ON
SET FEEDBACK ON