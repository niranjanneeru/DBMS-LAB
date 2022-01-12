declare
mark integer;
begin
    mark := &mark;

    dbms_output.put('The Grade Corresponding to '|| mark || ' is: ');
    if (mark >= 90) then
        dbms_output.put_line('A+');
    elsif (mark >= 80) then
        dbms_output.put_line('A');
    elsif (mark >= 70) then
        dbms_output.put_line('B+');
    elsif (mark >= 60) then
        dbms_output.put_line('B');
    elsif (mark >= 50) then
        dbms_output.put_line('C+');
    elsif (mark >= 40) then
        dbms_output.put_line('C');
    else
        dbms_output.put_line('D');
    end if;
end;
/

-- Enter value for mark: 95
-- old   4:     mark := &mark;
-- new   4:     mark := 95;
-- The Grade Corresponding to 95 is: A+

-- Enter value for mark: 56
-- old   4:     mark := &mark;
-- new   4:     mark := 56;
-- The Grade Corresponding to 56 is: C+