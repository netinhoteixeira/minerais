unit unitFormLanguage;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, BCPanel, BCLabel, Forms, Controls, Graphics,
  Dialogs, Buttons, StdCtrls, ActnList, INIFiles, unitLanguage;

type

  { TFormLanguage }

  TFormLanguage = class(TForm)
    ActionRefreshLanguage: TAction;
    ActionList1: TActionList;
    BCLabelCurrentLanguage: TBCLabel;
    BCPanel1: TBCPanel;
    BCPanel2: TBCPanel;
    ComboBox1: TComboBox;
    SpeedButtonSelectLanguageFile: TSpeedButton;
    SpeedButtonCreateLanguageFile: TSpeedButton;
    SpeedButtonClose: TSpeedButton;
    procedure ActionRefreshLanguageExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FormLanguage: TFormLanguage;
  Config:TIniFile;

implementation
uses udatamodule;
{$R *.lfm}

{ TFormLanguage }

procedure TFormLanguage.ActionRefreshLanguageExecute(Sender: TObject);
begin
  Config:=TIniFile.Create(Dados.Caminho+'\config.ini');
  if SetLanguage(Combobox1.Text) then
  begin
    Config.WriteString('Configurations', 'Language', Combobox1.Text);
    BCLabelCurrentLanguage.Caption:=Lang.CurrentLanguage;
    SpeedButtonSelectLanguageFile.Hint:=Lang.SelectLanguageFile;
    SpeedButtonCreateLanguageFile.Hint:=Lang.CreateLanguageFile;
    SpeedButtonClose.Hint:=Lang.Close;
    ShowMessage(Lang.YouMustRestartTheProgram);
  end;
  Config.Free;
end;

procedure TFormLanguage.FormCreate(Sender: TObject);
begin

end;

end.

