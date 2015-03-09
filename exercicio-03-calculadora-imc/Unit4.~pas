unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls;

type
  TfrmImc = class(TForm)
    Panel1: TPanel;
    LabelPeso: TLabel;
    ePeso: TEdit;
    Label1: TLabel;
    eAltura: TEdit;
    sbCalcular: TSpeedButton;
    Label2: TLabel;
    eImc: TEdit;
    procedure sbCalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmImc: TfrmImc;
  peso: real;
  altura: real;

implementation

{$R *.dfm}

procedure TfrmImc.sbCalcularClick(Sender: TObject);
var
  imc: real;
begin
  try
    peso:= StrToFloat(ePeso.Text);
    altura:= StrToFloat(eAltura.Text);
    imc:= (peso / (altura * altura));
    eImc.Text:= FloatToStr(imc);
  except
    on E: Exception do
      begin
        raise;
      end;
  end;
end;


end.
