program L1zad1;

uses sysUtils, midMath, Math;

var nameFunc  : array[0..9] of string;
   i, n, a, b : integer;
   e, s	      : real;
   arr	      : array of integer;
   A_, B_, C_ : array of integer;
   arr_	      : array[0..60] of integer;

begin
   randomize;
   writeln('0 - midArif');
   writeln('1 - midGarm');
   writeln('2 - input');
   writeln('3 - output');
   writeln('4 - q');
   writeln('5 - bubbleSort');
   writeln('6 - selectSort');
   writeln('7 - insertSort');
   writeln('8 - findRoot');
   writeln('9 - integral');

   writeln;
   
   write('Введите номер команды ');
   readln(n);
   
   case n of
     0 : begin
	    readln(a);
	    readln(b);
	    input(arr, a, b);
	    writeln(midArif(arr):3:8);
	 end;
     
     1 : begin
	    readln(a);
	    readln(b);
	    input(arr, a, b);
	    midGarm(arr);
	 end;
     
     2 : begin
	    readln(a);
	    readln(b);
	    input(arr, a, b);
	    output(arr);
	 end;
     
     3 : begin
	    readln(a);
	    readln(b);
	    input(arr, a, b);
	    output(arr);
	 end;
     
     4 : begin
	    writeln('A');
	    readln(a);
	    readln(b);
	    input(A_, a, b);
	    
	    writeln('B');
	    readln(a);
	    readln(b);
	    input(B_, a, b);
	    
	    writeln('C');
	    readln(a);
	    readln(b);
	    input(C_, a, b);
	    
	    writeln(q(A_, B_, C_):3:3);
	 end;
     
     5 : begin
	    for i := 0 to 60 do
	       arr_[i] := random(1000);
	    bubbleSort(arr_);
	 end;
     
     6 : begin
	    for i := 0 to 60 do
	       arr_[i] := random(1000);
	    selectSort(arr_);
	 end;
     
     7 : begin
	    for i := 0 to 60 do
	       arr_[i] := random(1000);
	    insertSort(arr_);
	 end;
     
     8 : begin
	    readln(a);
	    readln(b);
	    readln(e);
	    findRoot(a, b, e);
	 end;
     
     9 : begin
	    readln(a);
	    readln(b);
	    s := ln(b);
	    readln(e);
	    integral(@f1, a, s, e);
	 end;
     
   else writeln('error')
   end; { case }
   
end.