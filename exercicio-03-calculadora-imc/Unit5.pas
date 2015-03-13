unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfrmCalculadoraDinamica = class(TForm)
    eVisor: TEdit;
    pCalculadora: TPanel;
    procedure FormShow(Sender: TObject);
    procedure clickDinamico(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCalculadoraDinamica: TfrmCalculadoraDinamica;
  v1: real;
  v2: real;
  funcionalidade: integer;

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
  v1:= 0;
  v2:= 0;

  for i:= 0 to 15 do
  begin
    b:= TButton.Create(pCalculadora);
    b.Parent:= pCalculadora;
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
var
  soma: real;
begin
  try
    if ((TButton(Sender).Caption = '0') OR (TButton(Sender).Caption = '1') OR (TButton(Sender).Caption = '2') OR (TButton(Sender).Caption = '3')
      OR (TButton(Sender).Caption = '4') OR (TButton(Sender).Caption = '5') OR (TButton(Sender).Caption = '6')
      OR (TButton(Sender).Caption = '7') OR (TButton(Sender).Caption = '8') OR (TButton(Sender).Caption = '9') ) then
      begin
        eVisor.Text := eVisor.Text + (Sender as TButton).Caption;
      end;

    if (TButton(Sender).Caption = '+' ) then
      begin
        v1:= StrToFloat(eVisor.Text);
        eVisor.Text:= '';
        funcionalidade:= 1;
      end;

    if (TButton(Sender).Caption = '-') then
      begin
        v1:= StrToFloat(eVisor.Text);
        eVisor.Text:= '';
        funcionalidade:= 2;
      end;

    if (TButton(Sender).Caption = '*') then
      begin
        v1:= StrToFloat(eVisor.Text);
        eVisor.Text:= '';
        funcionalidade:= 3;
      end;

    if (TButton(Sender).Caption = '/') then
      begin
        v1:= StrToFloat(eVisor.Text);
        eVisor.Text:= '';
        funcionalidade:= 4;
      end;

    if (TButton(Sender).Caption = 'C' ) then
      begin
        eVisor.Text:= '';
      end;

    if (TButton(Sender).Caption = '=' ) then
      begin
        v2:= StrToFloat(eVisor.Text);
        case (funcionalidade) of
        1:
          begin
            soma:= (v1+v2);
            eVisor.text:=FloatToStr(soma);
          end;
        2:
          begin
            soma:= (v1-v2);
            eVisor.text:=FloatToStr(soma);
          end;
        3:
          begin
            soma:= (v1*v2);
            eVisor.text:=FloatToStr(soma);
          end;
        4:
          begin
            soma:= (v1/v2);
            eVisor.text:=FloatToStr(soma);
          end;
        end;//fim case
      end;//fim if
  except
    on E: Exception do
      begin
        raise;
      end;
  end;//fim try
end;

end.
