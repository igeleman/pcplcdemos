unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ToolWin, ComCtrls, Menus, Buttons, ExtCtrls, ExtDlgs, StrUtils,
  StdCtrls, nodave, Spin,  MahBit8, AppEvnts, TeEngine, Series,
  TeeProcs, Chart, MahBit16;

type
TMainForm = class(TForm)
    ToolBar1: TToolBar;
    StatusBar1: TStatusBar;
    SBCon: TSpeedButton;
    SBEditConnection: TSpeedButton;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    OpenTextFileDialog1: TOpenTextFileDialog;
    Timer1: TTimer;
    SBNewConnection: TSpeedButton;
    SBdiscon: TSpeedButton;
    SimulatieAan: TSpeedButton;
    SBSim: TSpeedButton;
    SimulatieUit: TSpeedButton;
    MainMenu1: TMainMenu;
    Exit1: TMenuItem;
    Connection1: TMenuItem;
    Online1: TMenuItem;
    Offline1: TMenuItem;
    N3: TMenuItem;
    EditConnectionSettings: TMenuItem;
    Instellingen1: TMenuItem;
    Info1: TMenuItem;
    if1: TMenuItem;
    ComboBox3: TComboBox;
    ApplicationEvents1: TApplicationEvents;
    NewConnectionSettings: TMenuItem;
    Visuaeisering: TPageControl;
    TabSheet3: TTabSheet;
    Panel3: TPanel;
    Chart1: TChart;
    Series1: TLineSeries;
    Series2: TLineSeries;
    Series3: TLineSeries;
    Series4: TLineSeries;
    Series5: TLineSeries;
    Series6: TLineSeries;
    Panel1: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label04: TLabel;
    Label05: TLabel;
    Label06: TLabel;
    Label07: TLabel;
    Label03: TLabel;
    Label02: TLabel;
    Label01: TLabel;
    Label00: TLabel;
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
    TabSheet2: TTabSheet;
    CB_IngangenActiveren: TCheckBox;
    CheckBox00: TCheckBox;
    CheckBox01: TCheckBox;
    CheckBox02: TCheckBox;
    CheckBox04: TCheckBox;
    CheckBox05: TCheckBox;
    CheckBox16: TCheckBox;
    CheckBox17: TCheckBox;
    CheckBox21: TCheckBox;
    CheckBox20: TCheckBox;
    CheckBox22: TCheckBox;
    CheckBox26: TCheckBox;
    B_M02forward: TButton;
    B_M02backward: TButton;
    B_M04forward: TButton;
    B_M04backward: TButton;
    B_M06forward: TButton;
    B_M06backward: TButton;
    B_M08forward: TButton;
    B_M08backward: TButton;
    B_SlipPositief: TButton;
    B_SlipNegatief: TButton;
    B_ResetEmergencyStop: TButton;
    TabSheet1: TTabSheet;
    Label26: TLabel;
    Label32: TLabel;
    Label34: TLabel;
    Label28: TLabel;
    Label30: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    LabelB3: TLabel;
    LabelB4: TLabel;
    LabelB2: TLabel;
    LabelB1: TLabel;
    LabelB7: TLabel;
    LabelB6: TLabel;
    LabelB5: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    LabelC1: TLabel;
    LabelC2: TLabel;
    LabelC4: TLabel;
    LabelC3: TLabel;
    LabelC5: TLabel;
    LabelC6: TLabel;
    LabelC7: TLabel;
    LabelE5: TLabel;
    LabelE4: TLabel;
    LabelE3: TLabel;
    LabelE1: TLabel;
    LabelE2: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    LabelD1: TLabel;
    Label27: TLabel;
    LabelD2: TLabel;
    Label29: TLabel;
    Label31: TLabel;
    LabelD4: TLabel;
    Label33: TLabel;
    Label35: TLabel;
    LabelD3: TLabel;
    LabelD5: TLabel;
    CB_DisplayActiveren: TCheckBox;
    PanelMotor1: TPanel;
    PanelMotor2: TPanel;
    PanelMotor3: TPanel;
    PanelMotor4: TPanel;
    PanelFB: TPanel;
    TabSheet4: TTabSheet;
    Panel2: TPanel;
    Chart2: TChart;
    LineSeries1: TLineSeries;
    LineSeries2: TLineSeries;
    LineSeries3: TLineSeries;
    LineSeries4: TLineSeries;
    LineSeries5: TLineSeries;
    LineSeries6: TLineSeries;
    CB_berekeningOnOff: TCheckBox;
    SpinEditSignaal: TSpinEdit;
    SpinEditSchaal: TSpinEdit;
    Label25: TLabel;
    Button4: TButton;
    Button3: TButton;
    Button2: TButton;
    Button1: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Label46: TLabel;
    Timer2: TTimer;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    LabelBer1: TLabel;
    LabelBer2: TLabel;
    LabelBer4: TLabel;
    LabelBer3: TLabel;
    Label51: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label63: TLabel;
    LabelBer7: TLabel;
    LabelBer8: TLabel;
    LabelBer6: TLabel;
    LabelBer5: TLabel;
    procedure SpinEditSchaalMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Timer2Timer(Sender: TObject);

    procedure CB_DisplayActiverenClick(Sender: TObject);
    procedure LabelE5Click(Sender: TObject);
    procedure LabelE4Click(Sender: TObject);
    procedure LabelE3Click(Sender: TObject);
    procedure LabelE2Click(Sender: TObject);
    procedure LabelE1Click(Sender: TObject);
    procedure LabelC7Click(Sender: TObject);
    procedure LabelC6Click(Sender: TObject);
    procedure LabelC5Click(Sender: TObject);
    procedure LabelC4Click(Sender: TObject);
    procedure LabelC3Click(Sender: TObject);
    procedure LabelC2Click(Sender: TObject);
    procedure LabelC1Click(Sender: TObject);
    procedure LabelB7Click(Sender: TObject);
    procedure LabelB6Click(Sender: TObject);
    procedure LabelB5Click(Sender: TObject);
    procedure LabelB4Click(Sender: TObject);
    procedure LabelB3Click(Sender: TObject);
    procedure LabelB2Click(Sender: TObject);
    procedure LabelB1Click(Sender: TObject);
    procedure PanelFBClick(Sender: TObject);
    procedure PanelMotor4Click(Sender: TObject);
    procedure PanelMotor3Click(Sender: TObject);
    procedure PanelMotor2Click(Sender: TObject);
    procedure PanelMotor1Click(Sender: TObject);
    procedure B_ResetEmergencyStopMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure B_ResetEmergencyStopMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure B_SlipNegatiefMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure B_SlipNegatiefMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure B_SlipPositiefMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure B_SlipPositiefMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure B_M08backwardMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure B_M08backwardMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure B_M08forwardMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure B_M08forwardMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure B_M06backwardMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure B_M06backwardMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure B_M06forwardMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure B_M06forwardMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure B_M04backwardMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure B_M04backwardMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure B_M04forwardMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure B_M04forwardMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure B_M02backwardMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure B_M02backwardMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure B_M02forwardMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure B_M02forwardMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button4MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button3MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button4MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Instellingen1Click(Sender: TObject);
    procedure EditConnectionSettingsClick(Sender: TObject);
    procedure NewConnectionSettingsClick(Sender: TObject);
    procedure ApplicationEvents1Idle(Sender: TObject; var Done: Boolean);
    procedure ComboBox3Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure SimulatieAanClick(Sender: TObject);
    procedure SimulatieUitClick(Sender: TObject);
    procedure if1Click(Sender: TObject);
    procedure Offline1Click(Sender: TObject);
    procedure Online1Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DoConnection;
    procedure DoDisconnection;
    procedure MenuAct;
    procedure Connection(ConnName: String);
    procedure DataToGrafiek;
    procedure DigitaleOutputs;
    procedure DigitaleInputs;
    procedure JoystickSig;
    procedure DisplayDisplay;
    procedure WriteDouble(varR :single);
    procedure WriteInt(varI : integer);
    procedure UpdateDisplay;
    procedure DataBer;

  private
    { Private declarations }
    verbinding : boolean;
    oBit8  : TBit8;
    oBit16  : TBit16;
    dc   : pdaveConnection;
    dcIn : pdaveInterface;

    uitgangen  : Array[0..4] of byte;
    ingangen   : Array[0..4] of byte;
    DataAnalog : Array[0..4] of double;
    Graf2      : Array[0..7] of double;
    joystickSP : boolean;
    joystickSN : boolean;
    joystickLP : boolean;
    joystickLN : boolean;
    inputs   : Array[0..4] of byte;
    Joystick : word;
    TimeGr : double;
    TimeGr2 : double;
    M02forward  : boolean;
    M02backward : boolean;
    M04forward  : boolean;
    M04backward : boolean;
    M06forward  : boolean;
    M06backward : boolean;
    M08forward  : boolean;
    M08backward : boolean;
    SlipPositief : boolean;
    SlipNegatief : boolean;
    ResetEmergencyStop : boolean;
    display110 : Array[0..3] of double;
    display110b : byte;
    motorD : word;
    distance : Array[0..2] of integer;
    bi : double;
    mp : Array[0..9] of double;
    vasc : double;
    lb   : double;
    mioc : integer;
    smrc : integer;
    xyra : integer;
    fitback : byte;
    displayAct : boolean;
    berData : Array[0..8] of double;


  public
    { Public declarations }
    Protocol    : integer;
    IPAddress   : string;
    CPURack     : integer;
    CPUSlot     : integer;
    MPISpeed    : integer;
    COMPort     : string;
    IntfTimeout : Integer;
    //not used
    Interval    : Integer;
    MPILocal    : Integer;
    MPIRemote   : Integer;
    ConnProtocol: Integer;


    ProjectDir  : string;
    SimActief   : boolean;
    OS_Connect  : boolean;
    RetMessage  : string;
    readOK : boolean;
    IO_MW : boolean;
    Schaal : integer;

    ValueTypeI     : boolean;
    ValueTypeR     : boolean;
    ValueAdresDb  : integer;
    ValueAdresNum : integer;
    Value : string;

 end;

