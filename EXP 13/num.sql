declare
    n number := &factorial;
    out number;

begin
  dbms_output.put_line('--------------------------');
  out := custom.fact(n);
  dbms_output.put_line(out);
end;
/