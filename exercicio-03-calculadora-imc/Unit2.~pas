unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls;

type
  TfrmBemVindo = class(TForm)
    pBemVindo: TPanel;
    lNome: TLabel;
    eNome: TEdit;
    sbConfirmarNome: TSpeedButton;
    procedure sbConfirmarNomeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBemVindo: TfrmBemVindo;

implementation

Uses Unit1;

{$R *.dfm}

procedure TfrmBemVindo.sbConfirmarNomeClick(Sender: TObject);
begin
  frmPrincipal.mLog.Lines.Add('Usuário: ' + eNome.Text);
end;

end.
