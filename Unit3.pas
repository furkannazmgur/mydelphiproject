unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Buttons, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Data.DB, Data.Win.ADODB,
  Vcl.Grids, Vcl.DBGrids;

type
  TForm3 = class(TForm)
    Image1: TImage;
    SpeedButton1: TSpeedButton;
    DBEdit1: TDBEdit;
    Panel1: TPanel;
    Panel2: TPanel;
    DataSource1: TDataSource;
    ADOTable1: TADOTable;
    SpeedButton2: TSpeedButton;
    DBEdit2: TDBEdit;
    DBGrid1: TDBGrid;
    SpeedButton3: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}
   uses unit1,unit2,unit5,unit6,unit7;
procedure TForm3.SpeedButton1Click(Sender: TObject);
begin
close;
form5.Show;
end;

procedure TForm3.SpeedButton2Click(Sender: TObject);
begin


  if (DBEdit1.Text <> '') and (DBEdit2.Text <> '') then
  begin

    ADOTable1.Post;
         dbedit1.Clear;
   dbedit2.Clear;
    ShowMessage('Kayýt baþarýyla eklendi.');
  end
  else
  begin
     dbedit1.Clear;
   dbedit2.Clear;
    ShowMessage('Her iki alan da doldurulmalýdýr.');
  end;

 ADOTable1.First;

    repeat

      if (VarIsNull(ADOTable1.FieldByName('kullanici_adi').Value) or (ADOTable1.FieldByName('kullanici_adi').AsString = '')) or
         (VarIsNull(ADOTable1.FieldByName('sifre').Value) or (ADOTable1.FieldByName('sifre').AsString = '')) then
      begin

        ADOTable1.Delete;
      end
      else
      begin
        ADOTable1.Next;
      end;
    until ADOTable1.Eof;

     ADOTable1.Insert;
      DBEdit1.Clear;
    DBEdit2.Clear;

end;

procedure TForm3.SpeedButton3Click(Sender: TObject);
begin
form3.Close;
form1.ShowModal;
end;

end.
