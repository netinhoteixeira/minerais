unit uformcreatedatabase;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, Buttons, ActnList, unitlanguage, unitconfigfile;

type

  { TFormCreateDB }

  TFormCreateDB = class(TForm)
    ActionApply: TAction;
    ActionClose: TAction;
    ActionList1: TActionList;
    Edit1: TEdit;
    Label1: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    SpeedButtonApply: TSpeedButton;
    SpeedButtonClose: TSpeedButton;
    procedure ActionApplyExecute(Sender: TObject);
    procedure ActionCloseExecute(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
    procedure ChangeLanguage;
  end;

var
  FormCreateDB: TFormCreateDB;

implementation
uses udatamodule, unitfichaespecie;

{$R *.lfm}

{ TFormCreateDB }

procedure TFormCreateDB.ActionApplyExecute(Sender: TObject);
var Path:String;
begin
  if Trim(Edit1.Text) <> EmptyStr then
  begin
    Path:=Dados.AppPath+Edit1.Text+'.s3db';
    if not FileExists(Path) then
    begin
      Dados.CreateDatabase(Path);
      if Dados.SetDatabase(Path) then
      begin
        ShowMessage(Lang.DatabaseCreatedAt+path);
        FormMain.RefreshList;
        self.Hide
      end
      else
        ShowMessage(Lang.TheSelectedDatabaseIsNotValid);
    end
    else
      ShowMessage(Lang.ThereIsAlreadyARecordWithThatName)
  end
  else
    ShowMessage(Lang.TypeTheNameOfDatabase);
end;

procedure TFormCreateDB.ActionCloseExecute(Sender: TObject);
begin
  self.Visible:=False;
end;

procedure TFormCreateDB.ChangeLanguage;
begin
   self.Caption:=Lang.CreateMineralDatabase;
   Label1.Caption:=Lang.TypeTheNameOfDatabase;
   SpeedButtonApply.Hint:=Lang.Confirm;
   SpeedButtonClose.Hint:=Lang.Close;
end;

end.

