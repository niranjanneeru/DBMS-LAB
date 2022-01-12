create or replace package body custom
as
    function fact(n number) return number
        is
    begin
        if (n = 1) then
            return 1;
        end if;
        return (n * fact(n - 1));
    end fact;

    function square(n number) return number
        is
    begin
        return n * n;
    end square;

    function fibo(n number) return number
        is
    begin
        if (n <= 1) then
            return n;
        end if;
        return fibo(n - 1) + fibo(n - 2);
    end fibo;

    function isPrime(n number) return boolean
        is
    begin
        for i in 2..(n / 2)
            loop
                if (MOD(n, i) = 0) then
                    return false;
                end if;
            end loop;
        return true;
    end isPrime;

end custom;

/