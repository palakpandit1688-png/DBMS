SET SERVEROUTPUT ON
SET FEEDBACK OFF
SET VERIFY OFF

-- ==========================================
-- PROCEDURE: SEARCH_EMP
-- ==========================================

CREATE OR REPLACE PROCEDURE SEARCH_EMP
(
    P_EID     IN  EMP2.EID%TYPE,
    P_ENAME   OUT EMP2.ENAME%TYPE,
    P_SALARY  OUT EMP2.BASICSAL%TYPE,
    P_DEPTNO  OUT EMP2.DEPTNO%TYPE
)
IS
BEGIN
    SELECT ENAME, BASICSAL, DEPTNO
    INTO P_ENAME, P_SALARY, P_DEPTNO
    FROM EMP2
    WHERE EID = P_EID;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        P_ENAME := NULL;
        P_SALARY := NULL;
        P_DEPTNO := NULL;
END;
/

-- ==========================================
-- CALL SEARCH_EMP PROCEDURE
-- ==========================================

DECLARE
    V_EID     EMP2.EID%TYPE;
    V_ENAME   EMP2.ENAME%TYPE;
    V_SALARY  EMP2.BASICSAL%TYPE;
    V_DEPTNO  EMP2.DEPTNO%TYPE;

BEGIN
    V_EID := &EID;

    SEARCH_EMP
    (
        V_EID,
        V_ENAME,
        V_SALARY,
        V_DEPTNO
    );

    IF V_ENAME IS NOT NULL THEN

        DBMS_OUTPUT.PUT_LINE('================================');
        DBMS_OUTPUT.PUT_LINE('       EMPLOYEE DETAILS');
        DBMS_OUTPUT.PUT_LINE('================================');
        DBMS_OUTPUT.PUT_LINE('Employee ID    : ' || V_EID);
        DBMS_OUTPUT.PUT_LINE('Employee Name  : ' || V_ENAME);
        DBMS_OUTPUT.PUT_LINE('Salary         : ' || V_SALARY);
        DBMS_OUTPUT.PUT_LINE('Department No. : ' || V_DEPTNO);
        DBMS_OUTPUT.PUT_LINE('================================');

    ELSE

        DBMS_OUTPUT.PUT_LINE('Employee not found');

    END IF;

END;
/

SET FEEDBACK ON
SET VERIFY ON