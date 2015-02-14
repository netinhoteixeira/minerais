unit unitformconfigurations;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, BCPanel, BCLabel, Forms, Controls, Graphics,
  Dialogs, StdCtrls, Buttons, INIFiles, unitLanguage;

type

  { TFormConfigurations }

  TFormConfigurations = class(TForm)
    BCLabelCurrentLanguage: TBCLabel;
    BCLabelFontSize: TBCLabel;
    BCPanel1: TBCPanel;
    BCPanel2: TBCPanel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    OpenDialog1: TOpenDialog;
    SpeedButtonClose: TSpeedButton;
    SpeedButtonCreateLanguageFile: TSpeedButton;
    SpeedButtonSelectLanguageFile: TSpeedButton;
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButtonCloseClick(Sender: TObject);
  private
    { private declarations }
  public
    procedure ChangeLanguage;
    { public declarations }
  end;

var
  FormConfigurations: TFormConfigurations;
  Config:TIniFile;

implementation
uses ubibliografia, unitajuda, unitfichaespecie, unitremovemineral, udatamodule,
  unitaddmineral, unitselectdatabase;
{$R *.lfm}

{ TFormConfigurations }

procedure TFormConfigurations.ComboBox2Change(Sender: TObject);
begin
  Config:=TIniFile.Create(Dados.Caminho+'\config.ini');
  if SetLanguage(Combobox2.Text) then
  begin
    Config.WriteString('Configurations', 'Language', Combobox2.Text);

    SetLanguage(Combobox2.Text);
    BCLabelCurrentLanguage.Caption:=Lang.CurrentLanguage;
    SpeedButtonSelectLanguageFile.Hint:=Lang.SelectLanguageFile;
    SpeedButtonCreateLanguageFile.Hint:=Lang.CreateLanguageFile;
    SpeedButtonClose.Hint:=Lang.Close;
    FormFichaEspecie.ChangeLanguage;
    FormRemoveMineral.ChangeLanguage;
    FormBIbliografia.ChangeLanguage;
    FormAjuda.ChangeLanguage;
  end;
  Config.Free;
end;

procedure TFormConfigurations.FormCreate(Sender: TObject);
begin
  OpenDialog1.Filter:='All Files | *.csv; *.txt; *.dat;';
  Config:=TIniFile.Create(Dados.Caminho+'\config.ini');
  Combobox2.Text:=Config.ReadString('Configurations', 'Language','English');
  ChangeLanguage;
  Config.Free;
end;

procedure TFormConfigurations.SpeedButtonCloseClick(Sender: TObject);
begin
  FormConfigurations.Hide;
end;

procedure TFormConfigurations.ChangeLanguage;
begin

end;

procedure TFormConfigurations.ComboBox1Change(Sender: TObject);
begin
  FormFichaEspecie.PageControlFicha.Font.Size := StrToInt(Combobox1.Text);
  FormFichaEspecie.ListBoxMinerais.Font.Size := StrToInt(Combobox1.Text);
  FormFichaEspecie.EditNomeMineral.Font.Size:=StrToInt(Combobox1.Text);
  FormRemoveMineral.ListBox1.Font.Size:=StrToInt(Combobox1.Text);
  FormBibliografia.Memo1.Font.Size:=StrToInt(Combobox1.Text);
  FormAddMineral.PageControlFicha.Font.Size:=StrToInt(Combobox1.Text);
  FormAjuda.ChangeLanguage;
  FormSelectDatabase.ChangeLanguage;
end;

end.

