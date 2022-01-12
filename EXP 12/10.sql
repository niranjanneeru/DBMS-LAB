-- drop table test;
-- create table test (id int, sqr int, cub int);

DECLARE
    n   NUMBER;
    s number;
    c number;

    FUNCTION square_fn(n NUMBER)
        RETURN NUMBER IS
        sqr NUMBER;
    BEGIN
        RETURN n * n;
    END;

    FUNCTION cube_fn(n NUMBER)
        RETURN NUMBER IS
        cub NUMBER;
    BEGIN
        RETURN n * n * n;
    END;

BEGIN
    n := &n;
    s := square_fn(n);
    c := cube_fn(n);
    INSERT INTO test VALUES (n, s, c);
END;
/

-- select * from test;

--         ID        SQR        CUB
-- ---------- ---------- ----------
--         11        121       1331