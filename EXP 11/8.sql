-- drop table test1;
-- create table test1(id int,emi int);
-- insert into test1 values(10,1200);

declare
    cid integer;
    n integer;
    emi integer;
begin
  cid := &cid;
  select count(*)
    into n
    from test1
   where id = cid;

   if (n = 1) then
    update test1 set emi = emi * 0.5 where id = cid;
    select emi
      into emi
      from test1
     where id = cid;
    dbms_output.put_line('EMI Upadated for cid '|| cid || ' from ' || emi * 2 || ' to ' || emi);
   else
    dbms_output.put_line('Record Matching Id ' || cid || ' Absent');
   end if;

end;
/

-- select * from test1;

        ID        EMI
---------- ----------
        10       1200

-- Enter value for cid: 11
-- old   6:   cid := &cid;
-- new   6:   cid := 11;
-- Record Matching Id 11 Absent

-- Enter value for cid: 10
-- old   6:   cid := &cid;
-- new   6:   cid := 10;
-- EMI Upadated for cid 10 from 1200 to 600      

--         ID        EMI
-- ---------- ----------
--         10        600