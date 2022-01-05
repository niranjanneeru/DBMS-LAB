-- create table staff(id integer,salary integer);
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