program L8zad5;

uses SysUtils;
type str_ = string;

var str : str_;

function rs(InString : str_) : str_;
var
   i	  : integer;
   Result : str_;
begin
        Result := '';
   for i := Length(InString) downto 1 do
      Result := Result + InString[i];

   rs := Result;
end;

function from10to2(n : integer ; s : str_ ) : str_;
begin
   if n = 0 then writeln(rs(s))
   else
   begin
      s := s + intToStr(n mod 2);
      n := n div 2;
      from10to2 := from10to2(n, s);
   end;
end;

begin
   from10to2(10, str);

end.
