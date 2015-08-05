program L8zad3;

uses SysUtils;

function NOD(a, b : integer  ) : real;
begin
   if b = 0 then NOD := a
   else NOD := NOD(b, a mod b);
end; { NOD }

function NOK(a, b :integer ) :real;
begin
   NOK := a * b / NOD(a, b);
end;

begin
   writeln(NOD(27, 6));
   writeln(NOK(27, 6));
end.
