
unit UnitAjuda; 

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, IpHtml,
  Ipfilebroker, Forms, Controls, Dialogs, ExtCtrls,
  unitLanguage, unitconfigfile;

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

  const nome_arq: String = '\doc\index.html';

var
  FormAjuda: TFormAjuda;

implementation
uses udatamodule;

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
  if FileExists(GetCurrentDir+nome_arq) then
  begin
    Iphtmlpanel1.OpenURL(GetCurrentDir+nome_arq);
  end;
  if SetLanguage(ConfigGetLanguage) then
  begin
    ChangeLanguage;
  end;
end;

end.
