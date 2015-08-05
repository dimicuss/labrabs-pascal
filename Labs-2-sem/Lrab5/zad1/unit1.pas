unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Grids;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Memo1: TMemo;
    StringGrid1: TStringGrid;
    StringGrid2: TStringGrid;
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



procedure TForm1.Button2Click(Sender: TObject);
begin
  Application.terminate;
end;

procedure TForm1.Button1Click(Sender: TObject);
var i, j, col, row : integer;
    str : string;

begin
     randomize;
     col := strToInt(Edit1.text);
     row := strToInt(Edit2.text);
     StringGrid1.colCount := col + 1;
     StringGrid1.rowCount := row + 1;

     for i := 0 to col do
         StringGrid1.cells[i, 0] := intToStr(i);

     for i := 0 to row do
         StringGrid1.cells[0, i] := intToStr(i);

     for j := 1 to row do
         for i := 1 to col do
             StringGrid1.cells[i, j] := floatToStr(random(10)-1+random(10)*0.01);

     {-------------------------------------------------------------------------}

     StringGrid2.colCount := row + 1;
     StringGrid2.rowCount := col + 1;

     for i := 0 to row do
         StringGrid2.cells[i, 0] := intToStr(i);

     for i := 0 to col do
         StringGrid2.cells[0, i] := intToStr(i);

     for j := 1 to col do
         for i := 1 to row do
             StringGrid2.cells[i, j] := StringGrid1.cells[j, i];

     {-------------------------------------------------------------------------}
     {-------------------------------------------------------------------------}

     Memo1.lines.clear;
     Memo1.lines.add('Исходная матрица');
     Memo1.lines.add('');

     for j := 1 to row do begin
         str := '';
         for i := 1 to col do
             str := str +  StringGrid1.cells[i, j] + '  ';
         Memo1.lines.add(str);
     end;

     {-------------------------------------------------------------------------}
     Memo1.lines.add('');
     Memo1.lines.add('Транспонированная матрица');
     Memo1.lines.add('');

     for j := 1 to row do begin
         str := '';
         for i := 1 to col do
             str := str +  StringGrid2.cells[i, j] + '  ';
         Memo1.lines.add(str);
     end;


end;

end.

