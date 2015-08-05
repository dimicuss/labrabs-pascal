program zad4;

uses SysUtils;

var year, lastN :integer;

begin
   readln(year);
   if not ((year <= 20) and (year > 4))
      then 
      lastN := year mod 10
   else lastN := year;

   case lastN of
     0 : writeln(year, ' лет');
     1 : writeln(year, ' год');
     2..4 : writeln(year, ' года');
     5..20 : writeln(year, ' лет');
   else writeln('error')
   end;	  
end.
