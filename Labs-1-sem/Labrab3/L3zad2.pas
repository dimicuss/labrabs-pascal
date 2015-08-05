program L3zad2;

uses SysUtils, Math;

var i, b, summ :integer;
var mid	: real;

begin
   readln(b);
   summ := 0;
   i := 100;

   while i <= b do
   begin
      summ := summ + sqr(i);
      i := i + 1;
   end;
   
   mid := summ / (b - 100);
   writeln('Mid is ', mid:10:3);
   
end.