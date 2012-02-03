// Main.pas (Part of NoDaveDemo.dpr)

unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, IniFiles,
  StdCtrls, Mask, Grids, ValEdit, ExtCtrls, ComCtrls, Winsock, Spin, NoDaveComponent, Editor,
  AppEvnts, Buttons, ToolWin, TeEngine, Series, TeeProcs, Chart, MahBit16;

 const  aantal = 599;
 const  DataAantal = 6;

type
  TMainForm = class(TForm)
    NoDave: TNoDave;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    SBCon: TSpeedButton;
    SBdiscon: TSpeedButton;
    SBSim: TSpeedButton;
    ToolButton2: TToolButton;
    ComboBox3: TComboBox;
    SBEditCon: TSpeedButton;
    SBNewCon: TSpeedButton;
    ToolButton4: TToolButton;
    Panel5: TPanel;
    ProgressBar1: TProgressBar;
    ToolButton3: TToolButton;
    SimulatieUit: TSpeedButton;
    SimulatieAan: TSpeedButton;
    StatusBar1: TStatusBar;
    Chart1: TChart;
    Series1: TLineSeries;
    Series2: TLineSeries;
    Series3: TLineSeries;
    Series4: TLineSeries;
    Series5: TLineSeries;
    Panel2: TPanel;
    ApplicationEvents1: TApplicationEvents;
    TimerGr: TTimer;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    LED1: TPanel;
    LED2: TPanel;
    LED3: TPanel;
    LED4: TPanel;
    LED5: TPanel;
    LED6: TPanel;
    LED7: TPanel;
    LED8: TPanel;
    LED9: TPanel;
    LED10: TPanel;
    LED11: TPanel;
    LED12: TPanel;
    LED13: TPanel;
    LED14: TPanel;
    LED15: TPanel;
    LED16: TPanel;
    procedure TimerGrTimer(Sender: TObject);
    procedure SBSimClick(Sender: TObject);
    procedure SBNewConClick(Sender: TObject);
    procedure SBEditConClick(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure SBdisconClick(Sender: TObject);
    procedure SBConClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure NoDaveRead(Sender: TObject);
    procedure NoDaveError(Sender: TObject; ErrorMsg: string);
    procedure NoDaveConnect(Sender: TObject);
    procedure NoDaveDisconnect(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ApplicationEvents1Idle(Sender: TObject; var Done: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure InitData;
    procedure DataToGrafiek;
    procedure DataToBinare;
  private
    DataType: Integer;
    DataOffset: Integer;
    DataCount: Integer;
    DataSize: Integer;
    MustRefresh: Boolean;
    oBit16  : TBit16;

    //tbv grafiek
    DataGrafiek  : array[0..7] of real;

    DataBin  : word;
    TimeGr : real;

  public
    SimActief: boolean;
    procedure Connect(ConnName: String);
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

uses SZLView;

const
  AreaNames: Array[0..13] of String = ('SI%1:s%4u', 'SF%1:s%4u', 'I%1:s%4u', 'Q%1:s%4u', 'I%1:s%4u', 'Q%1:s%4u', 'M%1:s%4u', 'DB%u.%s%4u', 'DI%u.%s%4u', 'DL%u.%s%4u', '?%u.%s%4u', 'C%1:s%4u', 'T%1:s%4u', 'PE%1:s%4u');
  TypeNames: Array[0..5] of String = ('B', 'W', 'Int', 'DW', 'DInt', 'Real');

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  NoDave.Active:=False;
  oBit16.Free
end;

procedure TMainForm.FormShow(Sender: TObject);
var
  ConnList: TStringList;
  Index: Integer;
  ConnName: String;
  ConnDesc: String;
begin
  ConnList:=TStringList.Create;
  ConnectionEditor.IniFile.ReadSectionValues('Connections', ConnList);
  ConnList.Sorted:=True;
  Index:=0;
  While Index < ConnList.Count do
  begin
    ConnName:=ConnList.Names[Index];
    ComboBox3.Items.Append(ConnName);
    Inc(Index);
  end;
  ConnList.Free;
  ComboBox3.ItemIndex:=0;
  Connect(ComboBox3.Text);
end;

procedure TMainForm.NoDaveError(Sender: TObject; ErrorMsg: string);
begin
  StatusBar1.Panels[1].Text:='Last cycle time: - ms';
  StatusBar1.Panels[0].Text:='Error [' + IntToStr(NoDave.LastError) + ']: ' + ErrorMsg;
end;


procedure TMainForm.NoDaveConnect(Sender: TObject);
begin
  ProgressBar1.Position:=0;
end;

procedure TMainForm.NoDaveDisconnect(Sender: TObject);
begin
  ProgressBar1.Position:=0;
end;

procedure TMainForm.Connect(ConnName: String);
begin
  If ConnName <> '' then
  begin
    NoDave.Protocol:=TNoDaveProtocol(ConnectionEditor.IniFile.ReadInteger(ConnName, 'Protocol', 3));
    NoDave.CPURack:=ConnectionEditor.IniFile.ReadInteger(ConnName, 'CPURack', 0);
    NoDave.CPUSlot:=ConnectionEditor.IniFile.ReadInteger(ConnName, 'CPUSlot', 2);
    NoDave.COMPort:=ConnectionEditor.IniFile.ReadString(ConnName, 'COMPort', 'COM1:');
    NoDave.IPAddress:=ConnectionEditor.IniFile.ReadString(ConnName, 'IPAddress', '');
    NoDave.IntfTimeout:=ConnectionEditor.IniFile.ReadInteger(ConnName, 'Timeout', 100000);
    NoDave.Interval:=ConnectionEditor.IniFile.ReadInteger(ConnName, 'Interval', 1000);
    NoDave.MPISpeed:=TNoDaveSpeed(ConnectionEditor.IniFile.ReadInteger(ConnName, 'MPISpeed', 2));
    NoDave.MPILocal:=ConnectionEditor.IniFile.ReadInteger(ConnName, 'MPILocal', 1);
    NoDave.MPIRemote:=ConnectionEditor.IniFile.ReadInteger(ConnName, 'MPIRemote', 2);
  end;
end;

procedure TMainForm.ApplicationEvents1Idle(Sender: TObject; var Done: Boolean);
begin
  if  NoDave.Active then
  begin
    SBcon.Visible    :=  false;
    SBdiscon.Visible :=  true;
  end else begin
    SBdiscon.Visible :=  false;
    SBcon.Visible    :=  true;
    LED1.Color := clMoneyGreen;
    LED2.Color := clMoneyGreen;
    LED3.Color := clMoneyGreen;
    LED4.Color := clMoneyGreen;
    LED5.Color := clMoneyGreen;
    LED6.Color := clMoneyGreen;
    LED7.Color := clMoneyGreen;
    LED8.Color := clMoneyGreen;
    LED9.Color := clMoneyGreen;
    LED10.Color := clMoneyGreen;
    LED11.Color := clMoneyGreen;
    LED12.Color := clMoneyGreen;
    LED13.Color := clMoneyGreen;
    LED14.Color := clMoneyGreen;
    LED15.Color := clMoneyGreen;
    LED16.Color := clMoneyGreen;
  end;
    SimulatieAan.Visible := not SimActief;
    SimulatieUit.Visible := SimActief;
 //   SBSim.Enabled := NoDave.Active;
  if(SimActief) then
  begin
    StatusBar1.Panels[3].Text:='Sim AAN';
  end else
  begin
    StatusBar1.Panels[3].Text:='Sim UIT';
  end;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  oBit16 := TBit16.Create;
  SimActief := false;
  StatusBar1.Panels[0].Text:='Not connected!';
  InitData;
  ProgressBar1.Position:=0;
  TimeGr := 0;
end;

procedure TMainForm.SBConClick(Sender: TObject);
begin
  NoDave.Active := true;
end;

procedure TMainForm.SBdisconClick(Sender: TObject);
begin
  NoDave.Active := false;
end;

procedure TMainForm.ComboBox3Change(Sender: TObject);
begin
  Connect(ComboBox3.Text);
end;

procedure TMainForm.SBEditConClick(Sender: TObject);
begin
  If ComboBox3.ItemIndex >= 0 then
  begin
    ConnectionEditor.SetConnection(ComboBox3.Text);
    If ConnectionEditor.ShowModal = mrOK then Connect(ComboBox3.Text);
  end;
end;

procedure TMainForm.SBNewConClick(Sender: TObject);
var
  Index: Integer;
begin
  ConnectionEditor.SetConnection('');
  If ConnectionEditor.ShowModal = mrOK then
  begin
    Index:=ComboBox3.Items.Add(ConnectionEditor.Connection.Text);
    ComboBox3.ItemIndex:=Index;
    Connect(ComboBox3.Text);
  end;
end;

procedure TMainForm.SBSimClick(Sender: TObject);
begin
  InitData;
end;
procedure TMainForm.InitData;
var
  Active: Boolean;
  Area: Integer;
  Display: String;
  DBNumber: Integer;
  Index: Integer;
begin
{ Area:
  0 - System-Info
  1 - System-Flags
  2 - analog Inputs (CPU 200)
  3 - analog Outputs (CPU 200)
  4 - Inputs
  5 - Outputs
  6 - Flags
  7 - Datablock
  8 - Instance Data
  9 - Local Data
 10 - unknown Area
 11 - Counter
 12 - Timer
 13 - PEW/PAW
---------------------
 DataType:
 0 - Byte
 1 - Word
 2 - Int
 3 - DWord
 4 - DInt
 5 - Real

}
  Active:=NoDave.Active;
  Area       := 6;    //Select the PLC-area from the list.
  NoDave.Area:=TNoDaveArea(Area);
  DBNumber   := 0;    //Set the number of the DB.
  NoDave.DBNumber:=DBNumber; //Set the number of the DB.
  DataCount  := DataAantal;    //Set the number of addresses to process.
  DataType   := 1;    //Select the datatype from the list.
  DataOffset := 200;  //Set the address-offset.
  Case DataType of
    0: DataSize:=1;
    1: DataSize:=2;
    2: DataSize:=2;
    3: DataSize:=4;
    4: DataSize:=4;
    5: DataSize:=4;
  end;
  NoDave.BufLen  :=DataCount * DataSize;
  NoDave.BufOffs :=DataOffset;
  Index          :=DataOffset;
  //Display:=StringReplace(Format(AreaNames[Area], [DBNumber, TypeNames[DataType], Index]), ' ', '0', [rfReplaceAll]) + ' =         ?';
  //Label1.Caption :=  Display;
  NoDave.Active:=Active;
end;

procedure TMainForm.NoDaveRead(Sender: TObject);
var
  Data: Array of Variant;
  Index: Integer;
  Count: Integer;
begin
  With ProgressBar1 do
  begin
    If Position = 10 then Position:=0 else Position:=Position + 1;
  end;
  SetLength(Data, DataCount);
  Count:=0;
  While Count < DataCount do
  begin
    Index:=(Count * DataSize) + DataOffset;
    Case DataType of
      0: Data[Count]:=NoDave.GetByte(Index);
      1: Data[Count]:=NoDave.GetWord(Index);
      2: Data[Count]:=NoDave.GetInt(Index);
      3: Data[Count]:=NoDave.GetDWord(Index);
      4: Data[Count]:=NoDave.GetDInt(Index);
      5: Data[Count]:=NoDave.GetFloat(Index);
    end;
    Inc(Count);
  end;
  Index:=0;

  //Label1.Caption :=  Format('%10s', [VarToStr(Data[Index])]);
  DataGrafiek[0] :=  Data[0]/10.0;
  DataGrafiek[1] :=  Data[1]/10.0;
  DataGrafiek[2] :=  Data[2]/10.0;
  DataGrafiek[3] :=  Data[3]/10.0;
  DataGrafiek[4] :=  Data[4]/10.0;
  DataBin    :=  Data[5];           // binare 16 bit

  StatusBar1.Panels[1].Text:='Last cycle time: ' + IntToStr(NoDave.CycleTime) + ' ms';
  StatusBar1.Panels[0].Text:='';

  DataToBinare;
  DataToGrafiek;
end;

procedure TMainForm.DataToGrafiek;
var
  i,colour   : integer;
  slip : real;
begin

  For i := 0 to 4 do
  begin
    Case i of
       0 : colour:= clRed;
       1 : colour:= clBlue;
       2 : colour:= clRed;
       3 : colour:= clGreen;
       4 : colour:= clBlack;
       5 : colour:= clFuchsia;
    end;
    Chart1.SeriesList.Series[i].AddXY(timeGr,DataGrafiek[i],'bla',colour);
  end;
  timeGr:= timeGr + 1;
  if    timeGr > 600 then
  begin
     slip :=  timeGr - 600;
     Chart1.BottomAxis.Maximum:=timeGr;
     Chart1.BottomAxis.Minimum:=timeGr - 600;
  end;

end;
procedure TMainForm.DataToBinare;
begin
    oBit16.AsWordO := DataBin;
    if oBit16.BitSet(0) then LED1.Color := clYellow else LED1.Color := clSkyBlue;
    if oBit16.BitSet(1) then LED2.Color := clYellow else LED2.Color := clSkyBlue;
    if oBit16.BitSet(2) then LED3.Color := clYellow else LED3.Color := clSkyBlue;
    if oBit16.BitSet(3) then LED4.Color := clYellow else LED4.Color := clSkyBlue;

    if oBit16.BitSet(4) then LED5.Color := clYellow else LED5.Color := clSkyBlue;
    if oBit16.BitSet(5) then LED6.Color := clYellow else LED6.Color := clSkyBlue;
    if oBit16.BitSet(6) then LED7.Color := clYellow else LED7.Color := clSkyBlue;
    if oBit16.BitSet(7) then LED8.Color := clYellow else LED8.Color := clSkyBlue;

    if oBit16.BitSet(8) then LED9.Color := clYellow else LED9.Color := clSkyBlue;
    if oBit16.BitSet(9) then LED10.Color := clYellow else LED10.Color := clSkyBlue;
    if oBit16.BitSet(10) then LED11.Color := clYellow else LED11.Color := clSkyBlue;
    if oBit16.BitSet(11) then LED12.Color := clYellow else LED12.Color := clSkyBlue;

    if oBit16.BitSet(12) then LED13.Color := clYellow else LED13.Color := clSkyBlue;
    if oBit16.BitSet(13) then LED14.Color := clYellow else LED14.Color := clSkyBlue;
    if oBit16.BitSet(14) then LED15.Color := clYellow else LED15.Color := clSkyBlue;
    if oBit16.BitSet(15) then LED16.Color := clYellow else LED16.Color := clSkyBlue;
end;

procedure TMainForm.TimerGrTimer(Sender: TObject);
begin
  //DataGrafiek[0] :=  55;
  DataToGrafiek;
end;

end.

