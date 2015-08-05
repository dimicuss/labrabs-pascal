program l11zad1;

uses SysUtils, DateUtils;

type mas   = array of integer;

var i, count : integer;
   arr	     : mas;
   T1, T2    : TDateTime;
   f	     : text;



function search (s, p : string) :integer;
var i, j  : integer;
   tn, tt : TDateTime;
begin
   tn := now;
   if Length(p) > Length(s) then search := 0;
   for i := 1 to Length(s) - Length(p) + 1 do
      for j := 1 to Length(p) do
	 if p[j] <> s[i + j - 1] then Break
	 else if j = Length(p) then
	    search := i;
   tt := now;
   T1 := MilliSecondsBetween(tt, tn);
end; { search }


function insert_sort(a : mas) : mas;
var i, j, temp : integer;
begin		  
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
   insert_sort := a;
end;




function simple_search (arr : mas; key : integer) : integer;
var i_	  : integer;
   tn, tt : TDateTime;
   i	  : integer;
begin
   tn := now;
   for i := 0 to high(arr) do
      if key = arr[i] then i_ := i;
   if arr[i_] = key then
      simple_search := i_
   else simple_search := -1;
   tt := now;
   T1 := MilliSecondsBetween(tt, tn);
end; { simple_find }



function bin_search (arr : mas; l,r,key : integer) : integer;
var m	  : integer;
   tn, tt : TDateTime;
begin
   tn := now;
   While l < r - 1 do
   begin
      m := (l + r) div 2;
      if arr[m] > key then r := m
      else l := m;
   end;
   if arr[l] = key then
      bin_search := l
   else bin_search := -1;
   tt := now;
   T2 := MilliSecondsBetween(tt, tn);
end; { bin_search }


function BMSearch(StartPos : Integer; const S, P: String): Integer;
type
   TBMTable = array[0..255] of Integer;
var	    
   Pos, lp : Integer;
   BMT	   : TBMTable;
   i	   : integer;
   tn, tt  : TDateTime;
begin	      
   tn := now;
   for i := 0 to 255 do BMT[i] := Length(P);
   for i := Length(P) downto 1 do
      if BMT[Byte(P[i])] = Length(P) then
	 BMT[Byte(P[i])] := Length(P) - i;

   lp := Length(P);
   Pos := StartPos + lp - 1;
   while Pos <= Length(S) do
      if P[lp] <> S[Pos] then Pos := Pos + BMT[Byte(S[Pos])]
      else if lp = 1 then  exit(Pos)
      else for i := lp - 1 downto 1 do
	 if P[i] <> S[Pos - lp + i] then
	 begin
	    Inc(Pos);
	    Break;
	 end
	 else if i = 1 then
	    exit(Pos - lp + 1);
   BMSearch := 0;
   tt := now;
   T2 := MilliSecondsBetween(tt, tn);
end;


function readFile () : string;
var ch : char;
   str : string;
begin
   reset(f);
   while not eof(f) do 
   begin
      read(f, ch);
      str := str + ch;
   end;
   close(f);
   readFile := str;
end;  

begin
   readln(count);
   setLength(arr, count);
   
   randomize;
   for i := 0 to high(arr) do
      arr[i] := random(2000) - 1000;
   
   simple_search(arr, 734);
   bin_search(insert_sort(arr), 0, count - 1, 678);
   
   writeln('N', '  T1', '  T2');
   writeln('0 ',  T1:2:0, T2:4:0);

  
   setLength(arr, count + 10000);
   
   
   for i := 0 to high(arr) do
      arr[i] := random(2000) - 1000;

   
   for i := 1 to 10 do
   begin
      writeln(simple_search(arr, 734));
      writeln(bin_search(insert_sort(arr), 0, count - 1 + 10000, 678));
      writeln(intToStr(i) + ' ',  T1:2:0, T2:4:0);
   end;

    writeln('N', '  T1i', '  T2i');
   
   for i := 1 to 10 do
   begin
      assign(f, 'file_' + intToStr(i) + '.txt');
      search(readFile(), 'slayer');
      BMSearch(1, readFile(), 'slayer');
      writeln(intToStr(i) + ' ',  T1:2:0, T2:4:0);
   end;
end.