create or replace package body area
as
  procedure area_circle(r in number,a out number) 
  as
  begin
    a := 3.14 * r * r;
  end area_circle;

  procedure area_right_angled(base in number,height in number,a out number)
  as
  begin
    a := 0.5 * base * height;
  end area_right_angled;

  function area_triangle(a in number,b in number, c in number) return number
  is
  s number := (a + b + c)/2;
  begin
    return SQRT(s * (s - a) * (s - b) * (s - c));
  end area_triangle;

  function volume(r in number,h in number) return number
  is
  begin
    return 3.14 * r * r * h;
  end volume;
    
end area;

/