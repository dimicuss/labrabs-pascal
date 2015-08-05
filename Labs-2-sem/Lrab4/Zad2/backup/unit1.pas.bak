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
    Button2: TButton;
    ComboBox1: TComboBox;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end; 
const brd = 176;
var
  Form1: TForm1; 

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button2Click(Sender: TObject);
begin
  Application.terminate;
end;

procedure TForm1.Image2Click(Sender: TObject);
begin
  Image1.top := Image1.top - strToInt(ComboBox1.text);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Image1.Left := 0;
  Image1.top := 0;
end;


procedure TForm1.Image3Click(Sender: TObject);
begin
     if Image1.left + strToInt(ComboBox1.text) <= brd then
        Image1.left := Image1.left + strToInt(ComboBox1.text);

end;

procedure TForm1.Image4Click(Sender: TObject);
begin
     Image1.top := Image1.top + strToInt(ComboBox1.text);
end;

procedure TForm1.Image5Click(Sender: TObject);
begin
     Image1.left := Image1.left - strToInt(ComboBox1.text);
end;

end.