var
  MainForm: TMainForm;

implementation

uses  Instellingen, Info, Editor, SetValue;

{$R *.dfm}

procedure TMainForm.Exit1Click(Sender: TObject);
begin
  application.Terminate;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  verbinding := false;
  SimActief  := false;
  ConnProtocol:=122;
  oBit8 := TBit8.Create;
  oBit16 := TBit16.Create;
  joystickSP := false;
  joystickSN := false;
  joystickLP := false;
  joystickLN := false;
  Joystick   := 80;
  IO_MW := false;
  Schaal := 276;
  TimeGr := 0;
  TimeGr2 := 0;
  M02forward  := false;
  M02backward := false;
  M04forward  := false;
  M04backward := false;
  M06forward  := false;
  M06backward := false;
  M08forward  := false;
  M08backward := false;
  SlipNegatief := false;
  SlipPositief := false;
  ResetEmergencyStop := false;
  motorD := 0;

  ValueTypeI    := false;
  ValueTypeR    := false;
  ValueAdresDb  := 100;
  ValueAdresNum := 0;
  Value := '';
  displayAct := true;


  ProjectDir:=ExtractFilePath(application.ExeName);
  MenuAct;
  StatusBar1.Panels[0].Text := 'Disconnected';

end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  oBit8.Free;
  oBit16.Free;
end;

procedure TMainForm.MenuAct;
begin
    SBcon.Visible    :=  not verbinding;
    SBdiscon.Visible := verbinding;
    //SBVerbOpties.Enabled := not verbinding;
    MainMenu1.Items[1].Items[0].Checked := verbinding;
    MainMenu1.Items[1].Items[0].Enabled := not verbinding;
    MainMenu1.Items[1].Items[1].Checked := not verbinding;
    MainMenu1.Items[1].Items[1].Enabled := verbinding;
    MainMenu1.Items[1].Items[3].Enabled := not verbinding;
    SimulatieAan.Visible := not SimActief;
    SimulatieUit.Visible := SimActief;
    SBSim.Enabled := verbinding;
end;

