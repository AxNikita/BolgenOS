unit CalculatorUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TCalculatorForm = class(TForm)
    TextMemo: TMemo;
    ButtonC: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button0: TButton;
    ButtonPoint: TButton;
    ButtonEqually: TButton;
    ButtonPlus: TButton;
    ButtonMinus: TButton;
    ButtonMultiply: TButton;
    ButtonDivide: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button0Click(Sender: TObject);
    procedure ButtonCClick(Sender: TObject);
    procedure ButtonPlusClick(Sender: TObject);
    procedure ButtonEquallyClick(Sender: TObject);
    procedure ButtonMinusClick(Sender: TObject);
    procedure ButtonMultiplyClick(Sender: TObject);
    procedure ButtonDivideClick(Sender: TObject);
    procedure ButtonPointClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CalculatorForm: TCalculatorForm;
  a, b, res: real;
  stroka: string;

implementation

{$R *.dfm}

procedure TCalculatorForm.Button0Click(Sender: TObject);
begin
  TextMemo.Text:= TextMemo.Text + '0';
end;

procedure TCalculatorForm.Button1Click(Sender: TObject);
begin
  TextMemo.Text:= TextMemo.Text + '1';
end;

procedure TCalculatorForm.Button2Click(Sender: TObject);
begin
  TextMemo.Text:= TextMemo.Text + '2';
end;

procedure TCalculatorForm.Button3Click(Sender: TObject);
begin
  TextMemo.Text:= TextMemo.Text + '3';
end;

procedure TCalculatorForm.Button4Click(Sender: TObject);
begin
  TextMemo.Text:= TextMemo.Text + '4';
end;

procedure TCalculatorForm.Button5Click(Sender: TObject);
begin
  TextMemo.Text:= TextMemo.Text + '5';
end;

procedure TCalculatorForm.Button6Click(Sender: TObject);
begin
  TextMemo.Text:= TextMemo.Text + '5';
end;

procedure TCalculatorForm.Button7Click(Sender: TObject);
begin
  TextMemo.Text:= TextMemo.Text + '7';
end;

procedure TCalculatorForm.Button8Click(Sender: TObject);
begin
  TextMemo.Text:= TextMemo.Text + '8';
end;

procedure TCalculatorForm.Button9Click(Sender: TObject);
begin
  TextMemo.Text:= TextMemo.Text + '9';
end;

procedure TCalculatorForm.ButtonCClick(Sender: TObject);
begin
  TextMemo.Clear;
end;

procedure TCalculatorForm.ButtonDivideClick(Sender: TObject);
begin
  a:= StrToInt(TextMemo.Text);
  TextMemo.Text:= TextMemo.Text + '/';
end;

procedure TCalculatorForm.ButtonEquallyClick(Sender: TObject);
var
  n: Integer;
begin
  stroka:= TextMemo.Text;

  if pos('+', stroka) > 0 then begin
    n:= pos('+', stroka);
    b:= StrToFloat(Copy(stroka, n+1, 10));
    TextMemo.Text:= TextMemo.Text + '=';
    try
      res:= a + b;
      TextMemo.Text:= TextMemo.Text + #13#10 + FloatToStr(res);
    except
      ShowMessage('Ошибка');
    end;

  end else if pos('*', stroka) > 0 then begin
    n:= pos('*', stroka);
    b:= StrToFloat(Copy(stroka, n+1, 10));
    TextMemo.Text:= TextMemo.Text + '=';
    try
      res:= a * b;
      TextMemo.Text:= TextMemo.Text + #13#10 + FloatToStr(res);
    except
      ShowMessage('Ошибка');
    end;

  end else if pos('-', stroka) > 0 then begin
    n:= pos('-', stroka);
    b:= StrToFloat(Copy(stroka, n+1, 10));
    TextMemo.Text:= TextMemo.Text + '=';
    try
      res:= a - b;
      TextMemo.Text:= TextMemo.Text + #13#10 + FloatToStr(res);
    except
      ShowMessage('Ошибка');
    end;
    
  end else if pos('/', stroka) > 0 then begin
    n:= pos('/', stroka);
    b:= StrToFloat(Copy(stroka, n+1, 10));
    TextMemo.Text:= TextMemo.Text + '=';
    try
      res:= a/b;
      TextMemo.Text:= TextMemo.Text + #13#10 + FloatToStr(res);
    except
      ShowMessage('Ошибка');
    end;

    
    

  end;

end;

procedure TCalculatorForm.ButtonMinusClick(Sender: TObject);
begin
  a:= StrToFloat(TextMemo.Text);
  TextMemo.Text:= TextMemo.Text + '-';
end;

procedure TCalculatorForm.ButtonMultiplyClick(Sender: TObject);
begin
  a:= StrToFloat(TextMemo.Text);
  TextMemo.Text:= TextMemo.Text + '*';
end;

procedure TCalculatorForm.ButtonPlusClick(Sender: TObject);
begin
  a:= StrToFloat(TextMemo.Text);
  TextMemo.Text:= TextMemo.Text + '+';
end;

procedure TCalculatorForm.ButtonPointClick(Sender: TObject);
begin
  TextMemo.Text:= TextMemo.Text + ',';
end;

end.
