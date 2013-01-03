unit uselecionabd; 

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  Buttons, StdCtrls, ComCtrls, Menus, EditBtn, SQLite3TableMod, SQLite3Mod;
                                    //excluir SQLite3TableMod
type

  { TFormSelecionaBD }

  TFormSelecionaBD = class(TForm)
    BitBtn1: TBitBtn;
    BitBtnSelecionar: TBitBtn;
    BitBtnPadrao: TBitBtn;
    EditButtonNovo: TEditButton;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    ListBoxSeleciona: TListBox;
    MainMenu1: TMainMenu;
    MenuItemSair: TMenuItem;
    MenuItemArquivo: TMenuItem;
    Panel1: TPanel;
    Panel2: TPanel;
    StatusBar1: TStatusBar;
    procedure BitBtnPadraoClick(Sender: TObject);
    procedure BitBtnSelecionarClick(Sender: TObject);
    procedure EditButtonNovoButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MenuItemSairClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end; 

var
  FormSelecionaBD: TFormSelecionaBD;
  sldb: TSQLiteDataBase;
  Arquivo:TextFile;
  Diretorio, BD:String;

implementation
uses udatamodule;

{ TFormSelecionaBD }


procedure TFormSelecionaBD.BitBtnPadraoClick(Sender: TObject);
begin
     closeFile(arquivo);
     BD:=ListBoxSeleciona.GetSelectedText;


     Diretorio:=GetCurrentDir+'\Data\BD.dat';
     if (FileExists(Diretorio)) Then
     begin
          AssignFile(Arquivo, Diretorio);
          FileMode:=2;
          Reset(Arquivo);
          //Append(Arquivo);
     end
     else
     Begin
          AssignFile(Arquivo, Diretorio);
          ReWrite(Arquivo);
          Append(Arquivo);
     end;

     Writeln(Arquivo, BD);
     CloseFile(Arquivo);
     StatusBar1.SimpleText:='Banco de Dados Padrão: '+BD;
end;

procedure TFormSelecionaBD.BitBtnSelecionarClick(Sender: TObject);
begin
     if (ListBoxSeleciona.GetSelectedText <> EmptyStr) then
     begin
     Dados.determinaBD(ListBoxSeleciona.GetSelectedText);
     FormSelecionaBd.Visible:=False;
     end;
end;

procedure TFormSelecionaBD.EditButtonNovoButtonClick(Sender: TObject);
var ExecSQL:String; Diretorio:String;
begin
     if (EditButtonNovo.Text <> EmptyStr) Then
     begin
     Diretorio:=GetCurrentDir+'\Data\'+EditButtonNovo.Text+'.s3db';
     if (not FileExists(diretorio)) then
     begin
     Try
     sldb:= TSQLiteDatabase.Create(Diretorio);
     Dados.Sqlite3DatasetGeral.FileName:=Diretorio;
     ExecSQL:='CREATE TABLE minerais ([id] INTEGER PRIMARY KEY NOT NULL,[nome] TEXT UNIQUE  NOT NULL, [formula] TEXT, [classe] TEXT, [subclasse] TEXT, [grupo] TEXT, [subgrupo] TEXT, [ocorrencia] TEXT, [associacao] TEXT, [distincao] TEXT,';
     ExecSQL:=ExecSQL+' [aplicacao] TEXT, [alteracao] TEXT, [dureza_min] FLOAT, [dureza_max] FLOAT, [densidade_min] FLOAT, [densidade_max] FLOAT, [cor] TEXT, [brilho] TEXT, [traco] TEXT, [fratura] TEXT, [clivagem] TEXT, ';
     ExecSQL:=ExecSQL+' [luminescencia] TEXT, [magnetismo] TEXT, [difaneidade] TEXT, [sinal_optico] TEXT, [indice_refracao] TEXT, [angulo] TEXT, [cor_interferencia] TEXT, [cor_lamina] TEXT, [sinal_elongacao] TEXT, [birrefringencia] TEXT, [relevo] TEXT, ';
     ExecSQL:=ExecSQL+' [extincao] TEXT, [classe_cristalina] TEXT, [sistema] TEXT, [h_m] TEXT, [habito] TEXT, ';
     ExecSQL:=ExecSQL+' [imagem1] BLOB, [imagem2] BLOB, [imagem3] BLOB, [imagem4] BLOB, [imagem5] BLOB, [imagemCristalografia1] BLOB, [imagemcristalografia2] BLOB);';
     Dados.Sqlite3DatasetGeral.ExecSQL(ExecSQL);
     ExecSQL:='CREATE TABLE mineralogia ([id] INTEGER PRIMARY KEY NOT NULL, [campo] VARCHAR, [imagem1] BLOB, [imagem2] BLOB, [imagem3] BLOB, [imagem4] BLOB, [imagem5] BLOB);';
     Dados.Sqlite3DatasetGeral.ExecSQL(ExecSQL);
     finally
     sldb.free;
     end;
    // sldb.Create(ExecSQL);
     //sldb.free;
     end
     else
     ShowMessage('Já existe um Banco de Dados com esse nome');
     end
     else
     ShowMessage('Você deve especificar um nome para o Banco de Dados');

     ListBoxSeleciona.Items.Append(Diretorio);
end;

procedure TFormSelecionaBD.FormShow(Sender: TObject);
var Diretorio, BD:String;
begin
     ListBoxSeleciona.Items.AddStrings(FindAllFiles(GetCurrentDir,'All Files | *.s3db; *.sqlite; *.db;', true));
     Diretorio:=GetCurrentDir+'\Data';
     if (not DirectoryExists(Diretorio)) then
     MkDir(Diretorio);
     Diretorio:=GetCurrentDir+'\Data\BD.dat';
     AssignFile(Arquivo, Diretorio);
     Reset(Arquivo);
     Readln(Arquivo, BD);
     StatusBar1.SimpleText:='Banco de Dados Padrão: '+BD;
end;

procedure TFormSelecionaBD.MenuItemSairClick(Sender: TObject);
begin
  Application.Terminate;
end;

{ TFormSelecionaBD }

{$R *.lfm}

end.

