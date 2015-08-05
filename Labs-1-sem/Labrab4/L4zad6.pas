program L4zad6;

uses SysUtils;

type
   ar  = array of array of integer;
   ar_ = array of integer;

var
   i, i_, m, n : integer;
   a	       : ar;
   b	       : ar_;

begin
   write('Please enter m and n: ');
   readln(m);
   readln(n);

   SetLength(a, m, n);
   SetLength(b, m);

   randomize;

   for i := 0 to m - 1 do
   begin
      for i_ := 0 to n - 1 do
      begin
	 a[i][i_] := random(50);
      end;
   end;
   

   for i := 0 to m - 1 do
      b[i] := 0;
   

   for i := 0 to m - 1 do
   begin
      for i_ := 0 to n - 1 do
      begin
	 if i_ = n - 1 then
	    writeln(a[i][i_]:3)
	 else write(a[i][i_]:3);
      end;
   end;
   

   for i := 0 to m - 1 do
   begin
      for i_ := 0 to n - 1 do
      begin
	 b[i] := b[i] + a[i][i_];
      end;
   end;

   for i := 0 to m - 1 do
      write(' ' ,b[i]);
   
end.