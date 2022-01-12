-- drop table test;
-- create table test (id int,sums int);

DECLARE
    x    NUMBER;
    n    NUMBER;
    i    NUMBER;
    sums NUMBER;

    FUNCTION findsum(i NUMBER)
        RETURN NUMBER IS
        SUM NUMBER;
    BEGIN
        sums := ((i * (i + 1)) / 2);
        RETURN sums;
    END;

BEGIN
    n := &n;
    FOR i IN 1..n
        LOOP
            sums := findsum(i);
            INSERT INTO test VALUES (i, sums);
            dbms_output.put_line(i || ' ' || sums);
        END LOOP;
END;
/

-- select * from test;

-- Enter value for n: 11
-- old  16:     n := &n;
-- new  16:     n := 11;
-- 1 1
-- 2 3
-- 3 6
-- 4 10
-- 5 15
-- 6 21
-- 7 28
-- 8 36
-- 9 45
-- 10 55
-- 11 66

--         ID       SUMS
-- ---------- ----------
--          1          1
--          2          3
--          3          6
--          4         10
--          5         15
--          6         21
--          7         28
--          8         36
--          9         45
--         10         55
--         11         66