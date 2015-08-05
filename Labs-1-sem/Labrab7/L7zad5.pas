program L7zad5;

uses SysUtils;

var a, b, c : real;
   i	    : integer;

function rootCheck (a, b, c : real) : boolean;
begin
   rootCheck := (b * b - 4 * a * c) >= 0;
end;

begin
   i := 0;
   readln(a, b, c);
   if rootCheck(a, b, c) then inc(i);
   if rootCheck(b, a, c) then inc(i);
   if rootCheck(c, a, b) then inc(i);
   
   writeln('Number of equalities with real roots is ', i);
end.