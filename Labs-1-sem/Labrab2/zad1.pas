program numbers;

uses SysUtils;

var a, b, c, max, min :integer;


begin
   readln(a, b, c);
   min := a;
   max := a;
   if b < min then min := b;
   if c < min then min := c;

   if b > max then max := b;
   if c > max then max := c;

   writeln('Most minimal is ', min);
   writeln('Most maximal is ', max);
end.



