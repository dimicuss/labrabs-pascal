program Lrab2;

uses sysUtils;

type
   infStud = record
		lName	    : string;
		group	    : string;
		scholarship : string;
	     end;	    
	   
   point   = ^stud;
   stud	   = record
		inf  : infStud;
		prev : point;
		next : point;
	     end;    
   
var
   lst, lst2 : point;
   f	     : text;
   n	     : integer;
   a, b, c   : string;


{---------------------------------------------}
function getTail(lst : point) : point;
begin
   getTail := lst^.next;
end; { getTail }


procedure runToHead(var lst : point);
var aux : point;
begin
   while lst^.prev <> nil do
      lst := lst^.prev;
end; { runToHead }


procedure runToEnd(var lst : point);
var aux : point;
begin
   while lst^.next <> nil do
      lst := lst^.next;
end; { runToHead }

{---------------------------------------------}


procedure writeList(lst	: point);
begin
   if lst^.next = nil then begin
      writeln(lst^.inf.lName);
      writeln(lst^.inf.group);
      writeln(lst^.inf.scholarship);
   end
   else begin
      writeln(lst^.inf.lName);
      writeln(lst^.inf.group);
      writeln(lst^.inf.scholarship);
      writeln;
      writeList(lst^.next);
   end;
end; { writeList }

function mkList() : point;
var aux	: point;
begin
   new(aux);
   aux := nil;
   mkList := aux;
end; { mkList }

procedure addHeadNode(ln, gr, scholr : string; var lst : point);
var aux	: point;
begin
   if lst = nil then begin
      new(aux);
      aux^.inf.lName := ln;
      aux^.inf.group := gr;
      aux^.inf.scholarship := scholr;
      aux^.prev := nil;
      aux^.next := nil;
   end
   else begin
      new(aux);
      aux^.inf.lName := ln;
      aux^.inf.group := gr;
      aux^.inf.scholarship := scholr;
      
      aux^.prev := nil;
      aux^.next := lst;
      lst^.prev := aux;
   end;
   lst := aux;
end; { addHeadNode }


procedure addInTail(ln, gr, scholr : string; var lst : point);
var aux	: point;
begin
   aux := getTail(lst);
   addHeadNode(ln, gr, scholr, aux);
   lst^.next := aux;
   aux^.prev := lst;
end; { addInTail }


procedure addFvd(ln, gr, scholr : string; var lst : point);
var aux : point;
begin
   new(aux);
   aux^.inf.lName := ln;
   aux^.inf.group := gr;
   aux^.inf.scholarship := scholr;

   if lst^.prev = nil then begin
      aux^.next := lst;
      lst^.prev := aux;
   end
   else begin
      
      lst^.prev^.next := aux; {aux <--> lst}
      aux^.prev := lst^.prev;
      
      lst^.prev := aux;
      aux^.next := lst;
   end;
end; { addFrv }


procedure addBck(ln, gr, scholr : string; var lst : point);
var aux	:  point;
begin
   new(aux);
   aux^.inf.lName := ln;
   aux^.inf.group := gr;
   aux^.inf.scholarship := scholr;
   
   if lst^.next = nil then begin
      lst^.next := aux;
      aux^.prev := lst;
   end      
   else begin      
      lst^.next^.prev := aux; {aux <--> lst^.next}
      aux^.next := lst^.next;
      
      lst^.next := aux; {aux <--> lst}
      aux^.prev := lst;
   end;
   
   
end; { addBck }


procedure deleteNode(var lst : point);
var aux	: point;
begin
   
   if lst = nil then
      writeln('error')
   else if (lst^.prev = nil) and (lst^.next = nil) then
   begin
      dispose(lst);
      lst := nil;
   end
   else if lst^.prev = nil then
   begin
      aux := lst^.next;
      aux^.prev := nil;
      dispose(lst);
      lst := aux;
      
   end
   else if lst^.next = nil then
   begin
      aux := lst^.prev;
      aux^.next := nil;
      dispose(lst);
      lst := aux;
   end
   else begin
      aux := lst^.next;
      
      aux^.prev := lst^.prev;
      lst^.prev^.next := aux;
      
      dispose(lst);
      lst := aux;
   end;
end; { deleteNode }


