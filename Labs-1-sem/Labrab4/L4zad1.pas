program L4zad1;

uses SysUtils;

const
   n = 5;

type
   arr = array[0..n] of integer;

var
   a	: arr;
   i	: integer;
   val	: integer;
   sum	: integer;
   mult	: integer;
       
begin

   val := 0;
   sum := 0;
   mult := 1;

   randomize;
   for i:= 0 to n do
   begin
      a[i] := random(40);
   end;


   for i:= 0 to n do
   begin
      write(' ', a[i]);
   end;

   writeln;
   
   for i := 0 to n do
   begin
      if (a[i] mod 2 <> 0)
	 then begin
	    inc(val);
	    sum := sum + a[i];
	    mult := mult * a[i];
	 end;
   end;

   
   if (val = 0)
      then begin
	 writeln('Нечетных чисел нет');
      end
      else begin
	 writeln('Количество нечетных чисел = ', val);
	 writeln('Сумма нечетных чисел = ', sum);
	 writeln('Произведение нечетных чисел = ', mult);
      end;
   
end.