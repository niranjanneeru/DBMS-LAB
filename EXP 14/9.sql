DECLARE
    cursor inst is
        select *
        from INSTRUCTOR
        order by salary desc;
BEGIN
    FOR i IN inst
        LOOP
            if i.salary < 80000
            then
                update INSTRUCTOR set salary = 1.2 * salary where id = i.id;
            elsif i.salary >= 80000
            then
                update INSTRUCTOR set salary = 1.12 * salary where id = i.id;
            end if;
        END LOOP;
END;