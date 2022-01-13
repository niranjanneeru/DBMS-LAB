declare
    cursor takes_curr is select *
                         from TAKES;
    cnt INTEGER := 0;
begin
    for i in takes_curr
        loop
            if (i.GRADE = 'A') then
                DBMS_OUTPUT.PUT_LINE(i.ID || ' ' || i.COURSE_ID || ' ' || i.SEC_ID || ' ' || i.YEAR || ' ' ||
                                     I.SEMESTER || ' ' || I.GRADE);
                cnt := cnt + 1;
            end if;
        end loop;
    DBMS_OUTPUT.PUT_LINE('No. of Records with Grade A = ' || cnt);
end ;
