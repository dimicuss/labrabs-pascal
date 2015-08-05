{$mode objfpc}
{$static on}
{$I+}

program sortList;

uses SysUtils, Classes;

type ENotExist = class(Exception);

var sortMachine	: TStringList;
   t		: text;
   str		: string;
   i		: integer;

procedure enterFileName(var f : text);
var name : string;
begin
   write('Please enter a file name: ');
   readln(name);
   try
     assign(f, name);
     reset(f);
   except
     on EInOutError do begin
	writeln('File name is incorrect, please enter new file name.');
	enterFileName(f);
     end;
   end;
end;
   



begin

   enterFileName(t);
  
   sortMachine := TStringList.Create;
   while not eof(t) do
   begin
      readln(t, str);
      sortMachine.add(str);
   end;
   close(t);

   {--------------------------------------}
   sortMachine.Sort;
   {--------------------------------------}
   
   assign(t, 'sorted.txt');
   rewrite(t);

   for i := 0 to sortMachine.count - 1 do
      writeln(t, sortMachine.strings[i]);
   
   close(t);      
end.