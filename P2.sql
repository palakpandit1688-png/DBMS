-- Write a PL/SQL block to accept product name, qty and price from user and then calculate discount in Rs. based on the given (%).

SET SERVEROUTPUT ON
SET FEEDBACK OFF
SET VERIFY OFF

DECLARE
    NAME      VARCHAR2(20);
    QTY       NUMBER(10);
    PRICE     NUMBER(10,2);
    TOTAL     NUMBER(10,2);
    DIS_PER   NUMBER(5,2);
    DISCOUNT  NUMBER(10,2);
    FTOTAL    NUMBER(10,2);

BEGIN

    NAME    := '&NAME';
    QTY     := &QTY;
    PRICE   := &PRICE;
    DIS_PER := &DIS_PER;

    TOTAL := QTY * PRICE;

    DISCOUNT := TOTAL * DIS_PER / 100;

    FTOTAL := TOTAL - DISCOUNT;

    DBMS_OUTPUT.PUT_LINE('========================================');
    DBMS_OUTPUT.PUT_LINE('          PRODUCT DETAILS');
    DBMS_OUTPUT.PUT_LINE('========================================');
    DBMS_OUTPUT.PUT_LINE('Product Name      : ' || NAME);
    DBMS_OUTPUT.PUT_LINE('Quantity          : ' || QTY);
    DBMS_OUTPUT.PUT_LINE('Price (Rs.)       : ' || PRICE);
    DBMS_OUTPUT.PUT_LINE('----------------------------------------');
    DBMS_OUTPUT.PUT_LINE('Total Amount      : Rs. ' || TOTAL);
    DBMS_OUTPUT.PUT_LINE('Discount (' || DIS_PER || '%) : Rs. ' || DISCOUNT);
    DBMS_OUTPUT.PUT_LINE('Final Amount      : Rs. ' || FTOTAL);
    DBMS_OUTPUT.PUT_LINE('========================================');

END;
/

SET SERVEROUTPUT OFF
SET FEEDBACK ON
SET VERIFY ON