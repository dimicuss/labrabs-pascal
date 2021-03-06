unit Unit1; 

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, ColorBox;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    ColorBox1: TColorBox;
    ComboBox1: TComboBox;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer
      );
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { private declarations }
  public
    { public declarations }
  end; 

var
  Form1: TForm1;
  state: boolean = false;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  Application.terminate;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
     image1.canvas.brush.color := clWhite;
     image1.canvas.rectangle(0, 0, image1.width, image1.height);
end;




procedure TForm1.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
     state := true;
end;

procedure TForm1.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
     if state = true then begin
        image1.canvas.pen.color := colorBox1.selected;
        image1.canvas.pen.width := strToInt(comboBox1.Items[combobox1.ItemIndex]);
        image1.canvas.moveTo(x, y);
        image1.canvas.lineTo(x + 1, y + 1);
     end;
end;

procedure TForm1.Image1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
     state := false;
end;


end.

