program L7zad1;

uses SysUtils, Math;

type mas = array of integer;

var i, a, b, c	    : integer;
   _a, _b, _c	    : mas;
   resA, resB, resC : real;




function midaF(arr : array of integer) : real;
var sumA : real;
   i	 : integer;

begin
   sumA := 0;

   for i := 1 to length(arr) - 1 do
      sumA := sumA + arr[i];

   midaF := sumA / length(arr) - 1;
end;


procedure midgP(arr : array of integer; var res : real);
var sumG : real;
   i	 : integer;

begin
   sumG := 0;

   for i := 1 to length(arr) - 1 do
      sumG := sumG + (1 / arr[i]);

   res := sumG;
end; { midgF }






begin
   writeln('Please enter A , B , C : ');
   readln(a, b, c);
   setLength(_a, a);
   setLength(_b, b);
   setLength(_c, c);

   for i := 1 to length(_a) - 1 do
      _a[i] := i;

   for i := 1 to length(_b) - 1 do
      _b[i] := i;

   for i := 1 to length(_c) - 1 do
      _c[i] := i;


   midgP(_a, resA);
   midgP(_b, resB);
   midgP(_c, resC);
   
   writeln(midaF(_a) / resA :5:3, ' ',
	   midaF(_b) / resB :5:3, ' ',
	   midaF(_c) / resC :5:3);

end.
