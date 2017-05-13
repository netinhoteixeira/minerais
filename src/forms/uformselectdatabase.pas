unit uformselectdatabase;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs,
  ExtCtrls, Buttons, StdCtrls, ActnList, unitconfigfile;

type

  { TFormSelectDatabase }

  TFormSelectDatabase = class(TForm)
    ActionNewDatabase: TAction;
    ActionApply: TAction;
    ActionClearMineral: TAction;
    ActionFormClose: TAction;
    ActionList1: TActionList;
    ActionRefreshEdits: TAction;
    ActionSelectMineralDatabase: TAction;
    ActionSelectSampleDatabase: TAction;
    Edit1: TEdit;
    LabelCurrentDatabase: TLabel;
    OpenDialog1: TOpenDialog;
    Panel1: TPanel;
    Panel2: TPanel;
    SpeedButtonApply: TSpeedButton;
    SpeedButtonClearCurrentMineralDB: TSpeedButton;
    SpeedButtonClose: TSpeedButton;
    SpeedButtonMineralNew: TSpeedButton;
    SpeedButtonMineralSelect: TSpeedButton;
    procedure ActionNewDatabaseExecute(Sender: TObject);
    procedure ActionApplyExecute(Sender: TObject);
    procedure ActionClearMineralExecute(Sender: TObject);
    procedure ActionFormCloseExecute(Sender: TObject);
    procedure ActionRefreshEditsExecute(Sender: TObject);
    procedure ActionSelectMineralDatabaseExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
    procedure ChangeLanguage;
  end;

var
  FormSelectDatabase: TFormSelectDatabase;

implementation
uses udatamodule, unitfichaespecie, unitlanguage, unitframelist;
{$R *.lfm}

{ TFormSelectDatabase }

procedure TFormSelectDatabase.FormCreate(Sender: TObject);
begin
  OpenDialog1.Filter:='ALL FILES |  *.s3db; *.sqlite; *.db;';
end;

procedure TFormSelectDatabase.FormDestroy(Sender: TObject);
begin

end;

procedure TFormSelectDatabase.ChangeLanguage;
begin
  self.Caption:=Lang.SelectDatabase;
  LabelCurrentDatabase.Caption:=Lang.CurrentDatabase;
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
    {FormFichaEspecie.FrameSimpleFilter.AddClasses;
    FormFichaEspecie.FrameSimpleFilter.AddSubclasses;
    FormFichaEspecie.FrameSimpleFilter.AddGroups;
    FormFichaEspecie.FrameSimpleFilter.AddSubgroups;
    }
    FormMain.FormFrameFicha.RefreshComboboxes;
    FormMain.FrameList.RefreshList;
    FormSelectDatabase.Hide;
   end
  else
    ShowMessage(Lang.TheSelectedDatabaseIsNotValid);
end;

procedure TFormSelectDatabase.ActionNewDatabaseExecute(Sender: TObject);
begin
    if Trim(Edit1.Text) <> EmptyStr then
  begin
      if DirectoryExists(Dados.AppPath+'Data') then
      begin
        if FileExists(Dados.AppPath+Edit1.Text+'.s3db') then
        begin
          if Dados.ValidateDatabase(Dados.AppPath+Edit1.Text+
            '.s3db') then
            ShowMessage(Lang.ThereIsAlreadyARecordWithThatName)
          else
          begin
            Dados.CreateDatabase(Dados.AppPath+Edit1.Text+
              '.s3db');
            FormSelectDatabase.Edit1.Text:= Dados.AppPath+Edit1.Text+
              '.s3db';
          end;
        end
        else
        begin
          Dados.CreateDatabase( Dados.AppPath+ Edit1.Text+'.s3db');
          FormSelectDatabase.Edit1.Text:= Dados.AppPath+Edit1.Text+
              '.s3db';
        end;
      end
      else
      begin
        if FileExists(Dados.AppPath+Edit1.Text+'.s3db') then
        begin
          if Dados.ValidateDatabase(Dados.AppPath+Edit1.Text+
            '.s3db') then
            ShowMessage(Lang.ThereIsAlreadyARecordWithThatName)
          else
          begin
            Dados.CreateDatabase(Dados.AppPath+ Edit1.Text+
              '.s3db');
            FormSelectDatabase.Edit1.Text:= Dados.AppPath+Edit1.Text+
              '.s3db';
          end;
        end
        else
        begin
          Dados.CreateDatabase(Dados.AppPath+Edit1.Text+'.s3db');
          FormSelectDatabase.Edit1.Text:= Dados.AppPath+Edit1.Text+
              '.s3db';
        end;
      end;
      Dados.DatabaseMineralFileName := Dados.AppPath+ Edit1.Text+'.s3db';
      ConfigSetDatabase(Dados.DatabaseMineralFileName);
  end
  else
  ShowMessage(Lang.TypeTheNameOfDatabase);
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
          FormMain.FormFrameFicha.EditingMode(True);
        end
        else
          ShowMessage(Lang.TheSelectedDatabaseIsNotValid);
    end
    else
      ShowMessage(Lang.TheSelectedDatabaseIsNotValid);
end;


end.

