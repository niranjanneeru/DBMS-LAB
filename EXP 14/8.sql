DECLARE
    cursor inst is
        select *
        from INSTRUCTOR
        order by salary desc;
    cnt integer := 0;
BEGIN
    FOR i IN inst
        LOOP
            if cnt < 5
            then
                dbms_output.put_line(i.id || ' ' || i.name || ' ' || i.salary);
                cnt := cnt + 1;
            end if;
        END LOOP;
END;