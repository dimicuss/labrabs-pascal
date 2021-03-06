unit Unit1; 

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls, ColorBox;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    ColorBox2: TColorBox;
    ColorBox3: TColorBox;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    RadioGroup1: TRadioGroup;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
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
var i : integer;
begin
     for i := 0 to Screen.Fonts.Count - 1 do
         comboBox1.Items.Add(Screen.Fonts[i]);
     comboBox1.ItemIndex := 0;
     comboBox2.ItemIndex := 0;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Application.terminate;
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
     Label5.font.style := [];
     Label5.font.name := comboBox1.items[comboBox1.itemIndex];
     Label5.font.size := strToInt(comboBox2.items[comboBox2.itemIndex]);
     Label5.font.color := colorBox2.selected;
     Label5.color := colorBox3.selected;
     case radioGroup1.itemIndex of
          0 : Label5.alignment := taCenter;
          1 : Label5.alignment := taLeftJustify;
          2 : Label5.alignment := taRightJustify;
     end;
     if checkBox1.checked and checkBox2.checked then
        Label5.font.style := [fsBold, fsItalic]
        else if checkBox2.checked then
             Label5.font.style := [fsItalic]
        else if checkBox1.checked then
             Label5.font.style := [fsBold];


end;

end.