procedure TMainForm.ApplicationEvents1Idle(Sender: TObject; var Done: Boolean);
begin
   if(SimActief) then
   StatusBar1.Panels[3].Text:='Sim AAN'
  else
   StatusBar1.Panels[3].Text:='Sim UIT';
  MenuAct;
  if CheckBox20.Checked  then CheckBox21.Enabled := false else CheckBox21.Enabled := true;
  if CheckBox21.Checked  then CheckBox20.Enabled := false else CheckBox20.Enabled := true;


  end;

procedure TMainForm.FormShow(Sender: TObject);
var
  ConnList: TStringList;
  Index: Integer;
  ConnName: String;
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
  Connection(ComboBox3.Text);
end;

procedure TMainForm.Online1Click(Sender: TObject);
begin
  DoConnection;
end;

procedure TMainForm.Offline1Click(Sender: TObject);
begin
  DoDisconnection;
          StatusBar1.Panels[0].Text := 'Disconnected';
end;
procedure TMainForm.NewConnectionSettingsClick(Sender: TObject);
var
  Index: Integer;
begin
  ConnectionEditor.SetConnection('');
  If ConnectionEditor.ShowModal = mrOK then
  begin
    Index:=ComboBox3.Items.Add(ConnectionEditor.Connection.Text);
    ComboBox3.ItemIndex:=Index;
    Connection(ComboBox3.Text);
  end;
end;

procedure TMainForm.EditConnectionSettingsClick(Sender: TObject);
begin
  If ComboBox3.ItemIndex >= 0 then
  begin
    ConnectionEditor.SetConnection(ComboBox3.Text);
    If ConnectionEditor.ShowModal = mrOK then Connection(ComboBox3.Text);
  end;
end;

procedure TMainForm.Connection(ConnName: String);
begin
  If ConnName <> '' then
  begin
    Protocol :=ConnectionEditor.IniFile.ReadInteger(ConnName, 'Protocol', 0);
    CPURack  :=ConnectionEditor.IniFile.ReadInteger(ConnName, 'CPURack', 0);
    CPUSlot  :=ConnectionEditor.IniFile.ReadInteger(ConnName, 'CPUSlot', 2);
    COMPort  :=ConnectionEditor.IniFile.ReadString(ConnName, 'COMPort', 'COM1:');
    IPAddress:=ConnectionEditor.IniFile.ReadString(ConnName, 'IPAddress', '');
    IntfTimeout:=ConnectionEditor.IniFile.ReadInteger(ConnName, 'Timeout', 100000);
    Interval:=ConnectionEditor.IniFile.ReadInteger(ConnName, 'Interval', 1000);
    MPISpeed :=ConnectionEditor.IniFile.ReadInteger(ConnName, 'MPISpeed', 2);
    MPILocal:=ConnectionEditor.IniFile.ReadInteger(ConnName, 'MPILocal', 1);
    MPIRemote:=ConnectionEditor.IniFile.ReadInteger(ConnName, 'MPIRemote', 2);
    Case Protocol of
      0 : ConnProtocol := 122; //ISO over TCP
      else  ConnProtocol :=  255; //user defined transport protocol
    end;
  end;
end;

procedure TMainForm.ComboBox3Change(Sender: TObject);
begin
  Connection(ComboBox3.Text);
end;

procedure TMainForm.DoConnection;
Var
 ComName:Array[0..20] of Char;
 Fds:_daveOSserialType;
 S:String;
 i:Integer;
begin
    S:=Trim(IPAddress);
    For i:=1 To Length(S) Do
      ComName[i-1]:=S[i];
    ComName[Length(S)]:=#0;
    fds.rfd:=openSocket(102,COMname);
    fds.wfd:=fds.rfd;

    verbinding := false;
    if (fds.rfd>0) then
    begin
      dcIn:=daveNewInterface(fds, 'IF1',0,ConnProtocol, MPISpeed);
      dcIn^.timeout:=IntfTimeout;
      if (daveInitAdapter(dcIn)=0) then
      begin
        dc :=daveNewConnection(dcIn,2, CPURack, CPUSlot);
        if (daveConnectPLC(dc)=0) then
        begin
          StatusBar1.Panels[0].Text := 'Connected '+ComName;
          verbinding := true;
        end else StatusBar1.Panels[0].Text :='Not successful attempt of connection!';
      end else StatusBar1.Panels[0].Text :='Not successful attempt to initialize  the adapter!';
    end else StatusBar1.Panels[0].Text :='Not successful attempt of creation of the interface!';

    MenuAct;
    displayAct := true;

end;

procedure TMainForm.DoDisconnection;
begin
  if verbinding then
  begin
    daveDisconnectPLC(dc);
    daveDisconnectAdapter(dcIn);
    verbinding := false;
    MenuAct;
    StatusBar1.Panels[0].Text:='Disconnected';
  end;
end;

procedure TMainForm.if1Click(Sender: TObject);
begin
 InfoForm.show;
end;
procedure TMainForm.Instellingen1Click(Sender: TObject);
begin
  InstelForm.Show;
end;

procedure TMainForm.SimulatieUitClick(Sender: TObject);
begin
  SimActief := false;
  CB_IngangenActiveren.Checked := false;
  CB_DisplayActiveren.Checked := false;
end;
procedure TMainForm.SimulatieAanClick(Sender: TObject);
begin
  SimActief := true;
  CB_IngangenActiveren.Checked := true;
  CB_DisplayActiveren.Checked := true;
end;

procedure TMainForm.Timer1Timer(Sender: TObject);
var
 Res:LongInt;
 i : integer;
