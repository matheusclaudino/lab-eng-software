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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


end.
