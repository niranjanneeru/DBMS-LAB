-- drop table result;  
-- create table result(id int primary key,odd int,even int);
declare
    type arr is varray(5) of integer;
    odd arr;
    even arr;
begin
    odd := arr();
    even := arr();
    for i in 1..10 loop
        if (mod(i,2) = 0) then
            even.extend;
            even(even.LAST):= i;
        else
            odd.extend;
            odd(odd.LAST) := i;
        end if;
    end loop;
    for i in 1..odd.count loop
        insert into result (id,odd) values ( i , odd(i));
    end loop;
    for i in 1..even.count loop
        update result set even =  even(i) where id = i;
    end loop;
end;
/
-- select * from result;


--         ID        ODD       EVEN
-- ---------- ---------- ----------
--          1          1          2
--          2          3          4
--          3          5          6
--          4          7          8
--          5          9         10