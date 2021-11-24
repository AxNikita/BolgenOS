unit BrowserUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.OleCtrls, SHDocVw;

type
  TBrowserForm = class(TForm)
    SerchBrowserButton: TButton;
    SerchBrowserEdit: TEdit;
    WebBrowser: TWebBrowser;
    procedure SerchBrowserButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BrowserForm: TBrowserForm;

implementation

{$R *.dfm}

procedure TBrowserForm.SerchBrowserButtonClick(Sender: TObject);
begin
  WebBrowser.Navigate(SerchBrowserEdit.Text);
end;

end.
