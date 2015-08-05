program L3zad6;

uses SysUtils, Math;

var fx, m :real;
var a, b, h, i, n :integer;

begin

   readln(a,b,h);
   m := (b - a) / h + 1;
   n := trunc(m);

   while a <= b do
   begin
      fx := power(a, 4) * (1 + ((a - power(2, a)) / (a + exp(a - 1))));
      write('x = ', a, ', ');
      writeln('f(x) = ', fx:10:3);
      a := a + h;
   end;

   writeln;
   a := 1;

   repeat
      fx := power(a, 4) * (1 + ((a - power(2, a)) / (a + exp(a - 1))));
      write('x = ', a, ', ');
      writeln('f(x) = ', fx:10:3);
      a := a + h;
   until a > b;

   writeln;
   a := 1;

   for i := a to n do
   begin
      fx := power(i, 4) * (1 + ((i - power(2, i)) / (i + exp(i - 1))));
      write('x = ', i, ', ');
      writeln('f(x) = ', fx:10:3);
   end;

end.
