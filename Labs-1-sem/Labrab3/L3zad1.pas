program zad1;

uses SysUtils, Math;

var n, i, sqr :integer;
var sqrt_, expr :real;

begin
   i := 1;
   expr := 1;
   sqr := 1;
   readln(n);
   sqrt_ := sqrt(2);

   while i <= n do
   begin
      sqr := sqr * 2;
      i := i + 1;
   end;
   writeln('2 в степени ', n, ' равно ', sqr);
   

   i := 1;
   sqr := 1;
   readln(n);
   

   while i <= n do
   begin
      sqr := sqr * i;
      i := i + 1;
   end;
   writeln('Факториал ', n, ' равен ', sqr);
   

   i := 1;
   readln(n);
   

   while i < n do
   begin
      sqrt_ := sqrt(2 + sqrt_);
      i := i + 1;
   end;
   writeln(sqrt_:10:3);
   

   i := 1;
   readln(n);
   

   while i < n do
   begin
      expr := expr * (1 + (1 / power(i, 2)));
      i := i + 1;
   end;
   
   writeln(expr:10:1);

end.
