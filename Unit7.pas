unit Unit7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Imaging.jpeg;

type
  TForm7 = class(TForm)
    DBGrid1: TDBGrid;
    Image1: TImage;
    SpeedButton5: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;


    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}
  uses unit1,unit2,unit3,unit4,unit5,unit6;

procedure TForm7.FormShow(Sender: TObject);
begin
  form2.AdoTable1.Filter := 'alindi = True';
  form2.AdoTable1.Filtered := True;

end;



procedure TForm7.SpeedButton1Click(Sender: TObject);
begin
Form2.ADOTable1.First;
end;

procedure TForm7.SpeedButton2Click(Sender: TObject);
var
  mesaj: Integer;
begin
  mesaj := MessageDlg('Emin Misin? -EVET- Dersen Bekleyen Sayfasýna Gidecek!', mtConfirmation, [mbYes, mbNo], 0);
  if mesaj = mrYes then
  begin
    form2.AdoTable1.Edit;
    form2.AdoTable1.FieldByName('alindi').AsBoolean := false;
    form2.AdoTable1.Post;
  end
  else
  begin
    form2.AdoTable1.Edit;
    form2.AdoTable1.FieldByName('alindi').AsBoolean := true;
    form2.AdoTable1.Post;
  end;
end;

procedure TForm7.SpeedButton5Click(Sender: TObject);
begin
close;
form6.Show;
end;

procedure TForm7.SpeedButton6Click(Sender: TObject);
begin
Form2.ADOTable1.Last;
end;

procedure TForm7.SpeedButton7Click(Sender: TObject);
begin
 Form2.ADOTable1.prior;
end;

procedure TForm7.SpeedButton8Click(Sender: TObject);
begin
Form2.ADOTable1.Next;
end;

procedure TForm7.SpeedButton9Click(Sender: TObject);
var
mesaj: Integer;
begin


  mesaj := MessageDlg('Ýþlemi Bitti Mi? -EVET- Dersen Silinecek', mtConfirmation, [mbYes, mbNo], 0);
  if mesaj = mrYes then
  begin
      Form2.ADOTable1.Delete;
  end;
end;


end.
