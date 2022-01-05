declare
    A number := &A;
    B number := &B;
    C number := &C;
    D number := B * B - 4 * A * C;
begin
    if A = 0 then
        dbms_output.put_line('Not a quadratic equation.');
        return;
    end if;
    if D = 0 then
        dbms_output.put_line('x = ' || -B / 2 / A);
    elsif D > 0 then
        dbms_output.put_line('x1 = ' || (-B - sqrt(D)) / 2 / A);
        dbms_output.put_line('x2 = ' || to_char((-B + sqrt(D)) / 2 / A));
    else
        dbms_output.put_line('x1 = (' || to_char(-B / 2 / A) || ', ' || (sqrt(-D) / 2 / A) || ')');
        dbms_output.put_line('x2 = (' || to_char(-B / 2 / A) || ', ' || to_char(-sqrt(-D) / 2 / A) || ')');
    end if;
end;