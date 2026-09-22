/*  Write a PL/SQL block to calculate the square and cube of the given
number. */

SET SERVEROUTPUT ON
SET FEEDBACK OFF
SET VERIFY OFF

DECLARE
    N NUMBER(5);
    SQUARE NUMBER(10);
    CUBE NUMBER(10);

BEGIN
    N := &N;

    SQUARE := N * N;
    CUBE := N * N * N;

    DBMS_OUTPUT.PUT_LINE('NUMBER = ' || N);
    DBMS_OUTPUT.PUT_LINE('SQUARE = ' || SQUARE);
    DBMS_OUTPUT.PUT_LINE('CUBE = ' || CUBE);

END;
/

SET SERVEROUTPUT OFF
SET FEEDBACK ON
SET VERIFY ON