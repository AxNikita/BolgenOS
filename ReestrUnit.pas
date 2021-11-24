unit ReestrUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.FileCtrl;

type
  TReestrForm = class(TForm)
    ReestrFileListBox: TFileListBox;
    KarantinFileListBox: TFileListBox;
    KarantinButton: TButton;
    RestoreButton: TButton;
    procedure FormShow(Sender: TObject);
    procedure KarantinButtonClick(Sender: TObject);
    procedure RestoreButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReestrForm: TReestrForm;

implementation

{$R *.dfm}

procedure TReestrForm.FormShow(Sender: TObject);
begin
    ReestrFileListBox.Directory:= 'C:\Users\User\Desktop\BolgenOS\Reestr\';
    ReestrFileListBox.Mask:= '*.txt';

    KarantinFileListBox.Directory:= 'C:\Users\User\Desktop\BolgenOS\Karantin\';
    KarantinFileListBox.Mask:= '*.txt';
end;

procedure TReestrForm.KarantinButtonClick(Sender: TObject);
var
  name, way, wayR: string;
begin
  way:= 'C:\Users\User\Desktop\BolgenOS\Karantin\';
  wayR:= 'C:\Users\User\Desktop\BolgenOS\Reestr\';


  name:=  ReestrFileListBox.Items[ReestrFileListBox.ItemIndex];
  MoveFile(Pchar(wayR + name), Pchar(way + name));


  ReestrFileListBox.Update;
  KarantinFileListBox.Update;
end;

procedure TReestrForm.RestoreButtonClick(Sender: TObject);
var
  name, way, wayR: string;
begin
  way:= 'C:\Users\User\Desktop\BolgenOS\Karantin\';
  wayR:= 'C:\Users\User\Desktop\BolgenOS\Reestr\';


  name:=  KarantinFileListBox.Items[KarantinFileListBox.ItemIndex];
  MoveFile(Pchar(way + name), Pchar(wayR + name));


  ReestrFileListBox.Update;
  KarantinFileListBox.Update;
end;

end.
