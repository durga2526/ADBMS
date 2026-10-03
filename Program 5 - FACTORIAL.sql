DECLARE
    N NUMBER := &enter_a_number;
    FACT NUMBER := 1;
BEGIN
    FOR I IN 1..N LOOP
        FACT := FACT * I;
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('Factorial of ' || N || ' = ' || FACT);
END;
/
