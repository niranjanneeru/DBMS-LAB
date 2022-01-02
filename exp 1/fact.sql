declare
    fact integer;
    n integer;
    temp integer;
begin
  fact := 1;
  n:= & n;
  temp:= n;
  while(n > 0) loop
    fact := fact * n;
    n := n - 1;
  end loop;
  dbms_output.put_line('Factorial of ' ||fact );
end;
/