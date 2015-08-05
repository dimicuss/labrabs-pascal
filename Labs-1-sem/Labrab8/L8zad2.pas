program L8zad2;

uses SysUtils;


function plus(a, b : integer) : integer;
begin
   if b = 0 then plus := a
   else plus := plus(a, b - 1) + 1;
end; { plus }

function minus(a, b : integer) : integer;
begin
   if b = 0 then minus := a
   else minus := minus(a, b - 1) - 1;
end; { minus }

function divide(a, b : integer ) : integer;
begin
   if a <= b then divide := 1
   else divide := divide(a - b, b) + 1;
end; { divide }

function module(a, b :integer ) : integer;
begin
   if (a < b ) then module := a
   else if (a = b) then module := 0
   else module := module(a - b, b);
end; { module }


begin
   writeln(plus(10, -15));
   writeln(minus(10, -5));
   writeln(divide(10, 2));
   writeln(module(8, 6));
end.
