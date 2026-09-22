/*Write a program that prints value 1 to 100 number using WHILE LOOP Command */

SET SERVEROUTPUT ON;
SET VERIFY OFF;
SET FEEDBACK OFF;

DECLARE
    I NUMBER := 1;
BEGIN
    WHILE I <= 100 LOOP
        DBMS_OUTPUT.PUT(RPAD(I, 5));

        IF MOD(I, 10) = 0 THEN
            DBMS_OUTPUT.NEW_LINE;
        END IF;

        I := I + 1;
    END LOOP;
END;
/

SET SERVEROUTPUT OFF;
SET VERIFY ON;
SET FEEDBACK ON;