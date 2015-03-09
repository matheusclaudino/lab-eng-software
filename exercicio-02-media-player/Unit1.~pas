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
    RichEdit1: TRichEdit;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
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
  ProgressBar1.Max := MediaPlayer1.Length;
  Timer3.Enabled:= True;
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
          SBPlay.OnClick(Sender);
        end
      else
        begin
          ListBox1.ItemIndex:= 0;
          SBPlay.OnClick(Sender);
        end;
end;

procedure TForm1.SBPriorClick(Sender: TObject);
begin
  if (ListBox1.ItemIndex > 0) then
    begin
      ListBox1.ItemIndex:= ListBox1.ItemIndex -1;
      SBPlay.OnClick(Sender);
    end
  else
    begin
      ListBox1.ItemIndex:= ListBox1.Items.Count -1;
      SBPlay.OnClick(Sender);
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
      ShowMessage('Não tem Música na PlayList :(  Por favor insira uma nova música!');
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

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ListBox1.Items.SaveToFile('c:\musicas.txt');
  if ProgressBar1.Position > 0 then
    begin
      RichEdit1.Lines.Clear;
      RichEdit1.Lines.Add(MediaPlayer1.FileName);
      RichEdit1.Lines.Add(IntToStr(ProgressBar1.Position));
      RichEdit1.Lines.SaveToFile('c:\tocando.txt');
    end
  else
    begin
      RichEdit1.Lines.Clear;
      RichEdit1.Lines.SaveToFile('c:\tocando.txt');
    end
end;

procedure TForm1.FormShow(Sender: TObject);
begin
   ShowMessage('Bem Vindo ao Claudino Player!!!');

   ListBox1.Items.LoadFromFile('c:\musicas.txt');
   RichEdit1.Lines.LoadFromFile('c:\tocando.txt');

   if(RichEdit1.Lines.Strings[0] <> '') then
    begin
      if ListBox1.Items.Count > 0 then
        begin
          {MediaPlayer1.FileName:= RichEdit1.Lines.Strings[0];
          StatusBar1.SimpleText:= ExtractFileName(MediaPlayer1.FileName);
          ShowMessage(ExtractFileName(MediaPlayer1.FileName));
          MediaPlayer1.Open;
          MediaPlayer1.Play;
          ProgressBar1.Max := StrToInt(RichEdit1.Lines.Strings[1]);
          Timer3.Enabled:= True;}//achar o arquivo para verificar o conteúdo lógica correta
        end;
    end;
end;

procedure TForm1.Timer3Timer(Sender: TObject);
begin
  if(ListBox1.Items.Count > 0)then
  begin
  ProgressBar1.Position := MediaPlayer1.Position;
    if(ProgressBar1.Position = MediaPlayer1.Length) then
    begin
      Timer3.Enabled:= False;
      SBNext.OnClick(Sender);
    end;
  end;
end;

end.
