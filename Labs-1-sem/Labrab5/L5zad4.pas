program L5zad4;

uses SysUtils;

var S, word, signs : string;
   i, n		   : integer;
   words	   : array of string;

begin
   write('Enter string: ');
   readln(S);

   word := '';
   signs := ' ';
   n := 1;
   
   for i := 1 to Length(S) do
      if Pos(S[i], signs) = 0 then begin
	 word := word + S[i];
	 
	 if i = length(s) then begin
	    SetLength(words, n);
	    words[n - 1] := word;
	    word := '';
	    n := n + 1;
	 end;
	 
      end
   
      else if word <> '' then begin
	 SetLength(words, n);
	 words[n - 1] := word;
	 word := '';
	 n := n + 1;
      end;

   writeln('Count of words in String is ', length(words));
   
   writeln;
   
   for i := 0 to Length(words) - 1 do
      Writeln(words[i]);
   
   
end.