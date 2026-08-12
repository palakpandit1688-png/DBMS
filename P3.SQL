/* Write a PL/SQL block to calculate the total, percentage and grade of student 
based on Rollno from RESULT table */

SET SERVEROUTPUT ON;
SET FEEDBACK OFF;
SET VERIFY OFF;

DECLARE

    ROLLNO  NUMBER(5);
    NAME    VARCHAR2(30);
    SUB1    NUMBER(3);
    SUB2    NUMBER(3);
    SUB3    NUMBER(3);
    SUB4    NUMBER(3);
    SUB5    NUMBER(3);

    TOTAL   NUMBER(5,2);
    PER     NUMBER(5,2);
    GRADE   VARCHAR2(5);

BEGIN

    ROLLNO := &ROLLNO;
    NAME   := '&NAME';

    SUB1 := &SUB1;
    SUB2 := &SUB2;
    SUB3 := &SUB3;
    SUB4 := &SUB4;
    SUB5 := &SUB5;


    TOTAL := SUB1 + SUB2 + SUB3 + SUB4 + SUB5;

    PER := TOTAL / 5;


    IF PER >= 85 THEN
        GRADE := 'O';

    ELSIF PER >= 70 THEN
        GRADE := 'A+';

    ELSIF PER >= 60 THEN
        GRADE := 'A';

    ELSIF PER >= 50 THEN
        GRADE := 'B';

    ELSIF PER >= 40 THEN
        GRADE := 'C';

    ELSE
        GRADE := 'FAIL';

    END IF;


    INSERT INTO RESULT
VALUES(ROLLNO,NAME,SUB1,SUB2,SUB3,SUB4,SUB5,TOTAL,PER,GRADE);


    COMMIT;


    DBMS_OUTPUT.PUT_LINE('----- STUDENT RESULT -----');
    DBMS_OUTPUT.PUT_LINE('ROLL NO : ' || ROLLNO);
    DBMS_OUTPUT.PUT_LINE('NAME    : ' || NAME);
    DBMS_OUTPUT.PUT_LINE('TOTAL   : ' || TOTAL);
    DBMS_OUTPUT.PUT_LINE('PERCENT : ' || PER);
    DBMS_OUTPUT.PUT_LINE('GRADE   : ' || GRADE);


END;
/

SET SERVEROUTPUT OFF;
SET FEEDBACK ON;
SET VERIFY ON;