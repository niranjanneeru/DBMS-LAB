create or replace package body custom
as
  function fact(n number) return number
  is
  begin
    if( n = 1) then
        return 1;
    end if;
    return (n * fact(n-1));
  end fact;
    
end custom;

/