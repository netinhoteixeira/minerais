unit unitequipamentos;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, Buttons, DbCtrls, ComCtrls;

type

  { TFormInstrumentos }

  TFormInstrumentos = class(TForm)
    DBMemoNome: TDBMemo;
    DBMemoLocalidade: TDBMemo;
    DBMemoDescricao: TDBMemo;
    DBNavigator1: TDBNavigator;
    LabelNome: TLabel;
    LabelDescricao: TLabel;
    LabelLocalidade: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
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
  Dados.Sqlite3DatasetInstrumentos.Open;
  Statusbar1.SimpleText:='Foram encontrados '+IntToStr(Dados.
    Sqlite3DatasetInstrumentos.RecNo+1)+' equipamentos no banco de dados.';
end;

procedure TFormInstrumentos.FormClose(Sender: TObject;
  var CloseAction: TCloseAction);
begin
  Dados.Sqlite3DatasetInstrumentos.Close;
end;

end.

