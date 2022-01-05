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