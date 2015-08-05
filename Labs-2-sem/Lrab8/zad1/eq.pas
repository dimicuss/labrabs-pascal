{$mode objfpc}
{$static on}

program equal;

uses SysUtils, crt;  

type
   eq = class
   ra : real;
   rb :	real;
   rc :	real;
   D  :	real;
   x1 :	real;
   x2 :	real;
   procedure solve;
   constructor findD(a, b, c : real);   
   end;


constructor eq.findD (a, b, c : real);
begin
   ra := a;
   rb := b;
   rc := c;

   D := rb * rb + 4 * ra * rc;
end;

procedure eq.solve();
begin
   if D < 0 then writeln('Уравнение не имеет корней.')
   else if D = 0 then begin
      writeln('Уравнение имеет один корень: '
	      + floatTostrF((-rb + sqrt(D))/2 * ra, ffFixed, 3, 4));
   end
   else begin
      x1 := (-rb + sqrt(D))/2 * ra;
      x2 := (-rb - sqrt(D))/2 * ra;
      writeln('Уравнение имеет два корня: '
	      + floatTostrF(x1, ffFixed, 3, 4)
	      + ', '
	      + floatTostrF(x2, ffFixed, 3, 4));      
   end;
end; { eq }

procedure getRatios(var a, b, c	: real);
var _a, _b, _c : string;
begin
   readln(_a);
   readln(_b);
   readln(_c);
   try
     a := strToFloat(_a);
     b := strToFloat(_b);
     c := strToFloat(_c);
   except
     on EConvertError do begin
	writeln('Error! Please enter a NUMBER instead SYMBOL');
	getRatios(a, b, c);
     end;
  end;
end; {get Ratios}



var newEq  : eq;
   a, b, c : real;

begin
   getRatios(a, b, c);
   
   newEq := eq.Create;
   
   newEq.findD(a, b, c);
   newEq.solve;   
end.