program L5zad5;

uses SysUtils;

var S : string;
   i  : integer;

begin
   write('Enter string: ');
   readln(S);

   for i := 1 to length(S) do
   begin
      writeln('"', S[i], '"', ' is ', Ord(S[i]));
   end;

   writeln;
   writeln(UpCase(S));
   writeln;
   writeln(LowerCase(S));
end.