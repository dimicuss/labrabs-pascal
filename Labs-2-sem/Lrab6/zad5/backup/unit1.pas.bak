unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Grids,
  StdCtrls, TAGraph, TASeries;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button2: TButton;
    Button3: TButton;
    Chart1: TChart;
    Bars: TBarSeries;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    SG: TStringGrid;
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

procedure TForm1.Button3Click(Sender: TObject);
begin
  Application.terminate;
end;

procedure TForm1.Button2Click(Sender: TObject);
var i : integer;
Colours: array[1..10] of TColor = (clRed, clYellow, clFuchsia, clGreen, clBlue,
                                   clMaroon, clOlive, clBlack, clGray, clAqua);
br : TbarSeries;
begin
  Bars.clear();
  for i := 1 to Sg.rowCount - 1 do begin
      Bars.AddXY(i, strToFloat(SG.cells[2, i]), SG.cells[2, i], Colours[i]);
  end;

end;

procedure TForm1.Edit1Change(Sender: TObject);
var i : integer;
begin
     SG.colCount := 3;
     Sg.rowCount := strToInt(Edit1.text) + 1;

     SG.cells[0, 0] := 'N п/п';
     SG.cells[1, 0] := 'Фамилия';
     SG.cells[2, 0] := 'Баллы';

     for i := 1 to SG.rowCount - 1 do
         SG.cells[0, i] := intToStr(i);
end;

end.

