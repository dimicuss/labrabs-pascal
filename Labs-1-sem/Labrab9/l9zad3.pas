program l9zad3;

uses SysUtils;

var f : text;
   s  : string;

procedure countS(i, s :  integer);
var sym	:   char;
begin
   read(f, sym);
   if eof(f) then
   begin
      writeln('count of "spasebar" symbol is ', s);
      writeln('count of chars is ', i);
      writeln('size of file is ', (i * 4 / 1024):3:3, ' kbyte');
      close(f);
   end
   else begin
      if sym = ' ' then
	 inc(s);
      
      inc(i);
      countS(i, s);
   end;
end; { countS }


function search (s, p : string) :integer;
var i, j  : integer;

begin
   if Length(p) > Length(s) then search := 0;
   for i := 1 to Length(s) - Length(p) + 1 do
      for j := 1 to Length(p) do
	 if p[j] <> s[i + j - 1] then Break
	 else if j = Length(p) then
	    search := i;
end;

function countOfStrings(str_ :  string ) : integer;
var i  : integer;
   ch  : char;
   str : string;
   
begin
   while  not eof(f) do
   begin
      read(f, ch);
      str := str + ch;
   end;
   countOfStrings := search(str, str_);
   
end; 


begin
   assign(f, 'new2.txt');
   reset(f);
   countS(0, 0);
   reset(f);
   writeln(countOfStrings('sd sd'));
   close(f);
end.