program L4zad6;

uses SysUtils;

type
   ar = array of array of integer;

var i, i_, n : integer;
   a	      : ar;
		  
begin
   write('Please enter range of matrix: ');
   readln(n);
   
   SetLength(a, n, n);
   randomize;
   
   for i := 0 to n - 1 do
   begin
      for i_ := 0 to n - 1 do
      begin
	 a[i][i_] := random(50);
      end;
   end;

   
   for i := 0 to n - 1 do
   begin
      for i_ := 0 to n - 1 do
      begin
	 if i_ = n - 1 then
	    writeln(a[i][i_]:5)
	 else write(a[i][i_]:5); 
      end;
   end;

   
   for i := 1 to n - 1 do
   begin
      for i_ := i downto 0 do
      begin
	 a[i][i] := a[i][i] + a[i][i_ - 1];
      end;      
   end;

   writeln;
   
   for i := 0 to n - 1 do
   begin
      for i_ := 0 to n - 1 do
      begin
	 if i_ = n - 1 then
	    writeln(a[i][i_]:5)
	 else write(a[i][i_]:5); 
      end;
   end;
   
end.