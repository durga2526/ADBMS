SET SERVEROUTPUT ON;

DECLARE
    f   NUMBER := &enter_first_number;
    s   NUMBER := &enter_second_number;
    uoc NUMBER := &enter_operation_choice_1_to_7;

BEGIN
    IF uoc = 1 THEN
        DBMS_OUTPUT.PUT_LINE('Add ' || (f + s));

    ELSIF uoc = 2 THEN
        DBMS_OUTPUT.PUT_LINE('Sub ' || (f - s));

    ELSIF uoc = 3 THEN
        DBMS_OUTPUT.PUT_LINE('Multiply ' || (f * s));

    ELSIF uoc = 4 THEN
        IF s = 0 THEN
            DBMS_OUTPUT.PUT_LINE('Error: Division by zero is not allowed.');
        ELSE
            DBMS_OUTPUT.PUT_LINE('Division ' || (f / s));
        END IF;

    ELSIF uoc = 5 THEN
        IF s = 0 THEN
            DBMS_OUTPUT.PUT_LINE('Error: Modulus by zero is not allowed.');
        ELSE
            DBMS_OUTPUT.PUT_LINE('Modulus ' || MOD(f, s));
        END IF;

    ELSIF uoc = 6 THEN
        IF f < s THEN
            DBMS_OUTPUT.PUT_LINE(s || ' is greater than ' || f);
        ELSIF f > s THEN
            DBMS_OUTPUT.PUT_LINE(f || ' is greater than ' || s);
        ELSE
            DBMS_OUTPUT.PUT_LINE('Both numbers are equal');
        END IF;

    ELSIF uoc = 7 THEN
        IF f != 0 AND f = 1 THEN
            DBMS_OUTPUT.PUT_LINE('True');
        ELSE
            DBMS_OUTPUT.PUT_LINE('False');
        END IF;
    ELSE
        DBMS_OUTPUT.PUT_LINE('Invalid choice! Please select an operation from 1 to 7.');
    END IF;
END;
/
