unit Unit1; 

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Grids;

type

  { TForm1 }
  TForm1 = class(TForm)
    Button2: TButton;
    Button3: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    StringGrid1: TStringGrid;
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
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



procedure TForm1.Edit1Change(Sender: TObject);
var row, col, i : integer;
begin
     row := strToInt(Edit1.text);
     col := 7;

     StringGrid1.colCount := col;
     StringGrid1.rowCount := row + 2;

     StringGrid1.cells[0, 0] := '№ п/п';
     StringGrid1.cells[1, 0] := 'Фамилия';
     StringGrid1.cells[2, 0] := 'Информатика';
     StringGrid1.cells[3, 0] := 'Программирование';
     StringGrid1.cells[4, 0] := 'Мат. Анализ';
     StringGrid1.cells[5, 0] := 'Лин. Алгебра';
     StringGrid1.cells[6, 0] := 'Сред. балл';

     for i := 1 to row + 1 do
         if i = row + 1 then
            StringGrid1.cells[0, i] := 'Сред. балл'
         else StringGrid1.cells[0, i] := intToStr(i);


end;



procedure TForm1.Button2Click(Sender: TObject);
var i, j, row, col : integer;
    sum : real;
begin
     row := strToInt(Edit1.text);
     col := 7;

     for i := 1 to row do begin
       for j := 2 to 5 do
           sum := sum + strToInt(StringGrid1.cells[j, i]);
       StringGrid1.cells[6, i] := floatToStr(sum / 4);
       sum := 0;
     end;

     for j := 2 to 6 do begin
       for i := 1 to row do
           sum := sum + strTofloat(StringGrid1.cells[j, i]);
       StringGrid1.cells[j, row + 1] := floatToStr(sum / row);
       sum := 0;
     end;
end;


procedure TForm1.Button3Click(Sender: TObject);
begin
     Application.terminate;
end;

end.

