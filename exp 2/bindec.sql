declare
    binary number;
    dec    number;
    temp   number;

    procedure convert_bin_dec(x in number, y out number) IS
    begin
        y := 0;
        temp := x;
        while (temp != 0)
            loop
                y := (y * 2) + MOD(temp, 10);
                temp := FLOOR(temp / 10);
            end loop;
    end;

begin
    binary := &binary;
    convert_bin_dec(binary, dec);
    DBMS_OUTPUT.PUT_LINE('DECIMAL EQUIVALENT OF ' || binary || ' is ' || dec);
end;
/