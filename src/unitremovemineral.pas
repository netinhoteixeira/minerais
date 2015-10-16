unit unitremovemineral;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, BCPanel, Forms, Controls, Graphics, Dialogs,
  Buttons, StdCtrls, ActnList, INIFiles, UnitLanguage;

type

  { TFormRemoveMineral }

  TFormRemoveMineral = class(TForm)
    ActionClose: TAction;
    ActionRemoveAll: TAction;
    ActionRemove: TAction;
    ActionList1: TActionList;
    BCPanel1: TBCPanel;
    BCPanel2: TBCPanel;
    ImageList1: TImageList;
    ListBox1: TListBox;
    SpeedButtonRemove: TSpeedButton;
    SpeedButtonRemoveAll: TSpeedButton;
    SpeedButtonClose: TSpeedButton;
    procedure ActionCloseExecute(Sender: TObject);
    procedure ActionRemoveAllExecute(Sender: TObject);
    procedure ActionRemoveExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { private declarations }
  public
    procedure ChangeLanguage;
    { public declarations }
  end;

var
  FormRemoveMineral: TFormRemoveMineral;
  Config:TIniFile;

implementation
uses udatamodule, unitformconfigurations;
{$R *.lfm}

{ TFormRemoveMineral }

procedure TFormRemoveMineral.FormShow(Sender: TObject);
begin
  Listbox1.Clear;
  Listbox1.Items.AddStrings(Dados.ReturnAllMinerals);
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
  if Trim(Listbox1.GetSelectedText) <> EmptyStr then
  begin
    Dados.ExcluiMineral(Listbox1.GetSelectedText);
    Listbox1.Items.Delete(Listbox1.Items.IndexOf(
      Listbox1.GetSelectedText));
  end
  else
  ShowMessage('Selecione um registro para excluir.');
end;

procedure TFormRemoveMineral.FormCreate(Sender: TObject);
begin
  Config:=TIniFile.Create(Dados.Caminho+'\config.ini');
  if SetLanguage(Config.ReadString('Configurations', 'Language', 'English')) then
  begin
    ChangeLanguage;
  end;
  Config.Free;
end;

procedure TFormRemoveMineral.ActionRemoveAllExecute(Sender: TObject);
begin
  if (QuestionDlg('Confirmação', 'Deseja remover todos os registros?',
    mtConfirmation, [mrNo, mrYes], 0) = mrYes) then
  begin
    Dados.DatabaseMinerals.ExecSQL('DELETE FROM minerais');
  end;
end;

procedure TFormRemoveMineral.ActionCloseExecute(Sender: TObject);
begin
  FormRemoveMineral.Visible:=False;
end;

end.

