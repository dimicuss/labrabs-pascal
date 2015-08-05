unit Unit1; 

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  TAGraph, TASeries, types, TACustomSeries, TAStyles, TASources;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button2: TButton;
    Button3: TButton;
    Chart1: TChart;
    SinSeries: TLineSeries;
    CosSeries: TLineSeries;
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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


procedure TForm1.FormCreate(Sender: TObject);
var
  i: double;
begin
  i := -360;
  while i <= 360 do begin
    SinSeries.AddXY(i, sin(i * Pi()/180));
    CosSeries.AddXY(i, cos(i * Pi()/180));
    i := i + 1;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Chart1.SaveToBitmapFile('/home/dimicuss/image.bmp');
  showMessage('Saved in /home/dimicuss/image.bmp');
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Application.terminate;
end;




end.

