unit unitFormLanguage;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, BCPanel, BCLabel, Forms, Controls, Graphics,
  Dialogs, Buttons, StdCtrls, ActnList, INIFiles, unitLanguage,
  unittranslatefile;

type

  { TFormLanguage }

  TFormLanguage = class(TForm)
    ActionSelectLanguageFile: TAction;
    ActionCreateLanguageFile: TAction;
    ActionRefreshLanguage: TAction;
    ActionList1: TActionList;
    BCLabelCurrentLanguage: TBCLabel;
    BCPanel1: TBCPanel;
    BCPanel2: TBCPanel;
    ComboBox1: TComboBox;
    OpenDialog1: TOpenDialog;
    SpeedButtonSelectLanguageFile: TSpeedButton;
    SpeedButtonCreateLanguageFile: TSpeedButton;
    SpeedButtonClose: TSpeedButton;
    procedure ActionCreateLanguageFileExecute(Sender: TObject);
    procedure ActionRefreshLanguageExecute(Sender: TObject);
    procedure ActionSelectLanguageFileExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButtonCloseClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FormLanguage: TFormLanguage;
  Config:TIniFile;
  CurrentLanguage:String;

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
    if CurrentLanguage <> Combobox1.Text then
    begin
      CurrentLanguage:=Combobox1.Text;
      ShowMessage(Lang.YouMustRestartTheProgram);
    end;
  end;
  Config.Free;
end;

procedure TFormLanguage.ActionSelectLanguageFileExecute(Sender: TObject);
begin
  OpenDialog1.FileName:=EmptyStr;
  if OpenDialog1.Execute then
  begin
    if OpenDialog1.FileName <> EmptyStr then
    begin

    end;
  end;
end;

procedure TFormLanguage.ActionCreateLanguageFileExecute(Sender: TObject);
begin
  FormTranslate.Show;
end;

procedure TFormLanguage.FormCreate(Sender: TObject);
begin
  OpenDialog1.Filter:='All Files | *.csv; *.txt; *.dat;';
  Config:=TIniFile.Create(Dados.Caminho+'\config.ini');
  CurrentLanguage:= Config.ReadString('Configurations', 'Language','English');
  Combobox1.Text:=CurrentLanguage;
  Config.Free;
end;

procedure TFormLanguage.SpeedButtonCloseClick(Sender: TObject);
begin
  FormLanguage.Hide;
end;

end.

