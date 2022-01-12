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

-- Enter value for a: 10
-- old  16:     a := &a;
-- new  16:     a := 10;
-- Enter value for b: 20
-- old  17:     b := &b;
-- new  17:     b := 20;
-- MIN VALUE(10,20): 10