unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfrmCalculadoraDinamica = class(TForm)
    procedure FormShow(Sender: TObject);
    procedure clickDinamico(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCalculadoraDinamica: TfrmCalculadoraDinamica;

implementation

{$R *.dfm}

procedure TfrmCalculadoraDinamica.FormShow(Sender: TObject);
var
  h, v, i, j: Integer;
  b: TButton;
begin
  h:= 5;
  v:= 5;
  j:= 1;

  for i:= 0 to 15 do
  begin
    b:= TButton.Create(frmCalculadoraDinamica);
    b.Parent:= frmCalculadoraDinamica;
    b.Top:= v;
    b.Left:= h;
    if(i < 10) then
      b.Caption:= IntToStr(i);

    if(i = 10) then
      b.Caption:= '=';

    if(i = 11) then
      b.Caption:= 'C';

    if(i = 12) then
      b.Caption:= '+';

    if(i = 13) then
      b.Caption:= '-';

    if(i = 14) then
      b.Caption:= '*';

    if(i = 15) then
      b.Caption:= '/';




    b.OnClick:= clickDinamico;
    h:= b.Width + h + 5;
    Inc(j);

    if (j = 4) then
    begin
      h:= 5;
      v:= v + b.Height + 5;
      j:= 1;
    end;
  end;
end;

procedure TfrmCalculadoraDinamica.clickDinamico(Sender: TObject);
begin
  if (TButton(Sender).Caption = '1') then
    ShowMessage('1');
  if (TButton(Sender).Caption = '2') then
    ShowMessage('2');
end;

end.
