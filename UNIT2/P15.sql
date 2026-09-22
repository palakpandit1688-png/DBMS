SET SERVEROUTPUT ON;
SET FEEDBACK OFF;
SET VERIFY OFF;

------------------------------------------------------------
-- PACKAGE DECLARATION
------------------------------------------------------------

CREATE OR REPLACE PACKAGE EMP_PKG
IS
    PROCEDURE SHOW_EMP(P_ID NUMBER);

    FUNCTION GET_SALARY(P_ID NUMBER)
    RETURN NUMBER;
END EMP_PKG;
/

------------------------------------------------------------
-- PACKAGE BODY
------------------------------------------------------------

CREATE OR REPLACE PACKAGE BODY EMP_PKG
IS

    PROCEDURE SHOW_EMP(P_ID NUMBER)
    IS
        V_NAME EMP2.ENAME%TYPE;
        V_SQL  VARCHAR2(1000);
    BEGIN

        V_SQL := 'SELECT ENAME
                  FROM EMP2
                  WHERE EID = :1';

        EXECUTE IMMEDIATE V_SQL
        INTO V_NAME
        USING P_ID;

        DBMS_OUTPUT.PUT_LINE(
            'Employee Name : ' || V_NAME
        );

    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            DBMS_OUTPUT.PUT_LINE(
                'Employee ID not found'
            );
    END SHOW_EMP;


    FUNCTION GET_SALARY(P_ID NUMBER)
    RETURN NUMBER
    IS
        V_SALARY EMP2.BASICSAL%TYPE;
        V_SQL    VARCHAR2(1000);
    BEGIN

        V_SQL := 'SELECT BASICSAL
                  FROM EMP2
                  WHERE EID = :1';

        EXECUTE IMMEDIATE V_SQL
        INTO V_SALARY
        USING P_ID;

        RETURN V_SALARY;

    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RETURN NULL;
    END GET_SALARY;

END EMP_PKG;
/

------------------------------------------------------------
-- USER INPUT
------------------------------------------------------------

SET FEEDBACK ON;
SET VERIFY OFF;

ACCEPT V_EID NUMBER PROMPT 'Enter Employee ID: '

------------------------------------------------------------
-- CALL PACKAGE
------------------------------------------------------------

DECLARE
    V_SAL NUMBER;
BEGIN

    EMP_PKG.SHOW_EMP(&V_EID);

    V_SAL := EMP_PKG.GET_SALARY(&V_EID);

    DBMS_OUTPUT.PUT_LINE(
        'Salary        : ' || V_SAL
    );

END;
/

SET VERIFY ON;
