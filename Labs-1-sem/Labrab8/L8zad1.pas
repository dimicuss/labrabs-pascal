program L8zad1;

uses SysUtils;

function Fact (n : integer ) : integer;
begin
   if n = 0 then Fact := 1
   else Fact := Fact(n - 1) * n;
end; { Fact }

procedure Factnr (n : integer);
var fact : integer;
begin
   fact := 1;
   while n > 0 do
   begin
      fact := fact * n;
      n := n - 1;
   end;
   writeln(fact);
end;

begin
   writeln(Fact(10));
   Factnr(10);
end.