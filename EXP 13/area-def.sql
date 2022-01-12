create or replace package area
as
  procedure area_circle(r in number,a out number);
  procedure area_right_angled(base in number,height in number,a out number);
  function area_triangle(a in number,b in number, c in number) return number;
  function volume(r in number,h in number) return number;
end area;

/