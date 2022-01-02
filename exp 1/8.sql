-- insert into test values(10,1200);

declare
    cid integer;
    n integer;
    emi integer;
begin
  cid := &cid;
  select count(*)
    into n
    from test
   where id = cid;

   if (n = 1) then
    update test set emi = emi * 0.5 where id = cid;
    select emi
      into emi
      from test
     where id = cid;
    dbms_output.put_line('EMI Upadated for cid '|| cid || ' from ' || emi * 2 || ' to ' || emi);
   else
    dbms_output.put_line('Record Matching Id ' || cid || ' Absent');
   end if;

end;
/

-- select * from test;