
unit UnitAjuda; 

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, IpHtml,
  Ipfilebroker, Forms, Controls, Dialogs, ExtCtrls,
  unitLanguage, unitconfigfile;

type

  { TFormHelp }

  TFormHelp = class(TForm)
    IpFileDataProvider1: TIpFileDataProvider;
    IpHtmlPanel1: TIpHtmlPanel;
    Panel1: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { private declarations }
  public
    procedure ChangeLanguage;
    { public declarations }
  end;

  const nome_arq: String = '\doc\index.html';

var
  FormHelp: TFormHelp;

implementation
uses udatamodule;

{$R *.lfm}

{ TFormHelp }

procedure TFormHelp.FormShow(Sender: TObject);
begin

end;

procedure TFormHelp.ChangeLanguage;
begin
  FormHelp.Caption:=Lang.Help;
end;

procedure TFormHelp.FormCreate(Sender: TObject);
begin
  if FileExists(GetCurrentDir+nome_arq) then
  begin
    Iphtmlpanel1.DataProvider:=IpFileDataProvider1;
    Iphtmlpanel1.OpenURL(GetCurrentDir+nome_arq);
  end;
  if SetLanguage(ConfigGetLanguage) then
  begin
    ChangeLanguage;
  end;
end;

procedure TFormHelp.FormDestroy(Sender: TObject);
begin

end;

end.
