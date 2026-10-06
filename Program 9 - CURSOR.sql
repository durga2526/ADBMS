SET SERVEROUTPUT ON;

CREATE TABLE customer (
    id NUMBER,
    name VARCHAR2(20),
    address VARCHAR2(30),
    salary NUMBER
);

INSERT INTO customer VALUES (1, 'Durga', 'pondy', 20000);
INSERT INTO customer VALUES (2, 'Hema', 'villupuram', 25000);
INSERT INTO customer VALUES (3, 'Riya', 'chennai', 30000);

SELECT * FROM customer;

DECLARE
    total_rows NUMBER;
BEGIN
    UPDATE customer
    SET salary = salary + 500;

    IF SQL%NOTFOUND THEN
        DBMS_OUTPUT.PUT_LINE('No customers updated');
    ELSE
        total_rows := SQL%ROWCOUNT;
        DBMS_OUTPUT.PUT_LINE(total_rows || ' customers updated');
    END IF;
END;
/

DECLARE
    c_id customer.id%TYPE;
    c_name customer.name%TYPE;
    c_addr customer.address%TYPE;

    CURSOR c_customers IS
        SELECT id, name, address
        FROM customer;

BEGIN
    OPEN c_customers;

    LOOP
        FETCH c_customers INTO c_id, c_name, c_addr;

        EXIT WHEN c_customers%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE(c_id || ' ' || c_name || ' ' || c_addr);
    END LOOP;

    CLOSE c_customers;
END;
/

SELECT * FROM customer;
