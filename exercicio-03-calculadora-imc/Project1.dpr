program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {frmPrincipal},
  Unit5 in 'Unit5.pas' {frmCalculadoraDinamica};

//Unit2 in 'Unit2.pas' {frmBemVindo},
  //Unit3 in 'Unit3.pas' {frmCalculadora},
  //Unit4 in 'Unit4.pas' {frmImc};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmCalculadoraDinamica, frmCalculadoraDinamica);
  Application.Run;
end.
