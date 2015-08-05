unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type
ывывывыв
  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end; 

var
  Form1: TForm1; 

implementation

{$R *.lfm}



{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
     with image1 do
     begin
          canvas.brush.color := clWhite;
          canvas.FillRect(0, 0, Image1.Width, Image1.Height);
          canvas.pen.color := clRed;
          canvas.brush.color := clRed;
          canvas.ellipse(75, 125, 150, 200);
          canvas.pen.color := clBlue;
          canvas.brush.color := clBlue;
          canvas.roundRect(50, 125, 75, 200, 12, 12);
          canvas.roundRect(75, 125, 150, 100, 12, 12);
          canvas.roundRect(150, 125, 175, 200, 12, 12);
          canvas.roundRect(75, 200, 150, 225, 12, 12);
     end;


end;

procedure TForm1.Button2Click(Sender: TObject);
begin
     Application.terminate;
end;

end.

