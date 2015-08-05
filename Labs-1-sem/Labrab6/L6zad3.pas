program Z6zad3;

uses SysUtils;

const
   days	= 365;

type
   weekDay = (sun,mon,tue,wed,thu,fri,sat);
	   

var yday, mnum, mn : integer;
   wday		   : weekDay;
   dmons	   : array[1..12] of integer = (31,28,31,30,31,30,31,31,30,31,30,31);
		      
begin
   mn := 1;   
   wday := wed;
   yday := 1;
   mnum := 1;
   
   
   while yday <= days do
   begin
      if (mnum = 13) and (wday = fri)
	 then begin
	    writeln('13/', mn);
	    
	    if (wday = sat)
	       then wday := sun
	    else inc(wday);

	    if (mnum = dmons[mn]) then
	    begin
	       mnum := 1;
	       inc(mn);
	    end
	    else inc(mnum);

	    inc(yday);	    
	 end
      
	 else begin
	    if (wday = sat)
	       then wday := sun
	    else inc(wday);

	    
	    if (mnum = dmons[mn]) then
	    begin
	       mnum := 1;
	       inc(mn);
	    end
	    else inc(mnum);

	    inc(yday);
	 end;
   end; 
   
end.