program L3zad4;

uses SysUtils, Math;

var xn, xc, x, q, e :real;
var i : boolean;

begin
   write('Введите переменную e ');
   readln(e);
   write('Введите переменную q ');
   readln(q);
   i := true;
   x := sqrt(q);
   xc := 1;
   xn := 1/2 * (xc + (q/xc));
   
   while i do
   begin
      xn := 1/2 * (xc + (q/xc));
      if (abs(xn - xc) < e)
	 then i := false
      else xc := xn;
   end;
   writeln(xn:10:1);
   writeln('Разница между x и xn = ', (x - xn):10:1);
end.