program L6pas2;

uses SysUtils;

type cmplx = record
		x, y : real;
	     end;    
var a, b, c : cmplx;
	   
begin
   write('Введите x и y для a: ');
   readln(a.x, a.y);
   writeln;
   write('Введите x и y для b: ');
   readln(b.x, b.y);
   writeln;

   c.x := a.x + b.x;
   c.y := a.y + b.y;

   if c.y < 0 then
      writeln('a + b =', c.x:3:0, '  -', -c.y:3:0,'i')
   else
      writeln('a + b =', c.x:3:0, '  +', c.y:3:0,'i');

   writeln;

   c.x := (a.x * b.x) - (a.y * b.y);
   c.y := (a.y * b.x) + (a.x * b.y);

   if c.y < 0 then
      writeln('a * b =', c.x:3:0, '  -', -c.y:3:0,'i')
   else
      writeln('a * b =', c.x:3:0, '  +', c.y:3:0,'i');
   
end.