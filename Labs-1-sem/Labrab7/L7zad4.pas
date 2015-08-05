program L7zad4;

uses SysUtils;

const az : set of char = ['a'..'z', 'A'..'Z'];

var str	: string;
   i	: integer;

procedure checkLetter (l : char);
begin
   writeln(l, ' ', l in az);
end;

begin
   writeln('Please enter a new string : ');
   readln(str);
   for i := 1 to length(str) do
      checkLetter(str[i]);   
end.
   