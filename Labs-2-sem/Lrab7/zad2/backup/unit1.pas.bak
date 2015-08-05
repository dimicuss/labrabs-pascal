unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Menus,
  StdCtrls, clipbrd;

type

  { TForm1 }

  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    FL: TMenuItem;
    CP: TMenuItem;
    Autor: TMenuItem;
    Enter: TMenuItem;
    Memo: TMemo;
    Open: TMenuItem;
    Ex: TMenuItem;
    OD: TOpenDialog;
    SaveAS: TMenuItem;
    Save: TMenuItem;
    Red: TMenuItem;
    About: TMenuItem;
    SD: TSaveDialog;
    procedure AutorClick(Sender: TObject);
    procedure CPClick(Sender: TObject);
    procedure EnterClick(Sender: TObject);
    procedure ExClick(Sender: TObject);
    procedure OpenClick(Sender: TObject);
    procedure SaveASClick(Sender: TObject);
    procedure SaveClick(Sender: TObject);
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

procedure TForm1.AutorClick(Sender: TObject);
begin
  ShowMessage('by dimicuss');
end;

procedure TForm1.CPClick(Sender: TObject);
begin
     Clipboard.asText := Memo.SelText;
end;

procedure TForm1.EnterClick(Sender: TObject);
begin
     if not Clipboard.HasFormat(CF_TEXT) then exit;
     Memo.SelText := Clipboard.AsText;
end;

procedure TForm1.ExClick(Sender: TObject);
begin
  Application.terminate;
end;

procedure TForm1.OpenClick(Sender: TObject);
var
  t: textFile;
  str: string;
  i: integer;
begin
  Memo.Lines.Clear;
  OD.Execute;
  assignFile(t, OD.filename);
  reset(t);

  while not EOF(t) do
  begin
    readln(t, str);
    Memo.Lines[i] := str;
    Inc(i);
  end;

  closeFile(t);

end;

procedure TForm1.SaveASClick(Sender: TObject);
var t : textFile;
    i : integer;
begin
     SD.execute;
     assignFile(t, SD.filename);
     rewrite(t);

     for i := 0 to Memo.Lines.count - 1 do
         writeln(t, Memo.Lines[i]);

     closeFile(t);

end;

procedure TForm1.SaveClick(Sender: TObject);
var t : textFile;
    i : integer;
begin
     if OD.filename <> '' then begin
        assignFile(t, OD.filename);
        rewrite(t);

        for i := 0 to Memo.Lines.count - 1 do
            writeln(t, Memo.Lines[i]);

        closeFile(t);
     end;
end;

end.

