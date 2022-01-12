-- drop table result;  
-- create table result(num int primary key,square int,cube int);
begin
    for i in 1..10 loop
        insert into result values ( i , i*i, i*i*i);
    end loop;
end;
/
-- select * from result;

--        NUM     SQUARE       CUBE
-- ---------- ---------- ----------
--          1          1          1
--          2          4          8
--          3          9         27
--          4         16         64
--          5         25        125
--          6         36        216
--          7         49        343
--          8         64        512
--          9         81        729
--         10        100       1000