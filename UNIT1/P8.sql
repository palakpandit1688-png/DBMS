/* 8 Write a PL/SQL block to delete the record of employee for given EID*/

SET SERVEROUTPUT ON;
SET VERIFY OFF;
SET FEEDBACK OFF;


DECLARE
    v_eid emp2.eid%TYPE;

BEGIN
    v_eid := &EID;

    DELETE FROM emp2

    WHERE eid = v_eid;

    IF SQL%ROWCOUNT > 0 THEN
        DBMS_OUTPUT.PUT_LINE('Employee record deleted successfully.');

    ELSE
        DBMS_OUTPUT.PUT_LINE('Employee record not found.');

    END IF;

    COMMIT;


EXCEPTION

    WHEN VALUE_ERROR THEN
        DBMS_OUTPUT.PUT_LINE('Please enter a valid EID.');

    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
        ROLLBACK;


END;
/

SET SERVEROUTPUT ON;
SET VERIFY ON;
SET FEEDBACK ON;



