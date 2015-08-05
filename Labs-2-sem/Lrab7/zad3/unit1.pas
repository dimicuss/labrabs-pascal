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
    Memo: TMemo;
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

  arrType = array[1..3] of array[1..2] of real;

var
  Form1: TForm1; 

implementation

{$R *.lfm}



{ TForm1 }

function getData() : arrType;
var arr  : arrType;
    i, j : integer;
begin
     for i := 1 to 3 do
         for j := 1 to 2 do
             arr[i, j] := strToFloat(inputBox('Площадь треугольника',
                                              'Введите число', ''));
     getData := arr;
end;

procedure TForm1.FormCreate(Sender: TObject);
var arr : arrType;
    i, j, buttonSelect : integer;
    a, b, c, d, p, S : real;
begin
     arr := getData();

     a := sqrt(((arr[1,1] - arr[2,1]) * (arr[1,1] - arr[2,1])) +
               ((arr[1,2] - arr[2,2]) * (arr[1,2] - arr[2,2])));

     b := sqrt(((arr[2,1] - arr[3,1]) * (arr[2,1] - arr[3,1])) +
               ((arr[2,2] - arr[3,2]) * (arr[2,2] - arr[3,2])));

     c := sqrt(((arr[3,1] - arr[1,1]) * (arr[3,1] - arr[1,1])) +
               ((arr[3,2] - arr[1,2]) * (arr[3,2] - arr[1,2])));

     p := (a + b + c) / 2;

     S := sqrt(p * (p - a) * (p - b) * (p - c));


     if S = 0      {((a < b+c) and (b < a+c) and (c < a+b))} then begin
        buttonSelect := MessageDlg('Такого треугольника не существует. Повторить ввод?',
                                   mtError, mbYesNo, 0);
        if buttonSelect = mrYes then FormCreate(Self)
        else Halt();
     end;

     p := (a + b + c) / 2;

     S := sqrt(p * (p - a) * (p - b) * (p - c));

     Memo.Lines.add('Координаты вершин:');

     for i := 1 to 3 do
         for j := 1 to 2 do
             if (j = 1) then Memo.Lines.add('x' + intToStr(i) + '=' + floatToStr(arr[i , j]))
             else Memo.Lines.add('y' + intToStr(i) + '=' + floatToStr(arr[i, j]));

     Memo.Lines.add('Стороны треугольника:');
     Memo.Lines.add('a=' + floatToStrF(a, ffFixed, 1, 2));
     Memo.Lines.add('b=' + floatToStrF(b, ffFixed, 1, 2));
     Memo.Lines.add('c=' + floatToStrF(c, ffFixed, 1, 2));
     Memo.Lines.add('Площадь треугольника=' + floatToStr(S));


end;

procedure TForm1.Button2Click(Sender: TObject);
begin
     Application.terminate;
end;

end.

