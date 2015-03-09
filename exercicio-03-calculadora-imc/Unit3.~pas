unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls;

type
  TfrmCalculadora = class(TForm)
    Panel1: TPanel;
    eVisor: TEdit;
    sbUm: TSpeedButton;
    sbDois: TSpeedButton;
    sbTres: TSpeedButton;
    sbQuartro: TSpeedButton;
    sbCinco: TSpeedButton;
    sbSeis: TSpeedButton;
    sbSete: TSpeedButton;
    sbOito: TSpeedButton;
    sbNove: TSpeedButton;
    sbZero: TSpeedButton;
    sbLimpar: TSpeedButton;
    sbMaisMenos: TSpeedButton;
    sbMais: TSpeedButton;
    sbVirgula: TSpeedButton;
    sbMenos: TSpeedButton;
    sbDividir: TSpeedButton;
    sbMultiplicar: TSpeedButton;
    sbIgualdade: TSpeedButton;
    procedure sbUmClick(Sender: TObject);
    procedure sbMaisClick(Sender: TObject);
    procedure sbMenosClick(Sender: TObject);
    procedure sbDividirClick(Sender: TObject);
    procedure sbMultiplicarClick(Sender: TObject);
    procedure sbMaisMenosClick(Sender: TObject);
    procedure sbVirgulaClick(Sender: TObject);
    procedure sbLimparClick(Sender: TObject);
    procedure sbIgualdadeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCalculadora: TfrmCalculadora;
  v1: real;
  v2: real;
  funcionalidade: integer;

implementation

{$R *.dfm}

procedure TfrmCalculadora.sbUmClick(Sender: TObject);
begin
  eVisor.Text := eVisor.Text + (Sender as TSpeedButton).Caption;
end;

procedure TfrmCalculadora.sbMaisClick(Sender: TObject);
begin
  v1:= StrToFloat(eVisor.Text);
  eVisor.Text:= '';
  funcionalidade:= 1;
end;

procedure TfrmCalculadora.sbMenosClick(Sender: TObject);
begin
v1:= StrToFloat(eVisor.Text);
  eVisor.Text:= '';
  funcionalidade:= 2;
end;

procedure TfrmCalculadora.sbDividirClick(Sender: TObject);
begin
  v1:= StrToFloat(eVisor.Text);
  eVisor.Text:= '';
  funcionalidade:= 3;
end;

procedure TfrmCalculadora.sbMultiplicarClick(Sender: TObject);
begin
  v1:= StrToFloat(eVisor.Text);
  eVisor.Text:= '';
  funcionalidade:= 4;
end;

procedure TfrmCalculadora.sbMaisMenosClick(Sender: TObject);
begin
  eVisor.Text:= '-' + eVisor.Text;
end;

procedure TfrmCalculadora.sbVirgulaClick(Sender: TObject);
begin
  eVisor.Text:= eVisor.Text + ',';
end;

procedure TfrmCalculadora.sbLimparClick(Sender: TObject);
begin
  eVisor.Text:= '';
end;

procedure TfrmCalculadora.sbIgualdadeClick(Sender: TObject);
var
  soma: real;
begin
  v1:= StrToFloat(eVisor.Text);
  v2:=StrToFloat(eVisor.Text);
  case (funcionalidade) of
    1:
    begin
      soma:=v1+v2;
      eVisor.text:=FloatToStr(soma);
    end;
    2:
    begin
      soma:=v1-v2;
      eVisor.text:=FloatToStr(soma);
    end;
    3:
    begin
      soma:=v1*v2;
      eVisor.text:=FloatToStr(soma);
    end;
    4:
    begin
      if(v2<>0)then
        begin
          soma:=v1/v2;
          eVisor.text:=FloatToStr(soma);
        end
      else
        begin
          SHowMessage('Divisão por zero!!');
          eVisor.Text:='ERRO';
        end;
      end;
    end;
end;

procedure TfrmCalculadora.FormShow(Sender: TObject);
begin
  v1:= 0;
  v2:= 0;
end;

end.
