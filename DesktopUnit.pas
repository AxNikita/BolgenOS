unit DesktopUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, jpeg, Vcl.Imaging.pngimage, ShellApi,
  Vcl.WinXPanels, Vcl.WinXCtrls, Vcl.FileCtrl;

type
  TDesktopForm = class(TForm)
    ControlPanel: TPanel;
    MenuImage: TImage;
    DesktopImage: TImage;
    MenuFlowPanel: TFlowPanel;
    GoogleImage: TImage;
    SnakeApplicationImage: TImage;
    CalculatorImage: TImage;
    TextEditorImage: TImage;
    SapperImage: TImage;
    TimeLabel: TLabel;
    UserPanel: TFlowPanel;
    CloseImage: TImage;
    UserCardPanel: TCardPanel;
    UserIconImage: TImage;
    UserCard: TCard;
    UserNameLabel: TLabel;
    UserSettingsFlowPanel: TFlowPanel;
    Image1: TImage;
    PlayerImage: TImage;
    Timer1: TTimer;
    DarkThemeLabel: TLabel;
    DarkThemeToggleSwitch: TToggleSwitch;
    DesktopImageButton: TButton;
    DesktopImageOpenDialog: TOpenDialog;
    Image2: TImage;
    Image3: TImage;
    DeleteUserButton: TButton;
    WinRarImage: TImage;
    PlayerLabel: TLabel;
    WinRarLabel: TLabel;
    Image4: TImage;
    CommandStringEdit: TEdit;
    procedure MenuImageClick(Sender: TObject);
    procedure GoogleImageClick(Sender: TObject);
    procedure TextEditorImageClick(Sender: TObject);
    procedure CalculatorImageClick(Sender: TObject);
    procedure ExitButtonClick(Sender: TObject);
    procedure CloseButtonClick(Sender: TObject);
    procedure CloseImageClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SendUsername(username: string);
    procedure UserCardClick(Sender: TObject);
    procedure PlayerImageDblClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure DarkThemeToggleSwitchClick(Sender: TObject);
    procedure DesktopImageButtonClick(Sender: TObject);
    procedure DeleteUserButtonClick(Sender: TObject);
    procedure WinRarImageDblClick(Sender: TObject);
    procedure CommandStringEditChange(Sender: TObject);
    procedure WinRarImageMouseEnter(Sender: TObject);
    procedure WinRarImageMouseLeave(Sender: TObject);
    procedure PlayerImageMouseEnter(Sender: TObject);
    procedure PlayerImageMouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    name : string;
  end;

var
  DesktopForm: TDesktopForm;

implementation

uses SignInUnit, BrowserUnit, CalculatorUnit, UserDBUnit, PlayerUnit, WinRarUnit, ReestrUnit, TextEditorUnit;

{$R *.dfm}

procedure SwitchUserPanel;
begin
  if DesktopForm.UserSettingsFlowPanel.Visible then begin
     DesktopForm.UserSettingsFlowPanel.Visible:= False;
     DesktopForm.UserSettingsFlowPanel.Enabled:= False;

  end else begin
     DesktopForm.UserSettingsFlowPanel.Visible:= True;
     DesktopForm.UserSettingsFlowPanel.Enabled:= True;
  end;
end;

procedure SwitchMenu;
begin
  if DesktopForm.MenuFlowPanel.Visible then begin
     DesktopForm.MenuFlowPanel.Visible:= False;
     DesktopForm.MenuFlowPanel.Enabled:= False;

     DesktopForm.UserSettingsFlowPanel.Visible:= False;
     DesktopForm.UserSettingsFlowPanel.Enabled:= False;

  end else begin
     DesktopForm.MenuFlowPanel.Visible:= True;
     DesktopForm.MenuFlowPanel.Enabled:= True;
  end;
end;



procedure TDesktopForm.CloseButtonClick(Sender: TObject);
begin
  DesktopForm.Close;
end;

procedure TDesktopForm.CalculatorImageClick(Sender: TObject);
begin
  CalculatorForm.ShowModal;
end;

procedure TDesktopForm.ExitButtonClick(Sender: TObject);
begin
  DesktopForm.Close;