begin
  if verbinding then
  begin
    res := daveReadBytes(dc, daveInputs, 0, 0, 4, NIL);
    if (res = 0) then
    begin
      For i := 0 to 3 do
           inputs[i] := daveGetU8(dc);
    end;
    //  snelheid
 //   if  IO_MW then
 //   begin
      res := daveReadBytes(dc, daveDB, 130, 52, 20, NIL);
      if (res = 0) then
      begin
        DataAnalog[0] := 0;
        DataAnalog[1] := daveGetFloat(dc);
        DataAnalog[2] := daveGetFloat(dc);
        DataAnalog[3] := daveGetFloat(dc);
        DataAnalog[4] := daveGetFloat(dc);
      end;
 //   end else
 //   begin
 //     res := daveReadBytes(dc, daveOutputs, 0, 704, 10, NIL);
 //     if (res = 0) then
 //     begin
 //       For i := 0 to 4 do
 //         DataAnalog[i] := daveGetU16(dc);
 //     end;
 //   end;
    //uitgangen
    res := daveReadBytes(dc, daveOutputs, 0, 0, 2, NIL);
    if (res = 0) then
    begin
      uitgangen[0]       := daveGetU8(dc);
      uitgangen[1]       := daveGetU8(dc);
    end;


    if CB_IngangenActiveren.Checked = true then
    begin
      DigitaleInputs;
      res := daveWriteBytes(dc, daveInputs, 0, 0, 4, @ingangen);
    end;

     //display
    if CB_DisplayActiveren.Checked = true then
    begin
      res := daveReadBytes(dc, daveDB, 110, 0, 12, NIL);
      For i := 0 to 2 do
        display110[i] := daveGetFloat(dc);
      res := daveReadBytes(dc, daveDB, 110, 20, 4, NIL);
      display110[3] := daveGetFloat(dc);
      res := daveReadBytes(dc, daveDB, 110, 24, 1, NIL);
      display110b := daveGetU8(dc);
      res := daveReadBytes(dc, daveDB, 100, 108, 2, NIL);
      motorD := daveGetS16(dc);


    end;

  end else begin
       For i := 0 to 4 do
         DataAnalog[i] := 0;
       uitgangen[0]    := 0;
       uitgangen[1]    := 0;
       UpdateDisplay;
  end;
  JoystickSig;
  DataToGrafiek;
  DigitaleOutputs;

  if displayAct then
  begin
    UpdateDisplay;
    displayAct := false;
  end;

end;
procedure TMainForm.UpdateDisplay;
var
 Res:LongInt;
 i : integer;
begin
  if verbinding then
  begin

     //display
      res := daveReadBytes(dc, daveDB, 110, 0, 12, NIL);
      For i := 0 to 2 do
        display110[i] := daveGetFloat(dc);
      res := daveReadBytes(dc, daveDB, 110, 20, 4, NIL);
      display110[3] := daveGetFloat(dc);
      res := daveReadBytes(dc, daveDB, 110, 24, 1, NIL);
      display110b := daveGetU8(dc);
      res := daveReadBytes(dc, daveDB, 100, 108, 2, NIL);
      motorD := daveGetS16(dc);

      //instellingen
      res := daveReadBytes(dc, daveDB, 100, 0, 12, NIL);
      For i := 0 to 2 do
        distance[i] := daveGetU32(dc);

      res := daveReadBytes(dc, daveDB, 100, 16, 4, NIL);
      bi := daveGetFloat(dc);;

      res := daveReadBytes(dc, daveDB, 100, 24, 40, NIL);
      For i := 0 to 9 do
        mp[i] := daveGetFloat(dc);

      res := daveReadBytes(dc, daveDB, 100, 68, 4, NIL);
      vasc := daveGetFloat(dc);

      res := daveReadBytes(dc, daveDB, 100, 72, 4, NIL);
      mioc := daveGetU32(dc);

      res := daveReadBytes(dc, daveDB, 100, 120, 4, NIL);
      lb := daveGetFloat(dc);

      res := daveReadBytes(dc, daveDB, 100, 76, 4, NIL);
      smrc := daveGetU32(dc);

      res := daveReadBytes(dc, daveDB, 100, 184, 2, NIL);
      xyra := daveGetU16(dc);

      res := daveReadBytes(dc, daveFlags, 0, 24, 1, NIL);
      fitback := daveGetU8(dc);

  end;
    DisplayDisplay;
end;

procedure TMainForm.DisplayDisplay;
begin
  //display
  if CB_DisplayActiveren.Checked  and verbinding then
  begin
    Case MotorD of
      0 : begin
            PanelMotor1.Color := clRed;
            PanelMotor2.Color := clRed;
            PanelMotor3.Color := clRed;
            PanelMotor4.Color := clRed;
          end;
      1 : begin
            PanelMotor1.Color := clLime;
            PanelMotor2.Color := clRed;
            PanelMotor3.Color := clRed;
            PanelMotor4.Color := clRed;
          end;
      2 : begin
            PanelMotor1.Color := clLime;
            PanelMotor2.Color := clLime;
            PanelMotor3.Color := clRed;
            PanelMotor4.Color := clRed;
          end;
      3 : begin
            PanelMotor1.Color := clLime;
            PanelMotor2.Color := clLime;
            PanelMotor3.Color := clLime;
            PanelMotor4.Color := clRed;
          end;
      4 : begin
            PanelMotor1.Color := clLime;
            PanelMotor2.Color := clLime;
            PanelMotor3.Color := clLime;
            PanelMotor4.Color := clLime;
          end;
      else  begin
            PanelMotor1.Color := clRed;
            PanelMotor2.Color := clRed;
            PanelMotor3.Color := clRed;
            PanelMotor4.Color := clBlue;
            end;
    end;

    LabelD1.Caption := Format('%f', [display110[0]]  );
    LabelD2.Caption := Format('%f', [display110[1]]  );
    LabelD3.Caption := Format('%f', [display110[2]]  );
    LabelD4.Caption := Format('%f', [display110[3]]  );
    oBit8.AsbyteO := display110b;
    if oBit8.BitSet(0) then LabelD5.Caption := 'Automatique' else LabelD5.Caption := 'Manuel';

    LabelB1.Caption := IntToStr(distance[0]);
    LabelB2.Caption := IntToStr(distance[1]);
    LabelB3.Caption := IntToStr(distance[2]);

    LabelB4.Caption := Format('%f', [bi]  );
    LabelB5.Caption := Format('%f', [mp[0]]  );
    LabelB6.Caption := Format('%f', [mp[1]]  );
    LabelB7.Caption := Format('%f', [mp[2]]  );

    LabelC1.Caption := Format('%f', [mp[3]]  );
    LabelC2.Caption := Format('%f', [mp[4]]  );
    LabelC3.Caption := Format('%f', [mp[5]]  );
    LabelC4.Caption := Format('%f', [mp[6]]  );
    LabelC5.Caption := Format('%f', [mp[7]]  );
    LabelC6.Caption := Format('%f', [mp[8]]  );
    LabelC7.Caption := Format('%f', [mp[9]]  );

    LabelE1.Caption := Format('%f', [vasc]  );
    LabelE2.Caption := IntToStr(mioc);
    LabelE3.Caption := Format('%f', [lb]  );
    LabelE4.Caption := IntToStr(smrc);
    LabelE5.Caption := IntToStr(xyra);
    oBit8.AsbyteO := fitback;
    if oBit8.BitSet(4) then  PanelFB.Color := clLime else PanelFB.Color := clWhite;

  end  else begin
    PanelMotor1.Color := clMoneyGreen;
    PanelMotor2.Color := clMoneyGreen;
    PanelMotor3.Color := clMoneyGreen;
    PanelMotor4.Color := clMoneyGreen;

    LabelD1.Caption := '****';
    LabelD2.Caption := '****';
    LabelD3.Caption := '****';
    LabelD4.Caption := '****';
    LabelD5.Caption := '****';

    LabelB1.Caption := '****';
    LabelB2.Caption := '****';
    LabelB3.Caption := '****';
    LabelB4.Caption := '****';
    LabelB5.Caption := '****';
    LabelB6.Caption := '****';
    LabelB7.Caption := '****';

    LabelC1.Caption := '****';
    LabelC2.Caption := '****';
    LabelC3.Caption := '****';
    LabelC4.Caption := '****';
    LabelC5.Caption := '****';
    LabelC6.Caption := '****';
    LabelC7.Caption := '****';

    LabelE1.Caption := '****';
    LabelE2.Caption := '****';
    LabelE3.Caption := '****';
    LabelE4.Caption := '****';
    LabelE5.Caption := '****';

    PanelFB.Color := clMoneyGreen
  end;
