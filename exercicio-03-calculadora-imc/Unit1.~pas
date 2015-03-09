unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, AppEvnts;

type
  EExcecoes = class(Exception);
  TfrmPrincipal = class(TForm)
    Panel1: TPanel;
    sbCalculadora: TSpeedButton;
    sbImc: TSpeedButton;
    mLog: TMemo;
    ApplicationEvents1: TApplicationEvents;
    procedure FormShow(Sender: TObject);
    procedure sbCalculadoraClick(Sender: TObject);
    procedure sbImcClick(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

Uses Unit2, Unit3, Unit4;

{$R *.dfm}

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  frmBemVindo.Show;
end;

procedure TfrmPrincipal.sbCalculadoraClick(Sender: TObject);
begin
  frmCalculadora.Show;
end;

procedure TfrmPrincipal.sbImcClick(Sender: TObject);
begin
  frmImc.Show;
end;

procedure TfrmPrincipal.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
begin
  if (E is EDivByZero) then
      ShowMessage('Divisão por zero de número inteiro');
  if (E is EZeroDivide) then
      ShowMessage('Divisão por zero de número de ponto flutuante');
end;

end.
