unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg;

type
  TForm5 = class(TForm)
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Image1: TImage;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}
  uses unit1,unit2,unit3,unit4,unit6,unit7,unit8;
procedure TForm5.FormShow(Sender: TObject);
begin
Form3.ADOTable1.active:=True;
Form2.ADOTable1.active:=True;
form8.showmodal;

end;

procedure TForm5.SpeedButton1Click(Sender: TObject);
begin

    form1.ShowModal;
   
end;

procedure TForm5.SpeedButton2Click(Sender: TObject);
begin

      application.Terminate;
end;

end.
