unit SignInUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TSignInForm = class(TForm)
    UsernameEdit: TEdit;
    PasswordEdit: TEdit;
    SignInButton: TButton;
    UsernameLabel: TLabel;
    PasswordLabel: TLabel;
    SignUpButton: TButton;
    LanguageLabel: TLabel;
    LanguageComboBox: TComboBox;
    procedure SignInButtonClick(Sender: TObject);
    procedure SignUpButtonClick(Sender: TObject);
    procedure LanguageComboBoxChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;



var
  SignInForm: TSignInForm;

implementation

uses DesktopUnit, UserDBUnit, SignUpUnit;

{$R *.dfm}
procedure SignIn(username: string; password: string);
var
  f: file of user;
  us: user;
begin
  AssignFile(f, 'user.db');
  Reset(f);


  while not(Eof(f)) do begin
    read(f, us);
    if (username = us.username)and(password = us.password) then begin
      SignInForm.Hide;
      DesktopForm.SendUsername(username);
      DesktopForm.ShowModal;
      SignInForm.Close;
    end;
  end;

CloseFile(f);
end;


procedure TSignInForm.LanguageComboBoxChange(Sender: TObject);
begin
  case LanguageComboBox.ItemIndex of
    0:begin
      SignInForm.Caption:= 'Войдите';
      SignInButton.Caption:= 'Войти';
      SignUpButton.Caption:= 'Регистрация';
      UsernameLabel.Caption:= 'Имя пользователя:';
      PasswordLabel.Caption:= 'Пароль:';

      SignUpForm.Caption:= 'Зарегистрируйтесь';
      SignUpForm.SignUpLabel.Caption:= 'Зарегистрируйтесь';
      SignUpForm.UsernameLabel.Caption:= 'Имя пользователя:';
      SignUpForm.EmailLabel.Caption:= 'Электонный адрес:';
      SignUpForm.PasswordLabel.Caption:= 'Пароль';
      SignUpForm.SignUpButton.Caption:= 'Зарегистрироваться';

      DesktopForm.DarkThemeLabel.Caption:= 'Темная тема:  ';
    end;

    1:begin
      SignInForm.Caption:= 'Sign in';
      SignInButton.Caption:= 'Sign in';
      SignUpButton.Caption:= 'Sign up';
      UsernameLabel.Caption:= 'Username:';
      PasswordLabel.Caption:= 'Password:';

      SignUpForm.Caption:= 'Sign up';
      SignUpForm.SignUpLabel.Caption:= 'Sign up';
      SignUpForm.UsernameLabel.Caption:= 'Username:';
      SignUpForm.EmailLabel.Caption:= 'Email:';
      SignUpForm.PasswordLabel.Caption:= 'Password';
      SignUpForm.SignUpButton.Caption:= 'Sign up';

      DesktopForm.DarkThemeLabel.Caption:= 'Dark theme:  ';
    end;
  end;
end;

procedure TSignInForm.SignInButtonClick(Sender: TObject);
var
  f: file of user;
  username, password: string;
begin
  //user.db
  username:= UsernameEdit.Text;
  password:= PasswordEdit.Text;
  SignIn(username, password);
end;

procedure TSignInForm.SignUpButtonClick(Sender: TObject);
begin
  //self.Hide;
  SignUpForm.ShowModal;
  //self.Close;
end;

end.
