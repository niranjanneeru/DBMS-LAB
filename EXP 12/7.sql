DECLARE
    num  NUMBER;
    rev  NUMBER;
    temp NUMBER;

    FUNCTION REVERSE(num NUMBER)
        RETURN NUMBER IS
        rev NUMBER;
    BEGIN
        rev := 0;
        temp := num;
        WHILE(temp > 0)
            LOOP
                rev := (rev * 10) + MOD(temp, 10);
                temp := FLOOR(temp / 10);
            END LOOP;
        RETURN rev;
    END;


BEGIN
    num := &num;
    rev := REVERSE(num);
    DBMS_OUTPUT.PUT_LINE('Reverse of the number is: ' || rev);
    IF (rev = num) THEN
        DBMS_OUTPUT.PUT_LINE('The number ' || num || ' is PALINDROME.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('The number ' || num || ' is not PALINDROME.');
    END IF;
END;
/                     


-- Enter value for num: 1001
-- old  22:     num := &num;
-- new  22:     num := 1001;
-- Reverse of the number is: 1001
-- The number 1001 is PALINDROME.


-- Enter value for num: 1000
-- old  22:     num := &num;
-- new  22:     num := 1000;
-- Reverse of the number is: 1
-- The number 1000 is not PALINDROME.