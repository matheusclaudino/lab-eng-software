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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

Uses Unit2;

{$R *.dfm}

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  Form2.Show;
end;

end.
