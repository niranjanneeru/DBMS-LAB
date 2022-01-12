DECLARE
    num       NUMBER;
    factorial NUMBER;

    FUNCTION fact(x NUMBER)
        RETURN NUMBER IS
        f NUMBER;
    BEGIN
        IF x = 0 THEN
            f := 1;
        ELSE
            f := x * fact(x - 1);
        END IF;
        RETURN f;
    END;

BEGIN
    num := &num;
    factorial := fact(num);
    DBMS_OUTPUT.put_line(' Factorial ' || num || ' is ' || factorial);
END;
/

-- Enter value for num: 5
-- old  18:     num := &num;
-- new  18:     num := 5;
-- Factorial 5 is 120