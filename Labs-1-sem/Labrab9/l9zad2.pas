program l9zad2;

uses SysUtils, Math;

var f : file of real;

procedure writeReal(p : real; i : integer);
var n :  real;
begin
   readln(n);
      if n = 777 then
      begin
	 write(f, power(p, 1 / i));
	 close(f);
      end
      else begin
	 write(f, n);
	 p := p * n;
	 inc(i);
	 writeReal(p, i);
      end;
end; { writeReal }

begin
   assign(f, 'new.txt');
   rewrite(f);
   writeReal(1, 0);
end.