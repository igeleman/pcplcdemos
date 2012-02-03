unit SetValue;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin;

type
  TFormSetValue = class(TForm)
    Label2: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSetValue: TFormSetValue;

implementation

{$R *.dfm}
uses Main;

procedure TFormSetValue.FormActivate(Sender: TObject);
begin
  Edit1.Text := MainForm.Value;
  Edit1.SetFocus;
end;

procedure TFormSetValue.Button1Click(Sender: TObject);
Var
    f: double;
    I:Integer;
begin
  if MainForm.ValueTypeR then
  begin
    if TryStrToFloat(Edit1.Text, f) then
    begin
      MainForm.WriteDouble(StrToFloat(Edit1.Text));
      Close;
    end else
      ShowMessage('No valid float number!');
  end else begin
    if TryStrToInt(Edit1.Text, I) then
    begin
      MainForm.WriteInt(strToInt(Edit1.Text));
      Close;
    end else
      ShowMessage('No valid integer number!');
  end;
end;

end.

