program Project1;

uses
  Forms,
  SignInUnit in 'SignInUnit.pas' {SignInForm},
  DesktopUnit in 'DesktopUnit.pas' {DesktopForm},
  UserDBUnit in 'UserDBUnit.pas',
  SignUpUnit in 'SignUpUnit.pas' {SignUpForm},
  BrowserUnit in 'BrowserUnit.pas' {BrowserForm},
  CalculatorUnit in 'CalculatorUnit.pas' {CalculatorForm},
  PlayerUnit in 'PlayerUnit.pas' {PlayerForm},
  WinRarUnit in 'WinRarUnit.pas' {WinRarForm},
  ReestrUnit in 'ReestrUnit.pas' {ReestrForm},
  TextEditorUnit in 'TextEditorUnit.pas' {TextEditorForm},
  TextSettingsUnit in 'TextSettingsUnit.pas' {TextSettingsForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TSignInForm, SignInForm);
  Application.CreateForm(TDesktopForm, DesktopForm);
  Application.CreateForm(TSignUpForm, SignUpForm);
  Application.CreateForm(TBrowserForm, BrowserForm);
  Application.CreateForm(TCalculatorForm, CalculatorForm);
  Application.CreateForm(TPlayerForm, PlayerForm);
  Application.CreateForm(TWinRarForm, WinRarForm);
  Application.CreateForm(TReestrForm, ReestrForm);
  Application.CreateForm(TTextEditorForm, TextEditorForm);
  Application.CreateForm(TTextSettingsForm, TextSettingsForm);
  Application.Run;
end.
