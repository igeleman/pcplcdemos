unit Instellingen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, Mask, DB, ADODB, DBCtrls, Grids,
  DBGrids, Spin, TeeProcs, TeEngine, Chart, Menus, ToolWin, jpeg, Series,
  Registry;

type
   TInstelForm = class(TForm)
    Panel1: TPanel;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    SpinEdit3: TSpinEdit;
    SpinEdit4: TSpinEdit;
    SpinEdit5: TSpinEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    CB_Keuze: TCheckBox;
    Label7: TLabel;
    SpinEditSchaal: TSpinEdit;
    Label9: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure CB_KeuzeClick(Sender: TObject);
    procedure Gegevens;

  private
    { Private declarations }
  public
    { Public declarations }
    Status  : integer;
  end;

var
  InstelForm: TInstelForm;

implementation

uses Main;
{$R *.dfm}


procedure TInstelForm.CB_KeuzeClick(Sender: TObject);
begin
  MainForm.IO_MW :=  CB_Keuze.Checked;
  if MainForm.IO_MW then
  begin
    SpinEditSchaal.Value := 10;
  end else begin
    SpinEditSchaal.Value := 276;
  end;
  Gegevens;
end;
procedure TInstelForm.Gegevens;
begin
  if MainForm.IO_MW then
  begin
    CB_Keuze.Caption := 'Lezen uit DB130 52,56,60,64,  sp=0';
  end else begin
    CB_Keuze.Caption := 'Lezen uit Analoge IO';
  end;
end;

procedure TInstelForm.FormActivate(Sender: TObject);
begin
  if MainForm.IO_MW then
    CB_Keuze.Checked := true
  else
    CB_Keuze.Checked := false;
  SpinEditSchaal.Value := MainForm.Schaal;
  Gegevens;
end;

procedure TInstelForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  MainForm.Schaal := SpinEditSchaal.Value;
end;

end.


