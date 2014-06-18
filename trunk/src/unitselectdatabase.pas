unit unitselectdatabase;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, BCPanel, BCLabel, Forms, Controls, Graphics,
  Dialogs, ComCtrls, StdCtrls, ExtDlgs, FileCtrl, Buttons, ActnList, INIFiles;

type

  { TFormSelectDatabase }

  TFormSelectDatabase = class(TForm)
    ActionSelectSampleDatabase: TAction;
    ActionSelectMineralDatabase: TAction;
    ActionNewSampleDatabase: TAction;
    ActionNewMineralDatabase: TAction;
    ActionList1: TActionList;
    BCLabel1: TBCLabel;
    BCLabel2: TBCLabel;
    BCLabelMinerais: TBCLabel;
    BCLabelAmostras: TBCLabel;
    BCPanel1: TBCPanel;
    BCPanel2: TBCPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    OpenDialog1: TOpenDialog;
    ScrollBox1: TScrollBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton6: TSpeedButton;
    procedure ActionNewMineralDatabaseExecute(Sender: TObject);
    procedure ActionNewSampleDatabaseExecute(Sender: TObject);
    procedure ActionSelectMineralDatabaseExecute(Sender: TObject);
    procedure ActionSelectSampleDatabaseExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FormSelectDatabase: TFormSelectDatabase;
  ConfigFilePath:String;
  Config:TIniFile;

implementation
 uses unitadddatabase, udatamodule;
{$R *.lfm}

{ TFormSelectDatabase }

procedure TFormSelectDatabase.FormCreate(Sender: TObject);
var MineralDB, SampleDB:String;
begin
  OpenDialog1.Filter:='ALL FILES |  *.s3db; *.sqlite; *.db;';
  if DirectoryExists(GetCurrentDir + '\Data') then
    ConfigFilePath := GetCurrentDir + '\Data\config.ini'
  else
    ConfigFilePath:= GetCurrentDir +'\config.ini';
  {Config := TINIFile.Create(ConfigFilePath);
  MineralDB:=Config.ReadString('Database', 'DefaultMineralDatabase', '');
  if (MineralDB <> EmptyStr) then
    if FileExists(MineralDB) then
    if Dados.ChooseDatabase('mineral',MineralDB) then
     begin
      Edit3.Text:=MineralDB;
      Dados.DatabaseMineralFileName:=MineralDB;
     end;
  SampleDB:=Config.ReadString('Database', 'DefaultSampleDatabase', '');
  if (SampleDB <> EmptyStr) then
    if FileExists(SampleDB) then
    if Dados.ChooseDatabase('amostra',SampleDB) then
     begin
      Edit4.Text:=SampleDB;
      Dados.DatabaseSampleFileName:=SampleDB;
     end;
  Config.Free;   }
end;

procedure TFormSelectDatabase.ActionNewMineralDatabaseExecute(Sender: TObject);
begin
  FormAddDatabase.Tipo:='mineral';
  FormAddDatabase.Show;
end;

procedure TFormSelectDatabase.ActionNewSampleDatabaseExecute(Sender: TObject);
begin
  FormAddDatabase.Tipo:='amostra';
  FormAddDatabase.Show;
end;

procedure TFormSelectDatabase.ActionSelectMineralDatabaseExecute(Sender: TObject
  );
begin
  if OpenDialog1.Execute then
   if OpenDialog1.FileName <> EmptyStr then
    begin
      if FileExists(OpenDialog1.FileName) then
       if Dados.ChooseDatabase('mineral', OpenDialog1.FileName) then
        begin
          Dados.DatabaseMineralFileName:= OpenDialog1.FileName;
          Edit1.Text:=Dados.DatabaseMineralFileName;
        end
        else
          ShowMessage('O banco de dados não é compatível.');
    end
    else
      ShowMessage('Não há banco de dados com este nome.')
end;

procedure TFormSelectDatabase.ActionSelectSampleDatabaseExecute(Sender: TObject
  );
begin
  if OpenDialog1.Execute then
   if OpenDialog1.FileName <> EmptyStr then
   begin
    if FileExists(OpenDialog1.FileName) then
       if Dados.ChooseDatabase('amostra', OpenDialog1.FileName) then
        begin
          Dados.DatabaseSampleFileName:= OpenDialog1.FileName;
          Edit2.Text:=Dados.DatabaseSampleFileName;
        end
        else
          ShowMessage('O banco de dados não é compatível.');
   end
   else
     ShowMessage('Não há banco de dados com este nome.');
end;

procedure TFormSelectDatabase.FormShow(Sender: TObject);
begin
  Edit1.Text:=Dados.DatabaseMineralFileName;
  Edit2.Text:=Dados.DatabaseSampleFileName;
end;

end.

