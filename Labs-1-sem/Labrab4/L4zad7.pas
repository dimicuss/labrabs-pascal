program L4zad7;

uses SysUtils;

type
   ar =  array of array of integer;

var i, i_, n, diag, maxp, max : integer;
   a			      : ar;
			      
begin
   write('Please enter |n|: ');
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
	    writeln(a[i][i_]:4)
	 else write(a[i][i_]:4); 
      end;
   end;

   
   for i := 0 to n - 1 do
   begin
      diag := a[i][i];
      maxp := 0;
      max := a[i][0];
      
      for i_ := 1 to n - 1 do
      begin
	 if a[i][i_] > max
	    then begin
	       max := a[i][i_];
	       maxp := i_;
	    end;
      end;

      a[i][i] := max;
      a[i][maxp] := diag;
   end;

   writeln;

   
   for i := 0 to n - 1 do
   begin
      for i_ := 0 to n - 1 do
      begin
	 if i_ = n - 1 then
	    writeln(a[i][i_]:4)
	 else write(a[i][i_]:4); 
      end;
   end;
   
end.