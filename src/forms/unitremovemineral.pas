unit unitremovemineral;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs,
  Buttons, ActnList, ExtCtrls, UnitLanguage, unitframelist, unitconfigfile;

type

  { TFormRemoveMineral }

  TFormRemoveMineral = class(TForm)
    ActionClose: TAction;
    ActionRemoveAll: TAction;
    ActionRemove: TAction;
    ActionList1: TActionList;
    ImageList1: TImageList;
    PanelList: TPanel;
    SpeedButtonRemove: TSpeedButton;
    SpeedButtonRemoveAll: TSpeedButton;
    SpeedButtonClose: TSpeedButton;
    procedure ActionCloseExecute(Sender: TObject);
    procedure ActionRemoveAllExecute(Sender: TObject);
    procedure ActionRemoveExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { private declarations }
  public
    procedure ChangeLanguage;
    { public declarations }
  end;

var
  FormRemoveMineral: TFormRemoveMineral;
  FrameList : TFrameList;

implementation
uses udatamodule, unitfichaespecie;
{$R *.lfm}

{ TFormRemoveMineral }

procedure TFormRemoveMineral.FormShow(Sender: TObject);
begin
  FrameList.ListBoxMinerals.Items.Clear;
  FrameList.ListBoxMinerals.Items.AddStrings(Dados.ReturnAllMinerals(FrameList.SetOrder));
end;

procedure TFormRemoveMineral.ChangeLanguage;
begin
  FormRemoveMineral.Caption:=Lang.Remove;
  SpeedButtonRemove.Hint:=Lang.Remove;
  SpeedButtonRemoveAll.Hint:=Lang.RemoveAll;
  SpeedButtonClose.Hint:=Lang.Close;
end;

procedure TFormRemoveMineral.ActionRemoveExecute(Sender: TObject);
begin
//  if Trim(FrameList.ListBoxMinerals.GetSelectedText) <> EmptyStr then
  begin
    Dados.ExcluiMineral(FrameList.ListBoxMinerals.GetSelectedText);
    FrameList.ListBoxMinerals.Items.Delete(
      FrameList.ListBoxMinerals.Items.IndexOf(
      FrameList.ListBoxMinerals.GetSelectedText));
    FormMain.FrameList.RefreshList;
  end
  //else
  //ShowMessage(Lang.SelectRecordToExclude);
end;

procedure TFormRemoveMineral.FormCreate(Sender: TObject);
begin
  FrameList := TFrameList.Create(PanelList);
  with FrameList do
  begin
    Parent:=PanelList;
    Align:=alClient;
  end;
  if SetLanguage(ConfigGetLanguage) then
  begin
    ChangeLanguage;
  end;
end;

procedure TFormRemoveMineral.FormDestroy(Sender: TObject);
begin
  FrameList.Free;
end;

procedure TFormRemoveMineral.ActionRemoveAllExecute(Sender: TObject);
begin
  if (QuestionDlg('Confirmação', 'Deseja remover todos os registros?',
    mtConfirmation, [mrNo, mrYes], 0) = mrYes) then
  begin
    Dados.DatabaseMinerals.ExecSQL('DELETE FROM '+Dados.Table1+' ');
    Dados.DatabaseMinerals.ExecSQL('DELETE FROM '+Dados.Table2+' ');
    Dados.DatabaseMinerals.ExecSQL('DELETE FROM '+Dados.Table3+' ');
    Dados.DatabaseMinerals.ExecSQL('DELETE FROM '+Dados.Table4+' ');
    Dados.DatabaseMinerals.ExecSQL('DELETE FROM '+Dados.Table5+' ');
  end;
end;

procedure TFormRemoveMineral.ActionCloseExecute(Sender: TObject);
begin
  FormRemoveMineral.Visible:=False;
end;

end.

