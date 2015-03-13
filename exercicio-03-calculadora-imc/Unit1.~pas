unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, AppEvnts;

type
  EExcecoes = class(Exception);
  TfrmPrincipal = class(TForm)
    pPrincipal: TPanel;
    sbCalculadora: TSpeedButton;
    sbImc: TSpeedButton;
    mLog: TMemo;
    ApplicationEvents1: TApplicationEvents;
    SpeedButton1: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure sbCalculadoraClick(Sender: TObject);
    procedure sbImcClick(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
    procedure Dinamico(F: TFormClass; F2: TForm);
    procedure ApplicationEvents1Message(var Msg: tagMSG;
      var Handled: Boolean);
    procedure mLogExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;
  usuario: String;

implementation

Uses Unit2, Unit3, Unit4, Unit5;

{$R *.dfm}

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  //Dinamico(TfrmBemVindo, frmBemVindo);
  usuario:= InputBox('Bem Vindo!', 'Digite seu nome', '');
  mLog.Lines.Add(usuario + ' logou no sistema');
end;

procedure TfrmPrincipal.sbCalculadoraClick(Sender: TObject);
begin
  Dinamico(TfrmCalculadora, frmCalculadora);
end;

procedure TfrmPrincipal.sbImcClick(Sender: TObject);
begin
  Dinamico(TfrmImc, frmImc);
end;

procedure TfrmPrincipal.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
begin
  if (E is EDivByZero) then
      ShowMessage('Erro de divisão por ZERO');//inteiro

  if (E is EZeroDivide) then
      ShowMessage('Erro de divisão por ZERO');//real

  if (E is EInvalidOp) then
      ShowMessage('Operação incorreta de ponto flutuante');

  if (E is EConvertError) then
      ShowMessage('Digite um número');

  if (E is EAccessViolation) then
      ShowMessage('Valor null');

end;

procedure TfrmPrincipal.Dinamico(F: TFormClass; F2: TForm);
begin
  Application.CreateForm(F,F2);
  try
    F2.ShowModal;
  finally
    F2.Free;
  end;
end;


procedure TfrmPrincipal.ApplicationEvents1Message(var Msg: tagMSG;
  var Handled: Boolean);
var
  Componente: TWinControl;
begin

  Case Msg.message of
	  WM_LBUTTONUP:
	  begin
	    Componente := FindVCLWindow(Mouse.CursorPos);
          mLog.Lines.Add(usuario + ' interagiu com o ' + Componente.Name );
		    //Showmessage('Classe: ' + Componente.ClassName + ' - Nome: ' + Componente.Name  );
	  end;
  end;//fim case
end;

procedure TfrmPrincipal.mLogExit(Sender: TObject);
begin
  mLog.Lines.SaveToFile('c:\log.txt');
end;

procedure TfrmPrincipal.SpeedButton1Click(Sender: TObject);
begin
  //Dinamico(TfrmCalculadoraDinamica, frmCalculadoraDinamica);
  Application.CreateForm(TfrmCalculadoraDinamica, frmCalculadoraDinamica);
  frmCalculadoraDinamica.ShowModal;
end;

end.
