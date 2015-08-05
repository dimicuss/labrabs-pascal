program zad3;

uses SysUtils;

var num, num_, poly :integer;

begin
   readln(num_);
   poly := 0;
   num := num_;
   
   while num > 0 do
   begin
      poly := poly * 10 + num mod 10;
      num := num div 10;
   end;

   if num_ = poly
      then writeln('This number is polyndrome')
   else writeln('This number is not polyndrome');
   
end.