
unit UnitAjuda; 

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, IpHtml,  INIFiles,
  Ipfilebroker, Forms, Controls, Dialogs, ExtCtrls,
  unitLanguage;

type

  { TFormAjuda }

  TFormAjuda = class(TForm)
    IpFileDataProvider1: TIpFileDataProvider;
    IpHtmlPanel1: TIpHtmlPanel;
    Panel1: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { private declarations }
  public
    procedure ChangeLanguage;
    { public declarations }
  end; 

var
  FormAjuda: TFormAjuda;
  Config:TIniFile;

implementation
uses udatamodule, unitformconfigurations;

{$R *.lfm}

{ TFormAjuda }

procedure TFormAjuda.FormShow(Sender: TObject);
begin

end;

procedure TFormAjuda.ChangeLanguage;
begin
  FormAjuda.Caption:=Lang.Help;
end;

procedure TFormAjuda.FormCreate(Sender: TObject);
begin
  if FileExists(GetCurrentDir+'\Ajuda\index.html') then
    Iphtmlpanel1.OpenURL(GetCurrentDir+'\Ajuda\index.html');
  Config:=TIniFile.Create(Dados.Caminho+'\config.ini');
  if SetLanguage(Config.ReadString('Configurations', 'Language', 'English')) then
  begin
    ChangeLanguage;
  end;
  Config.Free;
end;

end.