end;

procedure TMainForm.JoystickSig;
var
 aa:boolean;
begin
    oBit8.AsbyteO := inputs[3];
    aa := oBit8.BitSet(0);
    oBit8.AsbyteO := inputs[2];
    if oBit8.BitSet(3) then
      Joystick := 46
    else if oBit8.BitSet(4) then
      Joystick := 44
    else if oBit8.BitSet(5) then
      Joystick := 47
    else if aa then
      Joystick := 43
    else
      Joystick := 45;

end;
procedure TMainForm.DataToGrafiek;
var
  i,colour   : integer;
begin
  Graf2[0]  := DataAnalog[0] + InstelForm.SpinEdit1.Value;
  Graf2[1]  := DataAnalog[1] + InstelForm.SpinEdit2.Value;
  Graf2[2]  := DataAnalog[2] + InstelForm.SpinEdit3.Value;
  Graf2[3]  := DataAnalog[3] + InstelForm.SpinEdit4.Value;
  Graf2[4]  := DataAnalog[4] + InstelForm.SpinEdit5.Value;
  Graf2[5]  := Joystick;

  For i := 0 to 5 do
  begin
    Case i of
       0 : colour:= clRed;
       1 : colour:= clBlue;
       2 : colour:= clGreen;
       3 : colour:= clFuchsia;
       4 : colour:= clBlack;
       5 : colour:= clBlack;
    end;
    Chart1.SeriesList.Series[i].AddXY(timeGr,Graf2[i],'bla',colour);
  end;
  timeGr:= timeGr + 1;
  if    timeGr > 600 then
  begin
     Chart1.BottomAxis.Maximum:=timeGr;
     Chart1.BottomAxis.Minimum:=timeGr - 600;
  end;

end;

procedure TMainForm.DigitaleOutputs;
begin
    oBit8.AsbyteO :=  uitgangen[0];
    if oBit8.BitSet(0) then Label00.Color := clYellow else Label00.Color := clMoneyGreen;
    if oBit8.BitSet(1) then Label01.Color := clYellow else Label01.Color := clMoneyGreen;
    if oBit8.BitSet(2) then Label02.Color := clYellow else Label02.Color := clMoneyGreen;
    if oBit8.BitSet(3) then Label03.Color := clYellow else Label03.Color := clMoneyGreen;

    if oBit8.BitSet(4) then Label04.Color := clYellow else Label04.Color := clMoneyGreen;
    if oBit8.BitSet(5) then Label05.Color := clYellow else Label05.Color := clMoneyGreen;
    if oBit8.BitSet(6) then Label06.Color := clYellow else Label06.Color := clMoneyGreen;
    if oBit8.BitSet(7) then Label07.Color := clYellow else Label07.Color := clMoneyGreen;

    oBit8.AsByteO :=  uitgangen[1];
    if oBit8.BitSet(0) then Label10.Color := clYellow else Label10.Color := clMoneyGreen;
    if oBit8.BitSet(1) then Label11.Color := clYellow else Label11.Color := clMoneyGreen;
    if oBit8.BitSet(2) then Label12.Color := clYellow else Label12.Color := clMoneyGreen;
    if oBit8.BitSet(3) then Label13.Color := clYellow else Label13.Color := clMoneyGreen;

    if oBit8.BitSet(4) then Label14.Color := clYellow else Label14.Color := clMoneyGreen;
    if oBit8.BitSet(5) then Label15.Color := clYellow else Label15.Color := clMoneyGreen;
    if oBit8.BitSet(6) then Label16.Color := clYellow else Label16.Color := clMoneyGreen;
    if oBit8.BitSet(7) then Label17.Color := clYellow else Label17.Color := clMoneyGreen;


