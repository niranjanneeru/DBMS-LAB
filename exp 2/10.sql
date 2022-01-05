DECLARE
    n   NUMBER;
    sqr NUMBER;
    cub NUMBER;

    FUNCTION SQRT(n NUMBER)
        RETURN NUMBER IS
        sqr NUMBER;
    BEGIN
        sqr := n * n;
        RETURN sqr;
    END;

    FUNCTION cube(n NUMBER)
        RETURN NUMBER IS
        cub NUMBER;
    BEGIN
        cub := n * n * n;
        RETURN cub;
    END;

BEGIN
    n := &n;
    sqr := SQRT(n);
    cub := cube(n);
    INSERT INTO test VALUES (n, sqr, cub);
END;
/