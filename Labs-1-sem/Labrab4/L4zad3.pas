program L4zad3;

uses SysUtils;

type
   arr = array[1..10] of integer;

var
   ar	      : arr;
   i, j, n, b : integer;
   
begin
   randomize;
   
   n := 10;

   write('Введеите число b : ');
   readln(b);
   
   for i := 1 to n do
   begin
      ar[i] := random(20);
      write(ar[i], ' ');
   end;
   
   for i := n downto 1 do
         if (ar[i] < b) then
	 begin
	    for j := i to n - 1 do
	       ar[j] := ar[j + 1];
	    n := n - 1;
	 end;
   
   writeln;
   
   for i := 1 to n do
      write(ar[i], ' ');

   writeln;
end.