end;
procedure TMainForm.DigitaleInputs;
begin
    oBit8.AsByteI := ingangen[0];
    if CheckBox00.Checked = true then oBit8.SetBit(0) else oBit8.ClrBit(0);
    if CheckBox01.Checked = true then oBit8.SetBit(1) else oBit8.ClrBit(1);
    if CheckBox02.Checked = true then oBit8.SetBit(2) else oBit8.ClrBit(2);
    if ResetEmergencyStop then oBit8.SetBit(3) else oBit8.ClrBit(3);
    if CheckBox04.Checked = true then oBit8.SetBit(4) else oBit8.ClrBit(4);
    if CheckBox05.Checked = true then oBit8.SetBit(5) else oBit8.ClrBit(5);
    if M02forward  then oBit8.SetBit(6) else oBit8.ClrBit(6);
    if M02backward then oBit8.SetBit(7) else oBit8.ClrBit(7);
    ingangen[0] := oBit8.AsByteI;
    oBit8.AsByteI := ingangen[1];
    if M04forward  then oBit8.SetBit(0) else oBit8.ClrBit(0);
    if M04backward then oBit8.SetBit(1) else oBit8.ClrBit(1);
    if M06forward  then oBit8.SetBit(2) else oBit8.ClrBit(2);
    if M06backward then oBit8.SetBit(3) else oBit8.ClrBit(3);
    if M08forward  then oBit8.SetBit(4) else oBit8.ClrBit(4);
    if M08backward then oBit8.SetBit(5) else oBit8.ClrBit(5);
    if CheckBox16.Checked = true then oBit8.SetBit(6) else oBit8.ClrBit(6);
    if CheckBox17.Checked = true then oBit8.SetBit(7) else oBit8.ClrBit(7);
    ingangen[1] := oBit8.AsByteI;
    oBit8.AsByteI := ingangen[2];
    if CheckBox20.Checked = true then oBit8.SetBit(0) else oBit8.ClrBit(0);
    if CheckBox21.Checked = true then oBit8.SetBit(1) else oBit8.ClrBit(1);
    if CheckBox22.Checked = true then oBit8.SetBit(2) else oBit8.ClrBit(2);
    if joystickSP = true then oBit8.SetBit(3) else oBit8.ClrBit(3);
    if joystickSN = true then oBit8.SetBit(4) else oBit8.ClrBit(4);
    if joystickLP = true then oBit8.SetBit(5) else oBit8.ClrBit(5);
    if CheckBox26.Checked = true then oBit8.SetBit(6) else oBit8.ClrBit(6);
    if SlipPositief then oBit8.SetBit(7) else oBit8.ClrBit(7);
    ingangen[2] := oBit8.AsByteI;
    oBit8.AsByteI := ingangen[3];
    if joystickLN = true then oBit8.SetBit(0) else oBit8.ClrBit(0);
    if SlipNegatief then oBit8.SetBit(1) else oBit8.ClrBit(1);
    ingangen[3] := oBit8.AsByteI;
end;

procedure TMainForm.Button1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  joystickSP := true;
end;
procedure TMainForm.Button1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  joystickSP := false;
end;

procedure TMainForm.Button2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  joystickSN := true;
end;
procedure TMainForm.Button2MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  joystickSN := false;
end;

procedure TMainForm.Button3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  joystickLP := true;
end;
procedure TMainForm.Button3MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  joystickLP := false;
end;

procedure TMainForm.Button4MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  joystickLN := true;
end;
procedure TMainForm.Button4MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  joystickLN := false;
end;

procedure TMainForm.B_M02forwardMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  M02forward := true;
end;

procedure TMainForm.B_M02forwardMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  M02forward := false;
end;

procedure TMainForm.B_M02backwardMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  M02backward := true;
end;

procedure TMainForm.B_M02backwardMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  M02backward := false;
end;

procedure TMainForm.B_M04forwardMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  M04forward := true;
end;

procedure TMainForm.B_M04forwardMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  M04forward := false;
end;

procedure TMainForm.B_M04backwardMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  M04backward := true;
end;

procedure TMainForm.B_M04backwardMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  M04backward := false;
end;

procedure TMainForm.B_M06forwardMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  M06forward := true;
end;

procedure TMainForm.B_M06forwardMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  M06forward := false;
end;

procedure TMainForm.B_M06backwardMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  M06backward := true;
end;

procedure TMainForm.B_M06backwardMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  M06backward := false;
end;

procedure TMainForm.B_M08forwardMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  M08forward := true;
end;

procedure TMainForm.B_M08forwardMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  M08forward := false;
end;

procedure TMainForm.B_M08backwardMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  M08backward := true;
end;

procedure TMainForm.B_M08backwardMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  M08backward := false;
end;

procedure TMainForm.B_SlipPositiefMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  SlipPositief := true;
end;

procedure TMainForm.B_SlipPositiefMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  SlipPositief := false;
end;

procedure TMainForm.B_SlipNegatiefMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  SlipNegatief := true;
end;

procedure TMainForm.B_SlipNegatiefMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  SlipNegatief := false;
end;

procedure TMainForm.B_ResetEmergencyStopMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ResetEmergencyStop := true;
end;

procedure TMainForm.B_ResetEmergencyStopMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ResetEmergencyStop := false;
end;

procedure TMainForm.PanelMotor1Click(Sender: TObject);
var
  motor : Array[0..1] of byte;
 Res:LongInt;
begin
  motor[0] := 0;
  motor[1] := 1;
  if CB_DisplayActiveren.Checked = true then
  begin
    res := daveWriteBytes(dc, daveDB, 100, 108, 2, @motor);
    UpdateDisplay;
  end;
end;

procedure TMainForm.PanelMotor2Click(Sender: TObject);
var
  motor : Array[0..1] of byte;
 Res:LongInt;
begin
  motor[0] := 0;
  motor[1] := 2;
  if CB_DisplayActiveren.Checked = true then
  begin
    res := daveWriteBytes(dc, daveDB, 100, 108, 2, @motor);
    UpdateDisplay;
  end;
end;

procedure TMainForm.PanelMotor3Click(Sender: TObject);
var
  motor : Array[0..1] of byte;
 Res:LongInt;
begin
  motor[0] := 0;
  motor[1] := 3;
  if CB_DisplayActiveren.Checked = true then
  begin
    res := daveWriteBytes(dc, daveDB, 100, 108, 2, @motor);
    UpdateDisplay;
  end;
end;

procedure TMainForm.PanelMotor4Click(Sender: TObject);
var
  motor : Array[0..1] of byte;
 Res:LongInt;
begin
  motor[0] := 0;
  motor[1] := 4;
  if CB_DisplayActiveren.Checked = true then
  begin
    res := daveWriteBytes(dc, daveDB, 100, 108, 2, @motor);
    UpdateDisplay;
  end;
