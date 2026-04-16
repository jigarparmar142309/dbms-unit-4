SET SERVEROUTPUT ON;
CREATE OR REPLACE PACKAGE emp_pkg IS
    PROCEDURE show_msg;
    FUNCTION cube(n NUMBER) RETURN NUMBER;
END emp_pkg;
/

CREATE OR REPLACE PACKAGE BODY emp_pkg IS
    PROCEDURE show_msg IS
    BEGIN
        DBMS_OUTPUT.PUT_LINE('Inside Package');
    END;

    FUNCTION cube(n NUMBER) RETURN NUMBER IS
    BEGIN
        RETURN n*n*n;
    END;
END emp_pkg;
/

BEGIN
    emp_pkg.show_msg;
    DBMS_OUTPUT.PUT_LINE(emp_pkg.cube(3));
END;
/