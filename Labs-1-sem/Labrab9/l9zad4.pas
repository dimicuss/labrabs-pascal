program l9zad4;

Uses Crt, SysUtils;


const
   CountRead = 128;
	     
var
   file_in, file_out   : file;
   name1, name2	       : string;
   num_read, num_write : word;
   buf		       : array[1..CountRead] of char;

begin
   Write('File 1: ');
   Readln(name1);
   Write('File 2: ');
   Readln(name2);
   Assign(file_in, name1);
   Reset(file_in, 1);
   Assign(file_out, name2);
   Rewrite(file_out, 1);
   repeat
      BlockRead(file_in, buf, CountRead, num_read);
      BlockWrite(file_out, buf, CountRead, num_write);
   until (num_read = 0) or (num_write <> num_read);
   writeln('Copying is completed');
   close(file_out); close(file_in);
end.