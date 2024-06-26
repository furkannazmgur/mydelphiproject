unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.Buttons;

type
  TForm6 = class(TForm)
    Image1: TImage;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton5: TSpeedButton;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}
 uses unit1,unit2,unit3,unit4,unit5,unit7;
procedure TForm6.SpeedButton1Click(Sender: TObject);
begin
form4.DBEdit1.Visible := False;
  form4.DBEdit2.Visible := False;
  form4.DBEdit3.Visible := false;
  form4.DBEdit1.ReadOnly := true;
  form4.DBEdit2.ReadOnly := true;
  form4.DBEdit3.ReadOnly := true;
  form4.SpeedButton3.Visible := true;

   form4.SpeedButton5.Visible:=false;
   form4.SpeedButton6.Visible:=false;
   form4.SpeedButton7.Visible:=false;
   form4.SpeedButton8.Visible:=false;
   form4.SpeedButton9.Visible:=false;
   form4.SpeedButton10.Visible:=false;
   form4.SpeedButton11.Visible:=false;
   form4.Panel1.Visible:=false;
  form4.Panel2.Visible:=false;
  form4.Panel3.Visible:=false;
        form6.hide;
        form4.ShowModal;
end;

procedure TForm6.SpeedButton2Click(Sender: TObject);
begin
form2.ADOTable1.Insert;
form6.hide;
form2.ShowModal;

end;

procedure TForm6.SpeedButton3Click(Sender: TObject);
begin
form6.hide;
form7.ShowModal;
end;



procedure TForm6.SpeedButton5Click(Sender: TObject);
begin
       form6.close;
form1.Close;
form5.Show;
end;

end.
