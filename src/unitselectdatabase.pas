unit unitselectdatabase;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, BCPanel, BCLabel, Forms, Controls, Graphics,
  Dialogs, StdCtrls, Buttons, ActnList, ExtCtrls, unitconfigfile;

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

implementation
 uses unitadddatabase, udatamodule, unitfichaespecie, unitlanguage, unitframelist;
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
  if Dados.ValidateDatabase(Edit1.Text) then
   begin
    //Dados.SetDatabase(Edit1.Text);
    FormFichaEspecie.FrameSimpleFilter.AddClasses;
    FormFichaEspecie.FrameSimpleFilter.AddSubclasses;
    FormFichaEspecie.FrameSimpleFilter.AddGroups;
    FormFichaEspecie.FrameSimpleFilter.AddSubgroups;
    FormFichaEspecie.FormFrameFicha.RefreshComboboxes;
    FormFichaEspecie.FrameList.RefreshList;
    FormSelectDatabase.Hide;
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
       if Dados.ValidateDatabase(OpenDialog1.FileName) then
        begin
          Dados.DatabaseMineralFileName:= OpenDialog1.FileName;
          Edit1.Text:=Dados.DatabaseMineralFileName;
          ConfigSetDatabase(Dados.DatabaseMineralFileName);
          FormFichaEspecie.FormFrameFicha.EditingMode(True);
        end
        else
          ShowMessage(Lang.TheSelectedDatabaseIsNotValid);
    end
    else
      ShowMessage(Lang.TheSelectedDatabaseIsNotValid);
end;

end.

