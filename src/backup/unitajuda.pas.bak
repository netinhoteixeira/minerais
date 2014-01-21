
unit UnitAjuda; 

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, IpHtml,
  Ipfilebroker, Forms, Controls, Dialogs, ExtCtrls,
  StdCtrls;

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

implementation

{$R *.lfm}

{ TFormAjuda }

procedure TFormAjuda.FormShow(Sender: TObject);
begin

end;

procedure TFormAjuda.FormCreate(Sender: TObject);
begin
  if FileExists(GetCurrentDir+'\Ajuda\index.html') then
    Iphtmlpanel1.OpenURL(GetCurrentDir+'\Ajuda\index.html');
end;

end.
