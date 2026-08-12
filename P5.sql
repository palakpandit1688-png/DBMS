/* Write a PL/SQL block which displays gross salary of employees as per user input EID. (Consider EMP table with EID, EName, Deptno, Deptname Gender, Age, BasicSal) with appropriate data types.) Gross_Salary: BASICSAL + (DA + HRA + Medical) – PF. Rules: HRA = 15% of basic, DA = 50% of basic, Medical = Rs. 500, PF = 10% of basic. */

set serveroutput on;
set verify off;
set feedback off;

declare
	v_eid Number;
	v_ename varchar2(50);
	v_basic Number(10,2);
	hra Number(10,2);
	da Number(10,2);
	medical Number(10,2):=500;
	pf Number(10,2);
	gross Number(10,2);

begin
	v_eid:=&eid;
	SELECT ename,basicsal into v_ename,v_basic from emp2 where eid=v_eid;
	
	hra:=V_basic*0.15;
	da:=V_basic*0.50;
	pf:=V_basic*0.10;
	gross:=V_basic+hra+da+medical-pf;

	dbms_output.put_line('employee id:'||V_eid);
	dbms_output.put_line('employee name:'||V_ename);
	dbms_output.put_line('basic salary:'||V_basic);
	dbms_output.put_line('HRA(15%):'||hra);
	dbms_output.put_line('da(50%):'||da);
	dbms_output.put_line('medical:'||medical);
	dbms_output.put_line('pf(10%):'||pf);
	dbms_output.put_line('gross salary:'||gross);

End;
/

set serveroutput off;
set verify on;
set feedback on;

