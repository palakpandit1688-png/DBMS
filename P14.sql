SET SERVEROUTPUT ON
SET FEEDBACK OFF
SET VERIFY OFF

-- ==========================================
-- FUNCTION TO FIND AGE CATEGORY
-- ==========================================

CREATE OR REPLACE FUNCTION AGE_CATEGORY
(
    P_EID IN EMP2.EID%TYPE
)
RETURN VARCHAR2
IS
    V_AGE EMP2.AGE%TYPE;
BEGIN
    SELECT AGE
    INTO V_AGE
    FROM EMP2
    WHERE EID = P_EID;

    IF V_AGE < 18 THEN
        RETURN 'Minor';

    ELSIF V_AGE <= 60 THEN
        RETURN 'Adult';

    ELSE
        RETURN 'Senior';

    END IF;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'Employee not found';
END;
/

-- ==========================================
-- CALLING PROGRAM
-- ==========================================

DECLARE
    V_EID EMP2.EID%TYPE;
    V_CATEGORY VARCHAR2(20);

BEGIN
    V_EID := &EID;

    V_CATEGORY := AGE_CATEGORY(V_EID);

    DBMS_OUTPUT.PUT_LINE('Employee ID : ' || V_EID);
    DBMS_OUTPUT.PUT_LINE('Age Category: ' || V_CATEGORY);

END;
/

SET FEEDBACK ON
SET VERIFY ON