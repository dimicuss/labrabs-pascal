unit midMath;

interface
uses sysUtils, math;

type massive = array of integer;
     func    = function (x : real) : real;
	     
function midArif(arr : massive) : real;
procedure midGarm(arr : massive);
procedure input (var ar : massive; a, b : integer);
procedure output (ar : massive);
function S (ar : massive) : integer;
function K (ar : massive ) : integer;
function q (A, B, C : massive) :real;
procedure bubbleSort(a : massive);
procedure selectSort(a : massive);
procedure insertSort(a : massive);
procedure findRoot (a,b,e : real);
function f(x : real):real;
procedure integral (f : func; first, last, n : real);
function f1 (x : real) :real;

{-------------------------------------------------------------}
implementation
   function midArif(arr : massive) : real;
   var sumA : real;
      i	    : integer;
   begin
      sumA := 0;
      for i := 1 to length(arr) - 1 do
	 sumA := sumA + arr[i];
      midArif := sumA / length(arr) - 1;
   end; { midaF }

  
   procedure midGarm(arr : massive);
   var sumG, res : real;
      i		 : integer;		 
   begin
      sumG := 0;
      for i := 1 to length(arr) - 1 do
	 if arr[i] <> 0 then
	    sumG := sumG + (1 / arr[i]);      
      res := sumG;
      writeln(res);
   end; { midgF }


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
	 if i <> high(ar) then
	    write(ar[i], ' ')
	 else writeln(ar[i]);
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


   function K (ar : massive) : integer;
   var i, count	: integer;
   begin	
      for i := 0 to high(ar) do
	 if ar[i] > 0 then
	    inc(count);
      K := count;
   end; { K }


   function q (A, B, C : massive) : real;
   begin
      q := (S(A) + S(B) + S(C)) / (K(A) * K(B) * K(C));
   end; { q }


   procedure bubbleSort(a : massive);
   var i, j, temp : integer;
   begin
      for i := 0 to high(a) do begin
	 for j := high(a) downto i + 1 do
	    if (a[j - 1] > a[j]) then begin
	       temp := a[j - 1];
	       a[j-1] := a[j];
	       a[j] := temp;
	    end;
      end;
      output(a);
   end;


   procedure selectSort(a : massive);
   var i, j, Imin, Min : integer;
   begin	       
      for i := 0 to high(a) do
      begin
	 Imin := i;
	 Min := a[i];
	 for j := i + 1 to high(a) do
	    if (a[j] < min) then
	    begin
	       Imin := j;
	       Min := a[j]
	    end;
	 a[Imin] := a[i];
	 a[i] := Min;
      end;
      output(a);
   end; { select_sort }


   procedure insertSort(a : massive);
   var i, j, temp : integer;
   begin	  
      for i := 1 to high(a) do
      begin
	 temp := a[i];
	 j := i - 1;
	 while (j > 0) and (a[j] > temp) do
	 begin
	    a[j + 1] := a[j];
	    dec(j);
	 end;
	 a[j + 1] := temp;
      end;
      output(a);
   end; { insert_sort }


   function f(x	: real) : real;
   begin
      f:=exp(x*ln(5))-6*x-3;
   end; { f }


   procedure findRoot (a, b, e : real);
   var c, x : real;
   begin
      c := (a+b)/2;
      while abs(b-a) > e do
      begin
	 if f(a)*f(c)<0 then
	    b:=c
	 else a:=c;
	 c:=(a+b)/2;
      end;
      
      x:=(a+b)/2;
      writeln('x=',x:3:3,' f(x)=',f(x):4:4);
   end; { find }


   procedure integral (f : func; first, last, n : real);
   var h, int, x : real;
   begin	 
      h := (last - first) / n;
      x := first + h;
      int := (f(first) + f(last)) / 2;
      while x <= last do
      begin
	 int := int + f(x);
	 x := x + h;
      end;
      writeln(h * int);
   end; { integral }


   function f1 (x : real) : real;
   begin
      f1 := sqrt(exp(x) - 1);
   end; { f1 }


end.
