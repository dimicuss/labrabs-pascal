program L7zad3;

uses SysUtils, Math;

var n : real;
	 
type func = function (x : real) : real;

   procedure integral (f : func; first, last, n : real);
   var h, int, x : real;
   begin	 
      h := (last - first) / n;
      x := first + h;
      int := (f(first) + f(last)) / 2;
      while x <= last do
      begin
	 int := int + f(x);
	 x := x + h;
      end;
      writeln(h * int);
   end; { integral }


   function f1 (x : real) : real;
   begin
      f1 := sqrt(exp(x) - 1);
   end; { f1 }

   function f2 (x : real) :real;
   begin
      f2 := 1 / power(3 * sin(x) + 2 * cos(x), 2);
   end; { f2 }

begin
   writeln('Enter n number : ');
   readln(n);
   integral(@f1, 0, ln(2), n);
   integral(@f2, 0, 1, n);
end.