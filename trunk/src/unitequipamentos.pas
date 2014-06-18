unit unitequipamentos;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, BCPanel, BCLabel, Forms, Controls, Graphics,
  Dialogs, ExtCtrls, StdCtrls, Buttons, DbCtrls, ComCtrls;

type

  { TFormInstrumentos }

  TFormInstrumentos = class(TForm)
    BCLabel1: TBCLabel;
    BCLabel2: TBCLabel;
    BCLabel3: TBCLabel;
    BCPanel1: TBCPanel;
    BCPanel2: TBCPanel;
    DBMemoDescricao: TDBMemo;
    DBMemoLocalidade: TDBMemo;
    DBMemoNome: TDBMemo;
    DBNavigator1: TDBNavigator;
    StatusBar1: TStatusBar;
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FormInstrumentos: TFormInstrumentos;

implementation
uses udatamodule;
{$R *.lfm}

{ TFormInstrumentos }

procedure TFormInstrumentos.FormShow(Sender: TObject);
begin
  if Dados.DatabaseSampleFileName<> EMptyStr then
  begin
    if FileExists(Dados.DatabaseSampleFileName) then
    begin
      if Dados.Sqlite3DatasetInstrumentos.Active then
        Dados.Sqlite3DatasetInstrumentos.Close;
      Dados.Sqlite3DatasetInstrumentos.FileName:=Dados.DatabaseSampleFileName;
      Dados.Sqlite3DatasetInstrumentos.Open;
    end;
  end;
  Statusbar1.SimpleText:='Foram encontrados '+IntToStr(Dados.
    Sqlite3DatasetInstrumentos.RecNo+1)+' equipamentos no banco de dados.';
end;

procedure TFormInstrumentos.FormClose(Sender: TObject;
  var CloseAction: TCloseAction);
begin
  Dados.Sqlite3DatasetInstrumentos.Close;
end;

end.

