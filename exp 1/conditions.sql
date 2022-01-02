declare
mark integer;
begin
    mark := 53;

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