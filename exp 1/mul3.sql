declare 
    i integer;
begin
  i := 0;
  loop
    if(i > 10) then
        exit;
    end if;
    dbms_output.put_line('3 x '|| i || ' = '|| 3 * i);
    i := i + 1;
  end loop;
end;
/