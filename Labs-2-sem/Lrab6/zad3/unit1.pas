unit Unit1; 

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    CheckBox1: TCheckBox;
    Edit1: TEdit;
    Label1: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    procedure Button1Click(Sender: TObject);
    procedure CheckBox1Change(Sender: TObject);
    procedure LightOn();
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
  Application.terminate;
end;

procedure TForm1.LightOn();
var n : integer;
begin
     n := strToInt(Edit1.text);
     if CheckBox1.checked then begin
          Shape3.brush.color := clGreen;
          Application.ProcessMessages;
          sleep(n);
          Shape3.brush.color := clWhite;
          Shape4.brush.color := clYellow;
          Application.ProcessMessages;
          sleep(n);
          Shape4.brush.color := clWhite;
          Shape5.brush.color := clRed;
          Application.ProcessMessages;
          sleep(n);
          Shape5.brush.color := clWhite;
          LightOn();
     end;
end;

procedure TForm1.CheckBox1Change(Sender: TObject);
begin
     if CheckBox1.checked then begin
        LightOn();
     end;
end;



end.

