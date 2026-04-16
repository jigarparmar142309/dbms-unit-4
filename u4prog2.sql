SET SERVEROUTPUT ON;
CREATE OR REPLACE PROCEDURE inc_sal(dno IN NUMBER, per IN NUMBER) IS
BEGIN
    UPDATE EMP SET BasicSal = BasicSal + (BasicSal*per/100) WHERE Deptno = dno;
    DBMS_OUTPUT.PUT_LINE('Salary Updated');
END;
/