unit Unit8;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.jpeg;

type
  TForm8 = class(TForm)
    Timer1: TTimer;
    Image1: TImage;
    Panel1: TPanel;
    Panel2: TPanel;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

procedure TForm8.Timer1Timer(Sender: TObject);
begin
timer1.Enabled:=false;
close;
end;

end.
