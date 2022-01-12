declare
     type arr is varray(5) of integer;
     marks1 arr;
     marks2 arr;
     no_of_students integer;
begin
  marks1 := arr(20,30,40,50,60);
  marks2 := arr(30,40,50,60,70);
  no_of_students := marks1.count;

  for i in 1..no_of_students loop
    dbms_output.put_line(marks1(i) + marks2(i));
  end loop;
end;
/

-- 50
-- 70
-- 90
-- 110
-- 130