end;

procedure TDesktopForm.FormCreate(Sender: TObject);
begin

  UserNameLabel.Caption:= name;

  SwitchUserPanel;
  SwitchMenu;

  DarkThemeToggleSwitch.Enabled:= False;
  DarkThemeToggleSwitch.Visible:= False;
  DarkThemeLabel.Visible:= False;
end;

procedure TDesktopForm.SendUsername(username: string);
begin
  UserNameLabel.Caption := username;
end;

procedure TDesktopForm.GoogleImageClick(Sender: TObject);
begin
  BrowserForm.ShowModal;
end;


procedure TDesktopForm.CloseImageClick(Sender: TObject);
begin
  DesktopForm.Close;
end;

procedure TDesktopForm.CommandStringEditChange(Sender: TObject);
begin
  if CommandStringEdit.Text = 'regedit' then begin
    SwitchMenu;
    ReestrForm.ShowModal;
  end;


  if CommandStringEdit.Text = 'darkmode' then begin
    DarkThemeToggleSwitch.Enabled:= True;
    DarkThemeToggleSwitch.Visible:= True;
    DarkThemeLabel.Visible:= True;
  end;
end;

procedure TDesktopForm.MenuImageClick(Sender: TObject);
begin
  SwitchMenu;
end;

procedure TDesktopForm.PlayerImageDblClick(Sender: TObject);
begin
  //реализация плеера
  PlayerForm.ShowModal;
end;

procedure TDesktopForm.PlayerImageMouseEnter(Sender: TObject);
begin
  PlayerImage.Height:= 40;
  PlayerImage.Width:= 40;
end;

procedure TDesktopForm.PlayerImageMouseLeave(Sender: TObject);
begin
  PlayerImage.Height:= 50;
  PlayerImage.Width:= 50;
end;

procedure TDesktopForm.TextEditorImageClick(Sender: TObject);
begin
  TextEditorForm.ShowModal;
end;

procedure TDesktopForm.Timer1Timer(Sender: TObject);
begin
  TimeLabel.Caption:= TimeToStr(Time);
end;

procedure TDesktopForm.DarkThemeToggleSwitchClick(Sender: TObject);
begin
  if DarkThemeToggleSwitch.IsOn then begin
    UserSettingsFlowPanel.Color:= clWindowFrame;
    MenuFlowPanel.Color:= clWindowFrame;
    ControlPanel.Color:= clWindowFrame;
  end else begin
    UserSettingsFlowPanel.Color:= clGradientInactiveCaption;
    MenuFlowPanel.Color:= clGradientInactiveCaption;
    ControlPanel.Color:= clGradientInactiveCaption;
  end;

end;

procedure TDesktopForm.DeleteUserButtonClick(Sender: TObject);
var
  result: TModalResult;
  db: UserDB;
begin
  result:= MessageDlg('Вы действительно хотите удалить пользователя?', mtInformation, [mbYes, mbNo], 0);


  if result = mrYes then begin
    db := UserDB.Create('user.db');
    db.DeleteUser(UserNameLabel.Caption);
    ShellExecute(Self.Handle, nil, Pchar(Application.ExeName), nil, nil, SW_NORMAL);
    Self.Close;
  end;

end;

procedure TDesktopForm.DesktopImageButtonClick(Sender: TObject);
begin
  if DesktopImageOpenDialog.Execute then begin
    DesktopImage.Picture.LoadFromFile(DesktopImageOpenDialog.FileName);
  end;
end;

procedure TDesktopForm.UserCardClick(Sender: TObject);
begin
  SwitchUserPanel;
end;

procedure TDesktopForm.WinRarImageDblClick(Sender: TObject);
begin
  //WinRar
  WinRarForm.ShowModal;
end;

procedure TDesktopForm.WinRarImageMouseEnter(Sender: TObject);
begin
  WinRarImage.Width:= 40;
  WinRarImage.Height:= 40;
end;

procedure TDesktopForm.WinRarImageMouseLeave(Sender: TObject);
begin
   WinRarImage.Width:= 50;
  WinRarImage.Height:= 50;
end;


end.
