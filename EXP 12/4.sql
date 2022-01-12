-- drop table staff;
-- create table staff(id integer,salary integer);
-- insert into staff (id,salary) values (1,1000);

declare
    staff_id integer;
    n        integer;
    salary   integer;

    procedure incr_salary(st_id in integer) is
    begin
        update staff set salary = salary * 1.2 where id = st_id;
    end;

    function check_id(st_id in integer) return number is
        f number;
    begin
        select count(*) into n from staff where id = st_id;
        if (n = 1) then
            return 1;
        else
            DBMS_OUTPUT.PUT_LINE('ERROR');
            return 0;
        end if;
    end;

begin
    staff_id := &staff_id;
    n := check_id(staff_id);
    if (n = 1) then
        incr_salary(staff_id);
        select salary into salary from staff;
        DBMS_OUTPUT.PUT_LINE('UPDATED SALARY :' || salary);
    end if;
end;
/

-- select * from staff;

--         ID     SALARY
-- ---------- ----------
--          1       1000

-- Enter value for staff_id: 1
-- old  24:     staff_id := &staff_id;
-- new  24:     staff_id := 1;
-- UPDATED SALARY :1200

--         ID     SALARY
-- ---------- ----------
--          1       1200