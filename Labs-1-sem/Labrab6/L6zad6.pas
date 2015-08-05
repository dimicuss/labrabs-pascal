program L6zad6;

uses SysUtils;

type mon = set of byte;
   dmon	 = set of byte;
	 
var _mon      : mon = [1..12];
   _dmon      : dmon = [1..31];
   day, month : integer;
   bool	      : boolean;

begin
   readln(day, month);
   bool := false;
   
   if month in _mon then
      case month of 
	1,3,5,7,8,10,12	: if day in [1..31] then bool := true;
	4,6,9,11	: if day in [1..30] then bool := true;
	2		: if day in [1..28] then bool := true;
      end;		
     
   if not (bool) then
      writeln('error')
   else
      case month of
	1,2,12 : writeln('winter');
	3..5:  writeln('spring');
	6..8:  writeln('summer');
	9..11:  writeln('autumn');
      end;
end.
   


