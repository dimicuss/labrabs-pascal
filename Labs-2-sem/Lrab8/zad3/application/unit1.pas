unit Unit1; 

{$mode delphi}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  dynlibs;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Edit1: TEdit;
    Edit10: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;
  func = function(a, b : integer) : integer;

var
  Form1: TForm1;
  vhandle : THandle;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
     vhandle := LoadLibrary('./math.so');
end;

procedure TForm1.Button1Click(Sender: TObject);
var plus : func;
    answer : integer;
begin

     @plus := getProcAddress(vhandle, 'plus');
     answer := plus(strToInt(Edit1.text), strToInt(Edit2.text));
     showMessage(intToStr(answer));

end;

procedure TForm1.Button2Click(Sender: TObject);
var minus : func;
    answer : integer;
begin

     @minus := getProcAddress(vhandle, 'minus');
     answer := minus(strToInt(Edit3.text), strToInt(Edit4.text));
     showMessage(intToStr(answer));


end;

procedure TForm1.Button3Click(Sender: TObject);
var multiple : func;
    answer : integer;
begin

     @multiple := getProcAddress(vhandle, 'multiple');
     answer := multiple(strToInt(Edit5.text), strToInt(Edit6.text));
     showMessage(intToStr(answer));
end;

procedure TForm1.Button4Click(Sender: TObject);
var divide : func;
    answer : integer;
begin

     @divide := getProcAddress(vhandle, 'divide');
     answer := divide(strToInt(Edit7.text), strToInt(Edit8.text));
     showMessage(intToStr(answer));

end;

procedure TForm1.Button5Click(Sender: TObject);
var module : func;
    answer : integer;
begin
     @module := getProcAddress(vhandle, 'module');
     answer := module(strToInt(Edit9.text), strToInt(Edit10.text));
     showMessage(intToStr(answer));
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  FreeLibrary(vhandle);
  Application.terminate;
end;




end.

