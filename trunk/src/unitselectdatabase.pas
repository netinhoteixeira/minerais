unit unitselectdatabase;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, BCPanel, BCLabel, Forms, Controls, Graphics,
  Dialogs, StdCtrls, Buttons, ActnList, INIFiles;

type

  { TFormSelectDatabase }

  TFormSelectDatabase = class(TForm)
    ActionClearSample: TAction;
    ActionClearMineral: TAction;
    ActionRefreshEdits: TAction;
    ActionFormClose: TAction;
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
    BCPanel3: TBCPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    OpenDialog1: TOpenDialog;
    ScrollBox1: TScrollBox;
    SpeedButtonClearCurrentMineralDB: TSpeedButton;
    SpeedButtonClearCurrentSampleDB: TSpeedButton;
    SpeedButtonMineralNew: TSpeedButton;
    SpeedButtonSampleNew: TSpeedButton;
    SpeedButtonSampleSelect: TSpeedButton;
    SpeedButtonClose: TSpeedButton;
    SpeedButtonMineralSelect: TSpeedButton;
    procedure ActionClearMineralExecute(Sender: TObject);
    procedure ActionClearSampleExecute(Sender: TObject);
    procedure ActionFormCloseExecute(Sender: TObject);
    procedure ActionNewMineralDatabaseExecute(Sender: TObject);
    procedure ActionNewSampleDatabaseExecute(Sender: TObject);
    procedure ActionRefreshEditsExecute(Sender: TObject);
    procedure ActionSelectMineralDatabaseExecute(Sender: TObject);
    procedure ActionSelectSampleDatabaseExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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
var Aux: String;
begin
  OpenDialog1.Filter:='ALL FILES |  *.s3db; *.sqlite; *.db;';
  Config := TIniFile.Create(Dados.Caminho+'\config.ini');
  Aux:=Trim(Config.ReadString('Database','Mineral',EmptyStr));
  if Aux <> EmptyStr then
  begin
    if FileExists(Aux) then
    begin
      if Dados.ChooseDatabase('mineral', Aux) then
      begin
        Dados.DatabaseMineralFileName:=Aux;
        Edit1.Text:=Aux
      end
      else
      begin
        Dados.DatabaseMineralFileName:=EmptyStr;
        Config.WriteString('Database', 'Mineral', EmptyStr);
        Edit1.Text:=EmptyStr;
      end;
    end
    else
    begin
      Config.WriteString('Database', 'Mineral', EmptyStr);
      Dados.DatabaseMineralFileName:=EmptyStr;
      Edit1.Text:=EmptyStr;
    end;
  end
  else
  begin
    Config.WriteString('Database', 'Mineral', EmptyStr);
    Dados.DatabaseMineralFileName:=EmptyStr;
    Edit1.Text:=EmptyStr;
  end;

  Aux:=Trim(Config.ReadString('Database','Sample',EmptyStr));
  if Aux <> EmptyStr then
  begin
    if FileExists(Aux) then
    begin
      if Dados.ChooseDatabase('amostra', Aux) then
      begin
        Dados.DatabaseSampleFileName:=Aux;
        Edit2.Text:=Aux;
      end
      else
      begin
        Dados.DatabaseSampleFileName:=EmptyStr;
        Config.WriteString('Database', 'Sample', EmptyStr) ;
        Edit2.Text:=EmptyStr;
      end;
    end
    else
    begin
      Config.WriteString('Database', 'Sample', EmptyStr);
      Dados.DatabaseSampleFileName:=EmptyStr;
      Edit2.Text:=EmptyStr;
    end;
  end
  else
  begin
    Config.WriteString('Database', 'Sample', EmptyStr);
    Dados.DatabaseSampleFileName:=EmptyStr;
    Edit2.Text:=EmptyStr;
  end;
end;

procedure TFormSelectDatabase.ActionNewMineralDatabaseExecute(Sender: TObject);
begin
  FormAddDatabase.Tipo:='mineral';
  FormAddDatabase.Show;
end;

procedure TFormSelectDatabase.ActionFormCloseExecute(Sender: TObject);
begin
  FormSelectDatabase.Visible:=False;
end;

procedure TFormSelectDatabase.ActionClearMineralExecute(Sender: TObject);
begin
  Dados.DatabaseMineralFileName:=EmptyStr;
  Edit1.Text:=EmptyStr;
end;

procedure TFormSelectDatabase.ActionClearSampleExecute(Sender: TObject);
begin
  Dados.DatabaseSampleFileName:=EmptyStr;
  Edit2.Text:=EmptyStr;
end;

procedure TFormSelectDatabase.ActionNewSampleDatabaseExecute(Sender: TObject);
begin
  FormAddDatabase.Tipo:='amostra';
  FormAddDatabase.Show;
end;

procedure TFormSelectDatabase.ActionRefreshEditsExecute(Sender: TObject);
begin
  Edit1.Text:=Dados.DatabaseMineralFileName;
  Edit2.Text:=Dados.DatabaseSampleFileName;
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
          Config.WriteString('Database', 'Mineral',
            Dados.DatabaseMineralFileName);
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
          Config.WriteString('Database', 'Sample', Dados.DatabaseSampleFileName);
        end
        else
          ShowMessage('O banco de dados não é compatível.');
   end
   else
     ShowMessage('Não há banco de dados com este nome.');
end;

end.

