program l9zad1;

uses SysUtils;

var f : text;
   n  : integer;
      
procedure writeToFile(s, i : integer);
var n	: integer;
   strg	: string;
begin
   readln(n);
   if n = 777 then
   begin
      writeln(f, intToStr(s));
      writeln(f, floatToStr(s / i));
   end
   else begin
      writeln(f, intToStr(n));
      s := s + n;
      inc(i);
      writeToFile(s, i);
   end;
end; { writeToFile }


begin
   assign(f, 'new.txt');
   rewrite(f);
   writeToFile(0, 0);
   close(f);
end.