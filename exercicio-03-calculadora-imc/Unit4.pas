unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls;

type
  TfrmImc = class(TForm)
    Panel1: TPanel;
    LabelPeso: TLabel;
    eNome: TEdit;
    Label1: TLabel;
    eAltura: TEdit;
    sbCalcular: TSpeedButton;
    Label2: TLabel;
    eImc: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmImc: TfrmImc;

implementation

{$R *.dfm}

end.
