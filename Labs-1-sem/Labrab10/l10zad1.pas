program l10zad1;

uses SysUtils, DateUtils;

var arr	       : array of integer;
   sort_arr    : array of integer;
   i, N, count : integer;
   T1, T2, T3  : TDateTime;


procedure bubble_sort(a : array of integer);
var i, j, temp : integer;
   tn, tt      : TDateTime;
begin
   tn := now;
   for i := 0 to high(a) do begin
      for j := high(a) downto i + 1 do
	 if (a[j - 1] > a[j]) then begin
	    temp := a[j - 1];
	    a[j-1] := a[j];
	    a[j] := temp;
	 end;
   end;
   tt := now;
   T1 := MilliSecondsBetween(tt, tn);
end;


procedure select_sort(a : array of integer);
var i, j, Imin, Min : integer;
   tn, tt	    : TDateTime;
begin
   tn := now;
   for i := 0 to high(a) do
   begin
      Imin := i;
      Min := a[i];
      for j := i + 1 to high(a) do
	 if (a[j] < min) then
	 begin
	    Imin := j;
	    Min := a[j]
	 end;
      a[Imin] := a[i];
      a[i] := Min;
   end;
   tt := now;
   T2 := MilliSecondsBetween(tt, tn);
end; { select_sort }


procedure insert_sort(a : array of integer);
var i, j, temp : integer;
   tn, tt      : TDateTime;
begin		  
   tn := now;
   for i := 1 to high(a) do
   begin
      temp := a[i];
      j := i - 1;
      while (j > 0) and (a[j] > temp) do
      begin
	 a[j + 1] := a[j];
	 dec(j);
      end;
      a[j + 1] := temp;
   end;
   tt := now;
   T3 := MilliSecondsBetween(tt, tn);
end;		  


begin
   readln(count);
   setLength(arr, count);
   
   randomize;
   for i := 0 to high(arr) do
      arr[i] := random(2000) - 1000;

   bubble_sort(arr);
   select_sort(arr);
   insert_sort(arr);
   
   writeln('N', '  T1', '  T2', '  T3');
   writeln('0 ',  T1:2:0, T2:4:0, T3:4:0);

   setLength(arr, count + 10000);
   for i := 0 to high(arr) do
      arr[i] := random(2000) - 1000;
   
   for i := 1 to 10 do
   begin
      bubble_sort(arr);
      select_sort(arr);
      insert_sort(arr);
      writeln(IntToStr(i) + ' ',  T1:2:0, T2:4:0, T3:4:0);
   end;
end.