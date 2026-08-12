/*Write a program that prints value 1 to 100 numbers using FOR LOOP.*/


SET SERVEROUTPUT ON;
SET VERIFY OFF;
SET FEEDBACK OFF;

BEGIN
    FOR I IN 1..100 LOOP
        DBMS_OUTPUT.PUT(RPAD(I, 5));

        IF MOD(I, 10) = 0 THEN
            DBMS_OUTPUT.NEW_LINE;
        END IF;
    END LOOP;
END;
/

SET SERVEROUTPUT OFF;
SET VERIFY ON;
SET FEEDBACK ON;

