DECLARE
    CURSOR dept IS SELECT *
                   FROM INSTRUCTOR;
    salary INTEGER := &salary;
BEGIN
    FOR i IN dept
        LOOP
            if (i.salary < salary) then
                DBMS_OUTPUT.PUT_LINE(i.NAME || ' ' || i.DEPT_NAME || ' ' || i.SALARY);
            end if;
        end loop;
END;