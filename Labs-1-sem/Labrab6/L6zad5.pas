program L6zad5;

uses SysUtils;

var word   : string;
   chars   : set of char;
   numbers : set of char;
   sign	   : boolean;
   i	   : integer;
   
   
       
   

begin
   write('Please enter WORD : ');
   readln(word);

   sign := true;
   chars := ['a'..'z', '_'];
   numbers := ['0'..'9'];
   i := 2;

   if not (word[1] in chars)
      then sign := false
   else
      for i := 2 to length(word) do
      begin
	 if not (word[i] in chars) and not (word[i] in numbers)
	    then sign := false;
      end;
   
   writeln(sign);
end.