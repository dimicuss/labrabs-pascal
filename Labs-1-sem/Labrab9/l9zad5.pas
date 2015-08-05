program L9zad5;

uses SysUtils;

type student = record
		  l_name : string;
		  dob	 : string;
		  group	 : string;
	       end;	 
    str_mas  = array[0..2] of string;
    stud_mas = array of student;
		  
   
var i	    : integer;
   db	    : text;
   stud_arr : stud_mas;
   str_arr  : str_mas;
   command  : array[0..1] of string;

function parseString(str : string) : str_mas;
var prs_str : str_mas;
   i	    : integer;
   j	    : integer;
begin
   j := 0;
   prs_str[0] := '';
   prs_str[1] := '';
   prs_str[2] := '';
   for i := 1 to length(str) do
      if str[i] = ' ' then
	 inc(j)
      else prs_str[j] := prs_str[j] + str[i];
   parseString := prs_str;
end;


procedure readDB();
var sym	   : char;
   str	   : string;
   prs_str : str_mas;
begin
   reset(db);
   i := 0;
   while not eof(db) do begin
      while not eoln(db) do
	 begin
	    read(db, sym);
	    str := str + sym;
	 end;
      prs_str := parseString(str);
      setLength(stud_arr, length(stud_arr) + 1);
      stud_arr[i].l_name := prs_str[0];
      stud_arr[i].dob := prs_str[1];
      stud_arr[i].group := prs_str[2];
      str := '';
      inc(i);
      readln(db);
   end;
   close(db);
end;
   
procedure showStudent(str : string);
begin
   for i := 0 to high(stud_arr) do
      if stud_arr[i].l_name = str then
	 writeln(stud_arr[i].l_name, ' ',
		 stud_arr[i].dob, ' ',
		 stud_arr[i].group);
end; { showStudent }

procedure deleteStudent(str : string);
begin
   rewrite(db);
   for i := 0 to high(stud_arr) do
      if stud_arr[i].l_name <> str then
	 writeln(db, stud_arr[i].l_name, ' ',
	       stud_arr[i].dob, ' ',
	       stud_arr[i].group);
   close(db);
end;

begin
   writeln;
   
   assign(db, 'stud.db');
   readDB();
   writeln('Enter COMMAND and LAST NAME');
   
   
   readln(command[0]);
   readln(command[1]);
   if command[0] = 'delete' then
      deleteStudent(command[1])
   else showStudent(command[1]);
   
   writeln;
end.