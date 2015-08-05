program zad2;

uses SysUtils;

type mas = array[0..2] of integer;

var a, b, c, i :integer;
var arr	:mas;


begin
   for i := 0 to 2 do readln(arr[i]);

   for i := 0 to 2 do
   begin
      if (arr[i] = 2) or (arr[i] = 5)
	 then writeln('Number ', arr[i], ' lies in edge of range 2 to 5');

      if (arr[i] > 2) and (arr[i] < 5)
	 then writeln('Number ', arr[i], ' lies in range of 2 to 5');

      if (arr[i] < 2) or (arr[i] > 5)
	 then writeln('Number ', arr[i], ' lies out of range 2 to 5');

   end;
end.
