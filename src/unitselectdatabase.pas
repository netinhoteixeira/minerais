unit unitselectdatabase;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, BCPanel, BCLabel, Forms, Controls, Graphics,
  Dialogs, StdCtrls, Buttons, ActnList, ExtCtrls, INIFiles;

type

  { TFormSelectDatabase }

  TFormSelectDatabase = class(TForm)
    ActionApply: TAction;
    ActionClearMineral: TAction;
    ActionClearSample: TAction;
    ActionNewSampleDatabase: TAction;
    ActionRefreshEdits: TAction;
    ActionFormClose: TAction;
    ActionSelectSampleDatabase: TAction;
    ActionSelectMineralDatabase: TAction;
    ActionNewMineralDatabase: TAction;
    ActionList1: TActionList;
    BCLabelMineralDB: TBCLabel;
    BCPanel1: TBCPanel;
    BCPanel3: TBCPanel;
    Edit1: TEdit;
    OpenDialog1: TOpenDialog;
    ScrollBox1: TScrollBox;
    SpeedButtonApply: TSpeedButton;
    SpeedButtonClearCurrentMineralDB: TSpeedButton;
    SpeedButtonClose: TSpeedButton;
    SpeedButtonMineralNew: TSpeedButton;
    SpeedButtonMineralSelect: TSpeedButton;
    procedure ActionApplyExecute(Sender: TObject);
    procedure ActionClearMineralExecute(Sender: TObject);
    procedure ActionFormCloseExecute(Sender: TObject);
    procedure ActionNewMineralDatabaseExecute(Sender: TObject);
    procedure ActionRefreshEditsExecute(Sender: TObject);
    procedure ActionSelectMineralDatabaseExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    procedure ChangeLanguage;
    { public declarations }
  end;

var
  FormSelectDatabase: TFormSelectDatabase;
  ConfigFilePath:String;
  Config:TIniFile;

implementation
 uses unitadddatabase, udatamodule, unitfichaespecie, unitlanguage;
{$R *.lfm}

{ TFormSelectDatabase }

procedure TFormSelectDatabase.FormCreate(Sender: TObject);
begin
  OpenDialog1.Filter:='ALL FILES |  *.s3db; *.sqlite; *.db;';
  ChangeLanguage;
end;

procedure TFormSelectDatabase.ChangeLanguage;
begin
  FormSelectDatabase.Caption:=Lang.Database;
  BCLabelMineralDB.Caption:=Lang.CurrentDatabase;
  SpeedButtonMineralSelect.Hint:=Lang.SelectMineralDatabase;
  SpeedButtonClearCUrrentMineralDB.Hint:=Lang.Clear;
  SpeedButtonMineralNew.Hint:=Lang.CreateMineralDatabase;
  SpeedButtonClose.Hint:=Lang.Close;
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
  Edit1.Text:=EmptyStr;
end;

procedure TFormSelectDatabase.ActionApplyExecute(Sender: TObject);
begin
  if Dados.ChooseDatabase('mineral', Edit1.Text) then
   begin
    { to do: adaptar para frameficha
    Dados.SetDatabase(Edit1.Text);
    FormFichaEspecie.AtualizarLista;
    FormFichaEspecie.Preenche_Classes;
    FormFichaEspecie.Preenche_Subclasses;
    FormFichaEspecie.Preenche_Grupos;
    FormFichaEspecie.Preenche_SubGrupos;
    FormFichaEspecie.RefreshImages;
    FormSelectDatabase.Hide;
    }
   end
  else
    ShowMessage(Lang.TheSelectedDatabaseIsNotValid);
end;

procedure TFormSelectDatabase.ActionRefreshEditsExecute(Sender: TObject);
begin
  Edit1.Text:=Dados.DatabaseMineralFileName;
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
          Config:=TIniFile.Create(Dados.Caminho+'\config.ini');
          Config.WriteString('Database', 'Mineral',
            Dados.DatabaseMineralFileName);
          Config.Free;
        end
        else
          ShowMessage(Lang.TheSelectedDatabaseIsNotValid);
    end
    else
      ShowMessage(Lang.TheSelectedDatabaseIsNotValid);
end;

end.

