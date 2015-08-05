program zad5;

uses SysUtils;

var x1, x2, D, a, b, c :real;

begin
   writeln('Введите коэффициенты');
   readln(a, b, c);
   
   if ((a = 0) and (b = 0) and (c = 0))
      then writeln('Уравнение имеет бесконечное число решений')
   else if ((a = 0) and (not (b = 0)) and (not (c = 0)))
      then writeln('Корень уравнения равен', ((-1 * c) / b):10:1)
   else if ((a = 0) and (b = 0) and (not (c = 0)))
      then writeln('У этого уравнения не существует корней')
   else begin
      
      D := sqr(b) - (4 * a * c);
      
      if (D < 0)
	 then writeln('Корней не существует')
      else 
	 if (D = 0) then begin
	    x1 := (-b + sqrt(D)) / (2 * a);
	    writeln('Существует тоько один корень ', x1:10:1);
	 end
	 else if (D > 0)
	    then begin
	       x1 := (-b + sqrt(D)) / (2 * a);
	       x2 := (-b - sqrt(D)) / (2 * a);
	       writeln('Существует 2 корня ', x1:10:1, x2:10:1);
	    end;
   end;
end.
