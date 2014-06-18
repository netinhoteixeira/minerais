unit ubibliografia; 

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  DbCtrls, Buttons, StdCtrls;

type

  { TFormBibliografia }

  TFormBibliografia = class(TForm)
    BitBtnSalvar: TBitBtn;
    BitBtnEditar: TBitBtn;
    BitBtnSair: TBitBtn;
    Memo1: TMemo;
    Panel1: TPanel;
    Panel2: TPanel;
    procedure BitBtnEditarClick(Sender: TObject);
    procedure BitBtnSairClick(Sender: TObject);
    procedure BitBtnSalvarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end; 

var
  FormBibliografia: TFormBibliografia;
  Bibliografia: TextFile;
  Diretorio, Texto:String;

implementation
{$R *.lfm}
uses udatamodule; //coloca do apos o proc formshow usar o filename do dataset
{ TFormBibliografia }
procedure TFormBibliografia.BitBtnSairClick(Sender: TObject);
begin
  FormBibliografia.Close;
end;

procedure TFormBibliografia.BitBtnSalvarClick(Sender: TObject);
var Texto: String;
begin
  ReWrite(Bibliografia);
  Append(Bibliografia);
  Texto:=Memo1.Text;
  Write(Bibliografia, Texto);
end;

procedure TFormBibliografia.FormClose(Sender: TObject;
  var CloseAction: TCloseAction);
begin
  CloseFile(Bibliografia);
end;

procedure TFormBibliografia.FormShow(Sender: TObject);
var StrBD:String; i, Tamanho:Integer;  R:Boolean;
begin
  Memo1.Clear;
  //if filename *.s3db ou .sqlite, etc...
  { refazer
  Diretorio:=Copy(Dados.SQlite3DatasetGeral.filename, 0, length(Dados.SQlite3DatasetGeral.filename)-5)+'_bibliografia.dat';
  if (FileExists(Diretorio)) then                //a subtração acima vai depender do formato do banco de dados
  Begin
       AssignFile(Bibliografia, Diretorio);
       Reset(Bibliografia);
       While (not EOF(Bibliografia)) do
       Begin
       Readln(Bibliografia, Texto);
       Memo1.Lines.Add(Texto);
       end;
  end
  else
  Begin
       AssignFile(Bibliografia, Diretorio);
       ReWrite(Bibliografia);
  end; }
end;

procedure TFormBibliografia.BitBtnEditarClick(Sender: TObject);
begin
  Memo1.ReadOnly:=False;
end;

end.

