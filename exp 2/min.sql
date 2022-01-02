DECLARE
    a number;
    b number;
    c number;

    PROCEDURE findMin(x IN number, y IN number, z OUT number) IS
    BEGIN
        IF x < y THEN
            z := x;
        ELSE
            z := y;
        END IF;
    END;

BEGIN
    a := &a;
    b := &b;
    findMin(a, b, c);
    DBMS_OUTPUT.PUT_LINE('MIN VALUE(' || a || ',' || b || '): ' || c);
END;
/