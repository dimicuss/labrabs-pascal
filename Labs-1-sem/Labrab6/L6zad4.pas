program L6zad4;

uses SysUtils;

var day1, day2	  : 1..31;
   month1, month2 : 1..12;
   bool		  : boolean;
   dmonth	  : array[1..12] of integer = (31,28,31,30,31,30,31,31,30,31,30,31);
		  
begin
   write('Enter date 1 ');
   readln(day1, month1);
   write('Enter date 2 ');
   readln(day2, month2);

   if (month1 > 12) or (month2 > 12)
      then writeln ('error month')
   else if (day1 > dmonth[month1]) or (day2 > dmonth[month2])
      then writeln('error days')
   else begin
      bool := (month1 < month2) or ((month1 = month2) and (day1 < day2));
      writeln(bool);
   end;
   
end.