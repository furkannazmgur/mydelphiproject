unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.Buttons, Data.DB, Data.Win.ADODB, Vcl.WinXPickers, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, IdBaseComponent, IdDateTimeStamp,
  Vcl.ComCtrls;

type
  TForm2 = class(TForm)
    Image1: TImage;
    SpeedButton1: TSpeedButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    SpeedButton2: TSpeedButton;
    Panel4: TPanel;
    DateTimePicker1: TDateTimePicker;
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);

    procedure DateTimePicker1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}
   uses unit1,unit3,unit5,unit4,unit6,unit7;
procedure TForm2.Button1Click(Sender: TObject);
begin
form1.Show;
form2.Close;
end;



procedure TForm2.DateTimePicker1Change(Sender: TObject);
begin
DBEdit3.Text := FormatDateTime('dd.mm.yyyy', DateTimePicker1.Date);
end;

procedure TForm2.SpeedButton1Click(Sender: TObject);
begin
         form1.Close;
         form2.Close;
         form6.Show;
end;

procedure TForm2.SpeedButton2Click(Sender: TObject);
begin

  if (DBEdit1.Text <> '') and (DBEdit2.Text <> '') and (DBEdit3.Text <> '') then
  begin
  ADOTable1.Post;

    ADOTable1.Close;
    ADOTable1.Open;
          dbedit1.Clear;
   dbedit2.Clear;
    ShowMessage('�ro Bekleme Alan�na Eklendi.');

  end
  else
  begin
     dbedit1.Clear;
   dbedit2.Clear;
    ShowMessage('Her �� alan da doldurulmal�d�r.');
  end;
  ADOTable1.First;
  repeat

      if (VarIsNull(ADOTable1.FieldByName('firma').Value) or (ADOTable1.FieldByName('firma').AsString = '')) or
         (VarIsNull(ADOTable1.FieldByName('motor').Value) or (ADOTable1.FieldByName('motor').AsString = '')) or
         (VarIsNull(ADOTable1.FieldByName('giris_tarihi').Value) or (ADOTable1.FieldByName('giris_tarihi').AsDateTime = 0)) then
      begin

        ADOTable1.Delete;
      end
      else
      begin
        ADOTable1.Next;
      end;
    until (ADOTable1.Eof);
     ADOTable1.Insert;
     dbedit1.Clear;
   dbedit2.Clear;



  end;



end.
