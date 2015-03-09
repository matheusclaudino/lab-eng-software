unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TfrmPrincipal = class(TForm)
    Panel1: TPanel;
    sbCalculadora: TSpeedButton;
    sbImc: TSpeedButton;
    mLog: TMemo;
    procedure FormShow(Sender: TObject);
    procedure sbCalculadoraClick(Sender: TObject);
    procedure sbImcClick(Sender: TObject);
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

end.