end;

procedure TMainForm.PanelFBClick(Sender: TObject);
var
 Res:LongInt;
begin
  if CB_DisplayActiveren.Checked = true then
  begin
    oBit8.AsbyteO := fitback;
    oBit8.AsbyteI := fitback;
    if oBit8.BitSet(4) then  oBit8.ClrBit(4) else oBit8.SetBit(4);
    fitback := oBit8.AsByteI;
    res := daveWriteBytes(dc, daveFlags, 0, 24, 1, @fitback);
    UpdateDisplay;
  end;
end;

procedure TMainForm.WriteDouble(varR:single);
var
 Res:LongInt;
 VarD : longint;
begin
    VarD := daveToPLCfloat(varR);
    res := daveWriteBytes(dc, daveDB, ValueAdresDb, ValueAdresNum, 4, @varD);
    UpdateDisplay;
end;
procedure TMainForm.WriteInt(varI : integer);
var
 varW : integer;
 varC, varD : word;
 Res:LongInt;
begin
  if  ValueTypeI = true then
  begin
    varW := daveSwapIed_32(varI);
    res := daveWriteBytes(dc, daveDB, ValueAdresDb, ValueAdresNum, 4, @varW)
  end else begin
    varC := varI;
    varD := daveSwapIed_16(varC);
    res := daveWriteBytes(dc, daveDB, ValueAdresDb, ValueAdresNum, 2, @varD)
  end;
    UpdateDisplay;
end;

procedure TMainForm.LabelB1Click(Sender: TObject);
begin
  if CB_DisplayActiveren.Checked and verbinding then
  begin
    ValueTypeI    := true;    //true = 32, false=16
    ValueTypeR    := false;
    ValueAdresDb  := 100;
    ValueAdresNum := 0;
    Value :=  IntToStr(distance[0]);
    FormSetValue.Show;
  end;
end;


procedure TMainForm.LabelB2Click(Sender: TObject);
begin
  if CB_DisplayActiveren.Checked and verbinding then
  begin
    ValueTypeI    := true;    //true = 32, false=16
    ValueTypeR    := false;
    ValueAdresDb  := 100;
    ValueAdresNum := 4;
    Value :=  IntToStr(distance[1]);
    FormSetValue.Show;
  end;
end;

procedure TMainForm.LabelB3Click(Sender: TObject);
begin
  if CB_DisplayActiveren.Checked and verbinding then
  begin
    ValueTypeI    := true;    //true = 32, false=16
    ValueTypeR    := false;
    ValueAdresDb  := 100;
    ValueAdresNum := 8;
    Value :=  IntToStr(distance[2]);
    FormSetValue.Show;
  end;
end;

procedure TMainForm.LabelB4Click(Sender: TObject);
begin
  if CB_DisplayActiveren.Checked and verbinding  then
  begin
    ValueTypeI    := true;    //true = 32, false=16
    ValueTypeR    := true;
    ValueAdresDb  := 100;
    ValueAdresNum := 16;
    Value :=  Format('%f', [bi]);
    FormSetValue.Show;
  end;
end;

procedure TMainForm.LabelB5Click(Sender: TObject);
begin
  if CB_DisplayActiveren.Checked and verbinding  then
  begin
    ValueTypeI    := true;    //true = 32, false=16
    ValueTypeR    := true;
    ValueAdresDb  := 100;
    ValueAdresNum := 24;
    Value :=  Format('%f', [mp[0]]);
    FormSetValue.Show;
  end;
end;

procedure TMainForm.LabelB6Click(Sender: TObject);
begin
  if CB_DisplayActiveren.Checked and verbinding  then
  begin
    ValueTypeI    := true;    //true = 32, false=16
    ValueTypeR    := true;
    ValueAdresDb  := 100;
    ValueAdresNum := 28;
    Value :=  Format('%f', [mp[1]]);
    FormSetValue.Show;
  end;
end;

procedure TMainForm.LabelB7Click(Sender: TObject);
begin
  if CB_DisplayActiveren.Checked and verbinding  then
  begin
    ValueTypeI    := true;    //true = 32, false=16
    ValueTypeR    := true;
    ValueAdresDb  := 100;
    ValueAdresNum := 32;
    Value :=  Format('%f', [mp[2]]);
    FormSetValue.Show;
  end;
end;

procedure TMainForm.LabelC1Click(Sender: TObject);
begin
  if CB_DisplayActiveren.Checked and verbinding  then
  begin
    ValueTypeI    := true;    //true = 32, false=16
    ValueTypeR    := true;
    ValueAdresDb  := 100;
    ValueAdresNum := 36;
    Value :=  Format('%f', [mp[3]]);
    FormSetValue.Show;
  end;
end;

procedure TMainForm.LabelC2Click(Sender: TObject);
begin
  if CB_DisplayActiveren.Checked and verbinding  then
  begin
    ValueTypeI    := true;    //true = 32, false=16
    ValueTypeR    := true;
    ValueAdresDb  := 100;
    ValueAdresNum := 40;
    Value :=  Format('%f', [mp[4]]);
    FormSetValue.Show;
  end;
end;

procedure TMainForm.LabelC3Click(Sender: TObject);
begin
  if CB_DisplayActiveren.Checked and verbinding  then
  begin
    ValueTypeI    := true;    //true = 32, false=16
    ValueTypeR    := true;
    ValueAdresDb  := 100;
    ValueAdresNum := 44;
    Value :=  Format('%f', [mp[5]]);
    FormSetValue.Show;
  end;
end;

procedure TMainForm.LabelC4Click(Sender: TObject);
begin
  if CB_DisplayActiveren.Checked and verbinding  then
  begin
    ValueTypeI    := true;    //true = 32, false=16
    ValueTypeR    := true;
    ValueAdresDb  := 100;
    ValueAdresNum := 48;
    Value :=  Format('%f', [mp[6]]);
    FormSetValue.Show;
  end;
end;

procedure TMainForm.LabelC5Click(Sender: TObject);
begin
  if CB_DisplayActiveren.Checked and verbinding  then
  begin
    ValueTypeI    := true;    //true = 32, false=16
    ValueTypeR    := true;
    ValueAdresDb  := 100;
    ValueAdresNum := 52;
    Value :=  Format('%f', [mp[7]]);
    FormSetValue.Show;
  end;
