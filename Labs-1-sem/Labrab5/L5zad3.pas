program L5zad3;

uses SysUtils;

var S, S1   : string;
   n, p, ln : integer;
	  
begin
   write('Enter string: ');
   readln(S1);
   write('Enter pattern: ');
   readln(S);

   n := 0;
   ln := length(S);
   p := pos(S, S1);

   while p > 0 do
   begin
      delete(S1, p, ln);
      p := pos(S, S1);
      n := n + 1;
   end;

   writeln('Count of S in S1 is ', n);
end.