unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Data.Win.ADODB, Vcl.ExtCtrls,
  Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.jpeg;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    Edit2: TEdit;
    Edit1: TEdit;
    Button1: TButton;
    CheckBox1: TCheckBox;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    Label3: TLabel;
    SpeedButton2: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton3: TSpeedButton;

    procedure Button1Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);

  private
    { Private declarations }
    FEdit2Text: string;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses unit2,unit3,unit5,unit6,unit7;

procedure TForm1.Button1Click(Sender: TObject);
begin
  ADOQuery1.SQL.Text := 'SELECT * FROM kullaniciler WHERE kullanici_adi = :username AND sifre = :password';
  ADOQuery1.Parameters.ParamByName('username').Value := Edit1.Text;
  ADOQuery1.Parameters.ParamByName('password').Value := Edit2.Text;
  ADOQuery1.Open;

  if not ADOQuery1.IsEmpty then
  begin

    form1.hide;
    Form6.ShowModal;
    form2.ADOTable1.Insert;
  end
  else
    ShowMessage('Hatal� Kullan�c� Ad� veya �ifre!');

  Edit1.Clear;
  Edit2.Clear;


end;

procedure TForm1.Button3Click(Sender: TObject);
begin
form5.show;
end;

procedure TForm1.Edit2Change(Sender: TObject);
begin


  if not CheckBox1.Checked then
    Edit2.PasswordChar := '*';
end;
procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
form5.Show;
form1.close;

end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
 Label3.Caption:=('Kullan�c� Ad�=fff // �ifre=aaa');
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
Form3.ADOTable1.active:=True;
Form3.ADOTable1.Insert;
form1.close;
form3.Show;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin

  if CheckBox1.Checked then
    Edit2.PasswordChar := #0
  else
    Edit2.PasswordChar := '*';
end;


end.

