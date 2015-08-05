program L8zad4;

uses SysUtils;

var last, prelast, n, i, c :integer;

function Fib(n : integer ) : integer;
begin
   if (n = 1) or (n = 2) then Fib := 1
   else if n > 2 then Fib := Fib(n - 2) + Fib(n - 1);
end; { Fib }



begin
   readln(n);
   
   prelast := 1;
   last := 1;

   if n > 2 then
      for i := 1 to n - 2 do
      begin
	 c := prelast + last;
	 prelast := last;
	 last := c;
      end;
   
   writeln(Fib(n));
   writeln(last);
end.

