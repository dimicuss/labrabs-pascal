program L4zad4;

uses SysUtils;

type
   ar =  array of integer;

var mas	     : ar;
   i, n, min : integer;

begin
   readln(n);
   SetLength(mas, n);

   randomize;

   for i := 0 to n - 1 do
      mas[i] := random(100) - 50;

   min := abs(mas[0]);

   for i := 1 to n - 1 do
   begin
      if min > abs(mas[i]) then
	 min := abs(mas[i]);
   end;

   for i := 0 to n - 1 do
      write(' ', mas[i]);

   writeln;

   for i := 0 to n - 1 do
      if mas[i] >= 0 then
	 mas[i] := mas[i] - min;

   for i := 0 to n - 1 do
      write(' ', mas[i]);

end.
