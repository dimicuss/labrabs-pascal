unit Unit1; 

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    CheckB: TCheckBox;
    Memo: TMemo;
    OD: TOpenDialog;
    SD: TSaveDialog;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure CheckBChange(Sender: TObject);
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

procedure TForm1.CheckBChange(Sender: TObject);
begin
     if Checkb.checked then begin
        Memo.ReadOnly := False;
        Button2.Enabled := True;
        Button3.Enabled := True;

     end

     else begin
          Memo.ReadOnly := True;
          Button2.Enabled := False;
          Button3.Enabled := False;
     end;


end;

procedure TForm1.Button1Click(Sender: TObject);
var t : textFile;
    str : string;
    i : integer;
begin
     Memo.lines.clear;
     OD.Execute;
     assignFile(t, OD.filename);
     reset(t);

     while not eof(t) do
     begin
          readln(t, str);
          Memo.lines[i] := str;
          inc(i);
     end;

     closeFile(t);

end;

procedure TForm1.Button2Click(Sender: TObject);
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

procedure TForm1.Button3Click(Sender: TObject);
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

procedure TForm1.Button4Click(Sender: TObject);
begin
  Application.terminate;
end;

end.

