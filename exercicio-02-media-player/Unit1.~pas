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
    procedure SBPlayClick(Sender: TObject);
    procedure SBPauseClick(Sender: TObject);
    procedure SBStopClick(Sender: TObject);
    procedure SBNextClick(Sender: TObject);
    procedure SBPriorClick(Sender: TObject);
    procedure SBCimaClick(Sender: TObject);
    procedure SBBaixoClick(Sender: TObject);
    procedure SBDeleteClick(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Ativar1Click(Sender: TObject);
    procedure Desativar1Click(Sender: TObject);
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
      MediaPlayer1.Open;
      ProgressBar1.Max := MediaPlayer1.Length;
      Timer1.Enabled := True;
    end;
  end;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  ProgressBar1.Position:= MediaPlayer1.Position;
end;

procedure TForm1.SBPlayClick(Sender: TObject);
begin
  MediaPlayer1.FileName:= ListBox1.Items.Strings[ListBox1.ItemIndex];
  StatusBar1.SimpleText:= ExtractFileName(MediaPlayer1.FileName);
  MediaPlayer1.Open;
  MediaPlayer1.Play;
end;

procedure TForm1.SBPauseClick(Sender: TObject);
begin
  MediaPlayer1.Pause;
end;

procedure TForm1.SBStopClick(Sender: TObject);
begin
  MediaPlayer1.FileName:= ListBox1.Items.Strings[ListBox1.ItemIndex];
  StatusBar1.SimpleText:= ExtractFileName(MediaPlayer1.FileName);
  MediaPlayer1.Open;
  MediaPlayer1.Stop;
end;

procedure TForm1.SBNextClick(Sender: TObject);
begin
  if (ListBox1.ItemIndex < ListBox1.Items.Count -1) then
        begin
          ListBox1.ItemIndex:= ListBox1.ItemIndex +1;
          MediaPlayer1.FileName:= ListBox1.Items.Strings[ListBox1.ItemIndex];
          StatusBar1.SimpleText:= ExtractFileName(MediaPlayer1.FileName);
          MediaPlayer1.Open;
          ProgressBar1.Max := MediaPlayer1.Length;
          MediaPlayer1.Play;
        end
      else
        begin
          ListBox1.ItemIndex:= 0;
          MediaPlayer1.FileName:= ListBox1.Items.Strings[ListBox1.ItemIndex];
          StatusBar1.SimpleText:= ExtractFileName(MediaPlayer1.FileName);
          MediaPlayer1.Open;
          ProgressBar1.Max := MediaPlayer1.Length;
          MediaPlayer1.Play;
        end;
end;

procedure TForm1.SBPriorClick(Sender: TObject);
begin
  if (ListBox1.ItemIndex > 0) then
    begin
      ListBox1.ItemIndex:= ListBox1.ItemIndex -1;
      MediaPlayer1.FileName:= ListBox1.Items.Strings[ListBox1.ItemIndex];
      StatusBar1.SimpleText:= ExtractFileName(MediaPlayer1.FileName);
      MediaPlayer1.Open;
      ProgressBar1.Max := MediaPlayer1.Length;
      MediaPlayer1.Play;
    end
  else
    begin
      ListBox1.ItemIndex:= ListBox1.Items.Count -1;
      MediaPlayer1.FileName:= ListBox1.Items.Strings[ListBox1.ItemIndex];
      StatusBar1.SimpleText:= ExtractFileName(MediaPlayer1.FileName);
      MediaPlayer1.Open;
      ProgressBar1.Max := MediaPlayer1.Length;
      MediaPlayer1.Play;
    end;
end;

procedure TForm1.SBCimaClick(Sender: TObject);
begin
  with ListBox1 do
    if ListBox1.ItemIndex > 0 then
    begin
      ListBox1.Items.Move(ListBox1.ItemIndex, (ListBox1.ItemIndex - 1));
      ListBox1.ItemIndex:= ListBox1.ItemIndex - 1;
    end;
end;

procedure TForm1.SBBaixoClick(Sender: TObject);
begin
  with ListBox1 do
  begin
    if ListBox1.ItemIndex <> -1 then
    begin
      if ListBox1.ItemIndex +1 < ListBox1.Items.Count then
      begin
        ListBox1.Items.Move(ListBox1.ItemIndex, (ListBox1.ItemIndex +1));
        ListBox1.ItemIndex:= ListBox1.ItemIndex +1;
      end;
    end;
  end;
end;

procedure TForm1.SBDeleteClick(Sender: TObject);
begin
  ListBox1.Items.Delete(ListBox1.ItemIndex);
  if((ListBox1.Items.Count = 0)) then
    begin
      ShowMessage('Não tem Música Na PlayList, Por favor Insira uma Nova!');
      MediaPlayer1.Close;
      Abrir1Click(Sender);
    end;
end;

procedure TForm1.Timer2Timer(Sender: TObject);
  var
  i:integer;
begin
  i:= 1;
  repeat
    MediaPlayer1.FileName:= ListBox1.Items.Strings[ListBox1.ItemIndex];
    MediaPlayer1.Play;
  until(i <> MediaPlayer1.Length);
end;

procedure TForm1.Ativar1Click(Sender: TObject);
begin
  Timer2.Enabled:= True;
end;

procedure TForm1.Desativar1Click(Sender: TObject);
begin
  Timer2.Enabled:= False;
end;

end.
