-- drop table result;  
-- create table result(num int primary key,square int,cube int);
begin
    for i in 1..10 loop
        insert into result values ( i , i*i, i*i*i);
    end loop;
end;
/
-- select * from result;