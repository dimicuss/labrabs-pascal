program L7zad6;

uses SysUtils, Math;

type massive = array of integer;

var A, B, C : massive;
   q	    : real;


procedure input (var ar : massive; a, b : integer);
var i : integer;
begin
   SetLength(ar, abs(a - b) + 1);
   for i := a to b do
      ar[i - a] := i;
end; { input }

procedure output (ar : massive);
var i : integer;
begin
   for i := 0 to high(ar) do
      write(ar[i], ' ');
end; { output }


function S (ar : massive) : integer;
var i, summ : integer;
begin
   summ := 0;
   for i := 0 to high(ar) do
      if ar[i] > 0 then
	 summ := summ + ar[i];
   S := summ;

end; { S }

function K (ar : massive ) : integer;
var i, count : integer;
begin
   for i := 0 to high(ar) do
      if ar[i] > 0 then
	 inc(count);
   K := count;
end;


begin
   input(A, -10, 5);
   input(B, 1, 10);
   input(C, 0, 7);

   q := (S(A) + S(B) + S(C)) / (K(A) * K(B) * K(C));
   writeln(q:10:8);

end.
