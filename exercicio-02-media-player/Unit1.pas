unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, MPlayer, Menus, Buttons, ComCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    PButtons: TPanel;
    ListBox1: TListBox;
    PPlayer: TPanel;
    ProgressBar1: TProgressBar;
    StatusBar1: TStatusBar;
    SBPlay: TSpeedButton;
    SBPause: TSpeedButton;
    SBStop: TSpeedButton;
    SBNext: TSpeedButton;
    SBPrior: TSpeedButton;
    SBCima: TSpeedButton;
    SBBaixo: TSpeedButton;
    SBDelete: TSpeedButton;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Abrir1: TMenuItem;
    Opes1: TMenuItem;
    RepetirMsica1: TMenuItem;
    Ativar1: TMenuItem;
    Desativar1: TMenuItem;
    MediaPlayer1: TMediaPlayer;
    OpenDialog1: TOpenDialog;
    Timer1: TTimer;
    Timer2: TTimer;
    Timer3: TTimer;
    procedure Abrir1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure TForm1.Abrir1Click(Sender: TObject);
var
  i:integer;
begin
  if(OpenDialog1.Execute) then
  begin
    for i:= 0 to OpenDialog1.Files.Count -1 do
    begin
      ListBox1.Items.Add(OpenDialog1.FileName);
      ListBox1.ItemIndex:= 0;
      MediaPlayer1.FileName:= ListBox1.Items.Strings[ListBox1.ItemIndex];
      //MediaPlayer1.Open;
      ProgressBar1.Max := MediaPlayer1.Length;
      Timer1.Enabled := True;
    end;
  end;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  ProgressBar1.Position:= MediaPlayer1.Position;
end;

end.