end;

procedure TMainForm.LabelC6Click(Sender: TObject);
begin
  if CB_DisplayActiveren.Checked and verbinding  then
  begin
    ValueTypeI    := true;    //true = 32, false=16
    ValueTypeR    := true;
    ValueAdresDb  := 100;
    ValueAdresNum := 56;
    Value :=  Format('%f', [mp[8]]);
    FormSetValue.Show;
  end;
end;

procedure TMainForm.LabelC7Click(Sender: TObject);
begin
  if CB_DisplayActiveren.Checked and verbinding  then
  begin
    ValueTypeI    := true;    //true = 32, false=16
    ValueTypeR    := true;
    ValueAdresDb  := 100;
    ValueAdresNum := 60;
    Value :=  Format('%f', [mp[9]]);
    FormSetValue.Show;
  end;
end;

procedure TMainForm.LabelE1Click(Sender: TObject);
begin
  if CB_DisplayActiveren.Checked and verbinding  then
  begin
    ValueTypeI    := true;    //true = 32, false=16
    ValueTypeR    := true;
    ValueAdresDb  := 100;
    ValueAdresNum := 68;
    Value :=  Format('%f', [vasc]);
    FormSetValue.Show;
  end;
end;

procedure TMainForm.LabelE2Click(Sender: TObject);
begin
  //    res := daveReadBytes(dc, daveDB, 100, 72, 4, NIL);
  //    mioc := daveGetU32(dc);
  if CB_DisplayActiveren.Checked and verbinding then
  begin
    ValueTypeI    := true;    //true = 32, false=16
    ValueTypeR    := false;
    ValueAdresDb  := 100;
    ValueAdresNum := 72;
    Value :=  IntToStr(mioc);
    FormSetValue.Show;
  end;
end;

procedure TMainForm.LabelE3Click(Sender: TObject);
begin
  if CB_DisplayActiveren.Checked and verbinding then
  begin
    ValueTypeI    := true;    //true = 32, false=16
    ValueTypeR    := true;
    ValueAdresDb  := 100;
    ValueAdresNum := 120;
    Value :=  Format('%f', [lb]);
    FormSetValue.Show;
  end;
end;

procedure TMainForm.LabelE4Click(Sender: TObject);
begin
     // res := daveReadBytes(dc, daveDB, 100, 76, 4, NIL);
     // smrc := daveGetU32(dc);
  if CB_DisplayActiveren.Checked and verbinding then
  begin
    ValueTypeI    := true;    //true = 32, false=16
    ValueTypeR    := false;
    ValueAdresDb  := 100;
    ValueAdresNum := 76;
    Value :=  IntToStr(smrc);
    FormSetValue.Show;
  end;
end;

procedure TMainForm.LabelE5Click(Sender: TObject);
begin
//      res := daveReadBytes(dc, daveDB, 100, 184, 2, NIL);
//      xyra := daveGetS32(dc);
  if CB_DisplayActiveren.Checked and verbinding then
  begin
    ValueTypeI    := false;    //true = 32, false=16
    ValueTypeR    := false;
    ValueAdresDb  := 100;
    ValueAdresNum := 184;
    Value :=  IntToStr(xyra);
    FormSetValue.Show;
  end;
end;

procedure TMainForm.CB_DisplayActiverenClick(Sender: TObject);
begin
  displayAct := true;
end;


procedure TMainForm.Timer2Timer(Sender: TObject);
var
 Res:LongInt;
 i : integer;
begin
  if CB_berekeningOnOff.Checked AND verbinding then
  begin
    res := daveReadBytes(dc, daveDB, 130, 80, 32, NIL);
    For i := 0 to 7 do
      berData[i] := daveGetFloat(dc);

  end else begin
    For i := 0 to 7 do
      berData[i] := 0.0;
  end;
  DataBer;
end;

procedure TMainForm.DataBer;
var
 i : integer;
begin

  Chart2.SeriesList.Series[0].AddXY(timeGr2,berData[SpinEditSignaal.Value],'bla',clBlue);
  //Chart2.SeriesList.Series[i].AddXY(timeGr2,berData[0],'bla',clGreen);
  // Chart2.SeriesList.Series[i].AddXY(timeGr2,berData[0],'bla',clFuchsia);
  // Chart2.SeriesList.Series[i].AddXY(timeGr2,berData[0],'bla',clBlack);
  timeGr2:= timeGr + 1;
  if    timeGr2 > 600 then
  begin
     Chart1.BottomAxis.Maximum:=timeGr2;
     Chart1.BottomAxis.Minimum:=timeGr2 - 600;
  end;

  if verbinding then
  begin
    LabelBer1.Caption := Format('%f', [berData[0]]  );
    LabelBer2.Caption := Format('%f', [berData[1]]  );
    LabelBer3.Caption := Format('%f', [berData[2]]  );
    LabelBer4.Caption := Format('%f', [berData[3]]  );
    LabelBer5.Caption := Format('%f', [berData[4]]  );
    LabelBer6.Caption := Format('%f', [berData[5]]  );
    LabelBer7.Caption := Format('%f', [berData[6]]  );
    LabelBer8.Caption := Format('%f', [berData[7]]  );
  end else begin
    LabelBer1.Caption := '****';
    LabelBer2.Caption := '****';
    LabelBer3.Caption := '****';
    LabelBer4.Caption := '****';
    LabelBer5.Caption := '****';
    LabelBer6.Caption := '****';
    LabelBer7.Caption := '****';
    LabelBer8.Caption := '****';
  end;

end;

procedure TMainForm.SpinEditSchaalMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if  Chart2.RightAxis.Maximum >  Chart2.RightAxis.Minimum then
  begin
    Chart2.LeftAxis.Maximum := SpinEditSchaal.Value;
    Chart2.LeftAxis.Minimum := -(SpinEditSchaal.Value);
  end else begin
    Chart2.LeftAxis.Minimum := -(SpinEditSchaal.Value);
    Chart2.LeftAxis.Maximum := SpinEditSchaal.Value;
  end;
end;

end.

