unit PlayerUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.MPlayer, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TPlayerForm = class(TForm)
    MediaPlayer: TMediaPlayer;
    FileNameButton: TButton;
    FileNameOpenDialog: TOpenDialog;
    VideoPanel: TPanel;
    procedure FileNameButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PlayerForm: TPlayerForm;

implementation

{$R *.dfm}

procedure TPlayerForm.FileNameButtonClick(Sender: TObject);
begin
  if FileNameOpenDialog.Execute then
    MediaPlayer.FileName:= FileNameOpenDialog.FileName;
  MediaPlayer.Open;
end;

end.
