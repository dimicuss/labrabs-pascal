program L3zad5;

uses SysUtils, Math;

var S, e :real;
var i  :boolean;
var i_ :integer;


begin
   readln(e);
   S := (1 / (1 * (1 + 2)));
   i_ := 2;
   i := true;

   while i do
   begin
      if abs(1 / (i_ * (i_ + 2))) < e
	 then begin
	    writeln('Значение S = ', S:5:5);
	    writeln('Количество слогаемых = ', i_);
	    writeln('Последние слагаемое = ' , 1 / (i_ * (i_ + 2)):5:5);
	    writeln('Разность между 3/4 и S = ', ((3 / 4) - S):5:5);
	    i := false;
	 end
      else begin
	 S := S + (1 / (i_ * (i_ + 2)));
	 i_ := i_ + 1;
      end;
   end;
end.
