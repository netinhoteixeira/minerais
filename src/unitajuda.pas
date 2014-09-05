
unit UnitAjuda; 

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, IpHtml,  INIFiles,
  Ipfilebroker, Forms, Controls, Dialogs, ExtCtrls,
  StdCtrls, unitLanguage;

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
    { public declarations }
  end; 

var
  FormAjuda: TFormAjuda;
  Config:TIniFile;

implementation
uses udatamodule;

{$R *.lfm}

{ TFormAjuda }

procedure TFormAjuda.FormShow(Sender: TObject);
begin

end;

procedure TFormAjuda.FormCreate(Sender: TObject);
begin
  if FileExists(GetCurrentDir+'\Ajuda\index.html') then
    Iphtmlpanel1.OpenURL(GetCurrentDir+'\Ajuda\index.html');
  Config:=TIniFile.Create(Dados.Caminho+'\config.ini');
  if SetLanguage(Config.ReadString('Configurations', 'Language', 'Português')) then
  begin
    FormAjuda.Caption:=Lang.Help;
  end;
  Config.Free;
end;

end.
