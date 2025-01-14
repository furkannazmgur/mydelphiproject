unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons, Vcl.Mask, Data.Win.ADODB, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Phys.MSAcc, FireDAC.Phys.MSAccDef,
  FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys,
  FireDAC.VCLUI.Wait, Vcl.ComCtrls;

type
  TForm4 = class(TForm)
    Image1: TImage;
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}
uses unit1, unit2, unit3, unit6, unit5,unit7;

procedure TForm4.Button1Click(Sender: TObject);
begin
form7.Show;
end;



procedure TForm4.FormShow(Sender: TObject);
begin
   form2.AdoTable1.Filter := 'alindi = False';
  form2.AdoTable1.Filtered := True;
end;

procedure TForm4.SpeedButton10Click(Sender: TObject);
begin
Form2.ADOTable1.edit;
      Form2.ADOTable1.post;

end;

procedure TForm4.SpeedButton11Click(Sender: TObject);
begin
Form2.ADOTable1.cancel;
end;

procedure TForm4.SpeedButton2Click(Sender: TObject);
var
  mesaj: Integer;
begin
  mesaj := MessageDlg('Emin Misin? -EVET- Dersen Biten Sayfas�na Gidecek!', mtConfirmation, [mbYes, mbNo], 0);
  if mesaj = mrYes then
  begin
    form2.AdoTable1.Edit;
    form2.AdoTable1.FieldByName('alindi').AsBoolean := True;
    form2.AdoTable1.Post;
  end
  else
  begin
    form2.AdoTable1.Edit;
    form2.AdoTable1.FieldByName('alindi').AsBoolean := False;
    form2.AdoTable1.Post;
  end;
end;

procedure TForm4.SpeedButton3Click(Sender: TObject);
begin
DBEdit1.Visible := True;
  DBEdit2.Visible := True;
  DBEdit3.Visible := True;
  DBEdit1.ReadOnly := False;
  DBEdit2.ReadOnly := False;
  DBEdit3.ReadOnly := False;
  SpeedButton3.Visible := False;
  Form2.ADOTable1.Edit;
  SpeedButton5.Visible:=True;
  SpeedButton6.Visible:=True;
  SpeedButton7.Visible:=True;
  SpeedButton8.Visible:=True;
  SpeedButton9.Visible:=True;
  SpeedButton10.Visible:=True;
  SpeedButton11.Visible:=True;
  Panel1.Visible:=True;
  Panel2.Visible:=True;
  Panel3.Visible:=True;
end;


procedure TForm4.SpeedButton1Click(Sender: TObject);
begin
      Close;
  Form6.Show;
end;

procedure TForm4.SpeedButton5Click(Sender: TObject);
begin
Form2.ADOTable1.First;
end;

procedure TForm4.SpeedButton6Click(Sender: TObject);
begin
Form2.ADOTable1.Last;
end;

procedure TForm4.SpeedButton7Click(Sender: TObject);
begin
   Form2.ADOTable1.prior;
end;

procedure TForm4.SpeedButton8Click(Sender: TObject);
begin
Form2.ADOTable1.Next;
end;

procedure TForm4.SpeedButton9Click(Sender: TObject);
var
mesaj: Integer;
begin


  mesaj := MessageDlg('Emin Misin? -EVET- Dersen Veri Silinecek!', mtConfirmation, [mbYes, mbNo], 0);
  if mesaj = mrYes then
  begin
      Form2.ADOTable1.Delete;
  end;
end;

end.

