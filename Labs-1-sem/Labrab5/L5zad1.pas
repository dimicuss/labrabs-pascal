program L5zad1;

uses SysUtils;

var S, S1, CH : string;
   i	      : integer;
   

begin
   readln(S);
   readln(CH);

   for i := 1 to length(S) do
      if S[i] <> CH then
	 S1 := S1 + S[i]
      else break;
   

   writeln(S1);

   
end.