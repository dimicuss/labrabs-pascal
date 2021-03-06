unit Unit1; 

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls, crt;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end; 

var
  Form1: TForm1;
  xcur, ycur, nr, n, i : integer;

implementation

{$R *.lfm}

{ TForm1 }

function f(x, x1, y1, x2, y2 : integer) : integer;
begin
     f := trunc(-1 * ((((x - x1) / (x2 - x1)) * (y1 - y2)) - y1)) ;
end;

procedure moveItem(xnew, ynew : integer);
begin
     xcur := Form1.Image1.left;
     ycur := Form1.Image1.top;

     if xcur > xnew then
        for i := xcur downto xnew do begin
             Form1.Image1.left := i;
             Form1.Image1.top := f(i, xcur, ycur, xnew, ynew);
             Application.ProcessMessages;
             sleep(10);
        end
     else for i := xcur to xnew do begin
             Form1.Image1.left := i;
             Form1.Image1.top := f(i, xcur, ycur, xnew, ynew);
             Application.ProcessMessages;
             sleep(10);
        end
end;


procedure foo(nr : integer);
begin
     n := random(4);
     if n <> nr then begin
           case n of
                    0 : begin {a}
                      moveItem(0, random(Form1.Image1.height + 1));
                    end;

                    1 : begin {b}
                      moveItem(random(Form1.Image1.width + 1), 0);
                    end;

                    2 : begin {d}
                      moveItem(random(Form1.Image1.width + 1), 318);
                    end;

                    3 : begin {c}
                      moveItem(400, random(Form1.Image1.height + 1));
                    end;
           end;
           foo(n);
     end
     else foo(n);


end;


procedure TForm1.Button1Click(Sender: TObject);
begin
     randomize;
     foo(-1);
end;

end.

