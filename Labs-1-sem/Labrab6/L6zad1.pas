program L6zad1;

uses SysUtils;

type
   student = record    
		last_name     : string[30];
		sex	      : char;
		date_of_birth : integer;
		scholarship   : real;
		adress	      : string
	     end;	      
   massive = array of student;
	   

var N, i, maxp, minp : integer;
   max, min	     : real; 
   students	     : massive;
		

begin
   Write('Введите число студентов : ');
   Readln(N);

   SetLength(students, N);

   for i := 0 to Length(students) - 1 do
   begin
      students[i].last_name := 'Last Name ' + IntToStr(i);
      if i mod 2 = 0 then
	 students[i].sex := 'M'
      else students[i].sex := 'F';
      students[i].date_of_birth := 1990 + i;
      students[i].scholarship := 1500 - i;
      students[i].adress := 'Elm Street' + IntToStr(i);
   end;

   
   for i := 0 to Length(students) - 1 do
   begin
      writeln('Last Name: ', students[i].last_name);
      writeln('Sex: ', students[i].sex);
      writeln('DOB: ' ,students[i].date_of_birth);
      writeln('Scholarship: ' , students[i].scholarship:5:0);
      writeln('Adress: ', students[i].adress);
      writeln;
   end;

   
   writeln;

   
   writeln('Студенты мужского пола: ');
   for i := 0 to Length(students) - 1 do
   begin
      if students[i].sex = 'M' then
	 writeln(students[i].last_name);
   end;
   
   writeln;
   
   writeln('Студенты женского пола: ');
   for i := 0 to Length(students) - 1 do
   begin
      if students[i].sex = 'F' then
	 writeln(students[i].last_name);
   end;

   
   writeln;

   
   min := students[0].scholarship;
   for i := 1 to Length(students) - 1 do
   begin
      if min > students[i].scholarship then
      begin
	 min := students[i].scholarship;
	 minp := i;
      end;
   end;
   
   with students[minp] do
   begin
      writeln('Last Name: ', last_name);
      writeln('Sex: ', sex);
      writeln('DOB: ' , date_of_birth);
      writeln('Scholarship: ' , scholarship:5:0);
      writeln('Adress: ', adress);
      writeln;
   end;
   
   writeln;
   
   max := students[0].scholarship; 
   for i := 1 to Length(students) - 1 do
   begin
      if max < students[i].scholarship then
      begin
	 max := students[i].scholarship;
	 maxp := i;
      end;
   end;

   with students[maxp] do
   begin
      writeln('Last Name: ', last_name);
      writeln('Sex: ', sex);
      writeln('DOB: ' , date_of_birth);
      writeln('Scholarship: ' , scholarship:5:0);
      writeln('Adress: ', adress);
      writeln;
   end;
      
end.
