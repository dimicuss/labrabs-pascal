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
    StringGrid1: TStringGrid;
    StringGrid2: TStringGrid;
    StringGrid3: TStringGrid;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
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
var i, j, col, row, sum : integer;
begin
     row := strToInt(Edit1.text);
     col := strToInt(Edit2.text);

     sum := 0;

     for i := 1 to row do begin
         for j := 1 to col do
             sum := sum + (strToInt(StringGrid1.cells[j, i]) *
                           strToInt(StringGrid2.cells[1, j]));
         StringGrid3.cells[1, i] := intToStr(sum);
         sum := 0;
     end;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
     Application.terminate;
end;

procedure TForm1.Edit1Change(Sender: TObject);
var i, row : integer;
begin
     row := strToInt(Edit1.text);
     StringGrid1.rowCount := row + 1;
     StringGrid3.rowCount := row + 1;
     StringGrid3.colCount := 2;

     StringGrid1.cells[0, 0] := 'Матрица A';

     for i := 1 to row do
         StringGrid1.cells[0, i] := intToStr(i);

     StringGrid3.cells[0, 0] := 'Вектор Y';
     StringGrid3.cells[1, 0] := '1';

      for i := 1 to row do
         StringGrid3.cells[0, i] := intToStr(i);


end;

procedure TForm1.Edit2Change(Sender: TObject);
var i, col : integer;
begin
     col := strToInt(Edit2.text);
     StringGrid1.colCount := col + 1;
     StringGrid2.colCount := 2;
     StringGrid2.rowCount := col + 1;

     StringGrid2.cells[0, 0] := 'Вектор B';

     for i := 1 to col do
         StringGrid2.cells[0, i] := intToStr(i);

     StringGrid2.cells[1, 0] := '1';

     for i := 1 to col do
         StringGrid1.cells[i, 0] := intToStr(i);

end;
end.

