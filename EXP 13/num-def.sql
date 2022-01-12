create or replace package custom
as
    function fact(n number) return number;
    function square(n number) return number;
    function fibo(n number) return number;
    function isPrime(n number) return boolean;
end custom;
/