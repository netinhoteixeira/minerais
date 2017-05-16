unit uformloaddatabase;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, Buttons, ActnList, unitlanguage, unitconfigfile;

type

  { TFormSelectDB }

  TFormSelectDB = class(TForm)
    ActionOpen: TAction;
    ActionClose: TAction;
    ActionLoad: TAction;
    ActionList1: TActionList;
    Edit1: TEdit;
    Label1: TLabel;
    OpenDialog1: TOpenDialog;
    Panel1: TPanel;
    Panel2: TPanel;
    SpeedButtonOpen: TSpeedButton;
    SpeedButtonApply: TSpeedButton;
    SpeedButtonClose: TSpeedButton;
    procedure ActionCloseExecute(Sender: TObject);
    procedure ActionLoadExecute(Sender: TObject);
    procedure ActionOpenExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
    procedure ChangeLanguage;
  end;

var
  FormSelectDB: TFormSelectDB;

implementation
uses udatamodule, unitfichaespecie;

{$R *.lfm}

{ TFormSelectDB }

procedure TFormSelectDB.ActionLoadExecute(Sender: TObject);
begin
  if Dados.SetDatabase(Edit1.Text) then
   begin
    FormMain.FrameSimpleFilter.AddClasses;
    FormMain.FrameSimpleFilter.AddSubclasses;
    FormMain.FrameSimpleFilter.AddGroups;
    FormMain.FrameSimpleFilter.AddSubgroups;
    FormMain.FormFrameFicha.RefreshComboboxes;
    FormMain.FrameList.RefreshList;
    ConfigSetDatabase(Edit1.Text);
    self.Hide;
   end
  else
    ShowMessage(Lang.TheSelectedDatabaseIsNotValid);
end;

procedure TFormSelectDB.ActionOpenExecute(Sender: TObject);
begin
  if OpenDialog1.Execute then
   if OpenDialog1.FileName <> EmptyStr then
    begin
      if FileExists(OpenDialog1.FileName) then
       if Dados.SetDatabase(OpenDialog1.FileName) then
        begin
          Edit1.Text:=Dados.DatabaseMineralFileName;
          FormMain.FormFrameFicha.EditingMode(True);
        end
        else
          ShowMessage(Lang.TheSelectedDatabaseIsNotValid);
    end
    else
      ShowMessage(Lang.TheSelectedDatabaseIsNotValid);
end;

procedure TFormSelectDB.FormCreate(Sender: TObject);
begin
  OpenDialog1.Filter:='ALL FILES |  *.s3db; *.sqlite; *.db;';
end;

procedure TFormSelectDB.ChangeLanguage;
begin
  self.Caption:=Lang.SelectDatabase;
  Label1.Caption:=Lang.Database;
  SpeedButtonApply.Hint:=Lang.Confirm;
  SpeedButtonClose.Hint:=Lang.Close;
  SpeedButtonOpen.Hint:=Lang.OpenDatabase;
end;

procedure TFormSelectDB.ActionCloseExecute(Sender: TObject);
begin
  self.Visible:=False;
end;

end.

