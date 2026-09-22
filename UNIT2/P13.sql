SET SERVEROUTPUT ON
SET FEEDBACK OFF
SET VERIFY OFF

-- ==========================================
-- PROCEDURE TO DELETE EMPLOYEE
-- ==========================================

CREATE OR REPLACE PROCEDURE DELETE_EMP
(
    P_EID IN EMP2.EID%TYPE
)
IS
BEGIN
    DELETE FROM EMP2
    WHERE EID = P_EID;

    IF SQL%ROWCOUNT > 0 THEN
        DBMS_OUTPUT.PUT_LINE('Employee record deleted successfully.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Employee ID not found.');
    END IF;
END;
/

-- ==========================================
-- CALLING PROGRAM
-- ==========================================

DECLARE
    V_EID EMP2.EID%TYPE;

BEGIN
    V_EID := &EID;

    DELETE_EMP(V_EID);

    COMMIT;
END;
/

SET FEEDBACK ON
SET VERIFY ON