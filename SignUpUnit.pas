unit SignUpUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, Vcl.Buttons;

type
  TSignUpForm = class(TForm)
    SignUpLabel: TLabel;
    UsernameLabel: TLabel;
    UsernameEdit: TEdit;
    EmailLabel: TLabel;
    EmailEdit: TEdit;
    PasswordLabel: TLabel;
    PasswordEdit: TEdit;
    SignUpButton: TButton;
    procedure SignUpButtonClick(Sender: TObject);
    procedure CancelBitBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SignUpForm: TSignUpForm;

implementation

uses UserDBUnit, SignInUnit, DesktopUnit;

{$R *.dfm}

function CheckUserExists(username: string): boolean;
var
  user_db: file of user;
  us: user;
begin
  AssignFile(user_db, 'user.db');
  reset(user_db);

  CheckUserExists := false;
  while not eof(user_db) do begin
    read(user_db, us);
    if (us.username = username) then begin
      CheckUserExists := true;
    end;
  end;

  CloseFile(user_db);
end;

procedure ClearForm;
begin
  SignUpForm.UsernameEdit.Text := '';
  SignUpForm.EmailEdit.Text := '';
  SignUpForm.PasswordEdit.Text := '';
end;

procedure TSignUpForm.CancelBitBtnClick(Sender: TObject);
begin
  Self.Hide;
  SignInForm.ShowModal;
  Self.CloseModal;
end;

procedure TSignUpForm.SignUpButtonClick(Sender: TObject);
var
  us: user;
  user_db: UserDB;
begin
  us.username := UsernameEdit.Text;
  us.email := EmailEdit.Text;
  us.password := PasswordEdit.Text;

  if not CheckUserExists(us.username) then begin
    user_db := UserDB.Create('user.db');
    user_db.CreateUser(us);
    user_db.Free;
  end else begin
    ShowMessage('ƒанный пользователь уже существует.');
    ClearForm;
  end;
end;

end.
