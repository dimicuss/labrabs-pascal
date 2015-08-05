program L5zad2;

uses SysUtils;

var S1, S2, S3 : string;
   p, lw       : integer;

begin
   readln(S1);
   readln(S2);
   readln(S3);

   writeln(S1);
   
   lw := length(S2);
   p := pos(S2, S1);
   
   
   while p > 0 do
   begin
      delete(S1, p, lw);
      insert(S3, S1, p);
      p := pos(S2, S1);
   end;
   
   writeln(S1);
   
end.