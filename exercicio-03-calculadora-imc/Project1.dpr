program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {frmPrincipal},
  Unit2 in 'Unit2.pas' {frmBemVindo},
  Unit3 in 'Unit3.pas' {frmCalculadora};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmBemVindo, frmBemVindo);
  Application.CreateForm(TfrmCalculadora, frmCalculadora);
  Application.Run;
end.