function nth(n : integer; lst : point) : point;
begin
   if n = 0 then
      nth := lst
   else
      nth := nth(n - 1, getTail(lst));
end; { nth }


procedure find(ln : string; lst : point);
begin
   if (lst^.next = nil)
      then
        if lst^.inf.lName = ln then
	begin
	   writeln(lst^.inf.lName);
	   writeln(lst^.inf.group);
	   writeln(lst^.inf.scholarship);
	end
	else writeln('error')
	else if lst^.inf.lName = ln then
	begin
	   writeln(lst^.inf.lName);
	   writeln(lst^.inf.group);
	   writeln(lst^.inf.scholarship);
	end
	else find(ln, lst^.next);
end;


procedure writeToFile(var f : text; lst : point);
begin
   rewrite(f);
   while lst <> nil do
   begin
      writeln(f, lst^.inf.lName);
      writeln(f, lst^.inf.group);
      writeln(f, lst^.inf.scholarship);
      writeln(f, '');
      lst := lst^.next;
   end;
   close(f);
end;

procedure readFile(var f : text; var lst : point);
var fs, s, t : string;
begin 
   reset(f);
   while not eof(f) do
   begin
      readln(f, fs);
      readln(f, s);
      readln(f, t);
      addHeadNode(fs, s, t, lst);
      readln(f);
   end;
   runToHead(lst);
   close(f);
end; { readFile }

procedure menu();
var str	: string;
begin
   readln(str);
   writeln;
   if upperCase(str) <> 'EXIT' then
   begin
      case strToInt(str) of
	0  : begin
		writeln('Please enter last name: ');
		readln(a);
		writeln('Please enter group: ');
		readln(b);
		writeln('Please enter scholarship: ');
		readln(c);
	       
		addFvd(a, b, c, lst);
		runToHead(lst);
		writeln;
		writeList(lst);
		writeln;
	    end;
	
	1  : begin
	       writeln('Please enter last name: ');
	       readln(a);
	       writeln('Please enter group: ');
	       readln(b);
	       writeln('Please enter scholarship: ');
	       readln(c);
	    
		addBck(a, b, c, lst);
		writeln;
		runToHead(lst);
		writeList(lst);
		writeln;
	    end;
     
	2  : begin
	       deleteNode(lst);
	       writeList(lst);
		writeln;
	     end;
	
	
	3  : begin
	       writeln('Please enter last name: ');
	       readln(a);
	       find(a, lst);
		writeln;
	    end;
	
	4  : begin
	       writeln('Please write file name: ');
	       readln(a);
	       assign(f, a);
	       readFile(f, lst2);
	       writeList(lst2);
		writeln;
	    end;
	
	5  : begin
	       writeln('Please write file name: ');
	       readln(a);
	       assign(f, a);
	       writeToFile(f, lst);
		writeln;
	    end;
	
	6  : begin
		writeln('Please enter last name: ');
		readln(a);
		writeln('Please enter group: ');
		readln(b);
		writeln('Please enter scholarship: ');
		readln(c);
		
		addInTail(a, b, c, lst);
		runToHead(lst);
		writeln;
		writeList(lst);
		writeln;
	    end;
	
	7  : begin
		writeln('Please enter last name: ');
		readln(a);
		writeln('Please enter group: ');
		readln(b);
		writeln('Please enter scholarship: ');
		readln(c);
	       
		addHeadNode(a, b, c, lst);
		writeList(lst);
		writeln;
	    end;
     
	8  : begin
		lst := mkList();
		lst2 := mkList();
		writeln;
	    end;
	
	9  : begin
	       writeList(lst);
		writeln;
	    end;
     
     
	10 : begin
		readln(n);
		nth(n, lst);
		writeln;
	     end;
	
      else writeln('error')
      end; { case }
      writeln('Please enter next command: ');
      menu();
   end;
   
end;
   
begin
   lst := mkList();
   lst2 := mkList();

   writeln('0 - addFvd');
   writeln('1 - addBck');
   writeln('2 - deleteNode');
   writeln('3 - find');
   writeln('4 - readFile');
   writeln('5 - writeToFile');
   writeln('6 - addInTail');
   writeln('7 - addHeadNode');
   writeln('8 - mkList');
   writeln('9 - writelist');
   writeln('10 - nth');

   writeln;

   writeln('Please enter command: ');
   menu();
   
end.  