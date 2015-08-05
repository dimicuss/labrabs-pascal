program L3zad3;

uses SysUtils;

var i, i_, n : integer;
	
begin
   readln(n);
   i := 1;
   i_ := i;
   while i <= n do
   begin
      while i_ <= (i * n) do
      begin
	 if i_ = (i * n)
	    then writeln(' ', i_:4)
	 else write(' ', i_:4);
	 i_ := i_ + i;
      end;
      i := i + 1;
      i_ := i;
   end;

end.

