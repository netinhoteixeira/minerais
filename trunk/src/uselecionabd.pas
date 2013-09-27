{
  GNU LESSER GENERAL PUBLIC LICENSE

Version 3, 29 June 2007

Copyright © 2007 Free Software Foundation, Inc. <http://fsf.org/>

Everyone is permitted to copy and distribute verbatim copies of this license document, but changing it is not allowed.

This version of the GNU Lesser General Public License incorporates the terms and conditions of version 3 of the GNU General Public License, supplemented by the additional permissions listed below.

0. Additional Definitions.
As used herein, “this License” refers to version 3 of the GNU Lesser General Public License, and the “GNU GPL” refers to version 3 of the GNU General Public License.

“The Library” refers to a covered work governed by this License, other than an Application or a Combined Work as defined below.

An “Application” is any work that makes use of an interface provided by the Library, but which is not otherwise based on the Library. Defining a subclass of a class defined by the Library is deemed a mode of using an interface provided by the Library.

A “Combined Work” is a work produced by combining or linking an Application with the Library. The particular version of the Library with which the Combined Work was made is also called the “Linked Version”.

The “Minimal Corresponding Source” for a Combined Work means the Corresponding Source for the Combined Work, excluding any source code for portions of the Combined Work that, considered in isolation, are based on the Application, and not on the Linked Version.

The “Corresponding Application Code” for a Combined Work means the object code and/or source code for the Application, including any data and utility programs needed for reproducing the Combined Work from the Application, but excluding the System Libraries of the Combined Work.

1. Exception to Section 3 of the GNU GPL.
You may convey a covered work under sections 3 and 4 of this License without being bound by section 3 of the GNU GPL.

2. Conveying Modified Versions.
If you modify a copy of the Library, and, in your modifications, a facility refers to a function or data to be supplied by an Application that uses the facility (other than as an argument passed when the facility is invoked), then you may convey a copy of the modified version:

a) under this License, provided that you make a good faith effort to ensure that, in the event an Application does not supply the function or data, the facility still operates, and performs whatever part of its purpose remains meaningful, or
b) under the GNU GPL, with none of the additional permissions of this License applicable to that copy.
3. Object Code Incorporating Material from Library Header Files.
The object code form of an Application may incorporate material from a header file that is part of the Library. You may convey such object code under terms of your choice, provided that, if the incorporated material is not limited to numerical parameters, data structure layouts and accessors, or small macros, inline functions and templates (ten or fewer lines in length), you do both of the following:

a) Give prominent notice with each copy of the object code that the Library is used in it and that the Library and its use are covered by this License.
b) Accompany the object code with a copy of the GNU GPL and this license document.
4. Combined Works.
You may convey a Combined Work under terms of your choice that, taken together, effectively do not restrict modification of the portions of the Library contained in the Combined Work and reverse engineering for debugging such modifications, if you also do each of the following:

a) Give prominent notice with each copy of the Combined Work that the Library is used in it and that the Library and its use are covered by this License.
b) Accompany the Combined Work with a copy of the GNU GPL and this license document.
c) For a Combined Work that displays copyright notices during execution, include the copyright notice for the Library among these notices, as well as a reference directing the user to the copies of the GNU GPL and this license document.
d) Do one of the following:
0) Convey the Minimal Corresponding Source under the terms of this License, and the Corresponding Application Code in a form suitable for, and under terms that permit, the user to recombine or relink the Application with a modified version of the Linked Version to produce a modified Combined Work, in the manner specified by section 6 of the GNU GPL for conveying Corresponding Source.
1) Use a suitable shared library mechanism for linking with the Library. A suitable mechanism is one that (a) uses at run time a copy of the Library already present on the user's computer system, and (b) will operate properly with a modified version of the Library that is interface-compatible with the Linked Version.
e) Provide Installation Information, but only if you would otherwise be required to provide such information under section 6 of the GNU GPL, and only to the extent that such information is necessary to install and execute a modified version of the Combined Work produced by recombining or relinking the Application with a modified version of the Linked Version. (If you use option 4d0, the Installation Information must accompany the Minimal Corresponding Source and Corresponding Application Code. If you use option 4d1, you must provide the Installation Information in the manner specified by section 6 of the GNU GPL for conveying Corresponding Source.)
5. Combined Libraries.
You may place library facilities that are a work based on the Library side by side in a single library together with other library facilities that are not Applications and are not covered by this License, and convey such a combined library under terms of your choice, if you do both of the following:

a) Accompany the combined library with a copy of the same work based on the Library, uncombined with any other library facilities, conveyed under the terms of this License.
b) Give prominent notice with the combined library that part of it is a work based on the Library, and explaining where to find the accompanying uncombined form of the same work.
6. Revised Versions of the GNU Lesser General Public License.
The Free Software Foundation may publish revised and/or new versions of the GNU Lesser General Public License from time to time. Such new versions will be similar in spirit to the present version, but may differ in detail to address new problems or concerns.

Each version is given a distinguishing version number. If the Library as you received it specifies that a certain numbered version of the GNU Lesser General Public License “or any later version” applies to it, you have the option of following the terms and conditions either of that published version or of any later version published by the Free Software Foundation. If the Library as you received it does not specify a version number of the GNU Lesser General Public License, you may choose any version of the GNU Lesser General Public License ever published by the Free Software Foundation.

If the Library as you received it specifies that a proxy can decide whether future versions of the GNU Lesser General Public License shall apply, that proxy's public statement of acceptance of any version is permanent authorization for you to choose that version for the Library.

 }
unit uselecionabd;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  Buttons, StdCtrls, ComCtrls, Menus, EditBtn, SQLite3TableMod,
  IniFiles;
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
    OpenDialog1: TOpenDialog;
    Panel1: TPanel;
    Panel2: TPanel;
    StatusBar1: TStatusBar;
    procedure BitBtn1Click(Sender: TObject);
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
  Config: TIniFIle;
  nomeBD, Diretorio: string;

implementation

uses udatamodule;

{ TFormSelecionaBD }

procedure TFormSelecionaBD.BitBtnPadraoClick(Sender: TObject);
var
  Diretorio: string;
begin
  if ListBoxSeleciona.GetSelectedText <> EmptyStr then
  begin
    Diretorio := GetCurrentDir + '\Data\config.ini';
    Config := TINIFile.Create(Diretorio);
    Config.WriteString('Configuracoes', 'BD', Trim(ListBoxSeleciona.GetSelectedText));
    Config.Free;
    StatusBar1.SimpleText :=
      'Banco de Dados Padrão: ' + ListBoxSeleciona.GetSelectedText;
  end;
end;

procedure TFormSelecionaBD.BitBtn1Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
    ListBoxSeleciona.Items.Append(OpenDialog1.FileName);
end;

procedure TFormSelecionaBD.BitBtnSelecionarClick(Sender: TObject);
begin
  if (ListBoxSeleciona.GetSelectedText <> EmptyStr) then
  begin
    if Dados.determinaBD(ListBoxSeleciona.GetSelectedText) then
    FormSelecionaBd.Visible := False
    else
    ShowMessage('O banco de dados selecionado não é compatível.');
  end;
end;

procedure TFormSelecionaBD.EditButtonNovoButtonClick(Sender: TObject);
var
  ExecSQL: string;
  Diretorio: string;
begin                                 //colocar no datamodule
  if (EditButtonNovo.Text <> EmptyStr) then
  begin
    Diretorio := GetCurrentDir + '\Data\' + EditButtonNovo.Text + '.s3db';
    if (not FileExists(diretorio)) then
    begin
      Dados.Sqlite3DatasetGeral.Close();
      try
        sldb := TSQLiteDatabase.Create(Diretorio);
        Dados.Sqlite3DatasetGeral.FileName := Diretorio;
        ExecSQL :=
          'CREATE TABLE minerais ([id] INTEGER PRIMARY KEY NOT NULL,[nome] TEXT UNIQUE  NOT NULL, [formula] TEXT, [classe] TEXT, [subclasse] TEXT, [grupo] TEXT, [subgrupo] TEXT, [ocorrencia] TEXT, [associacao] TEXT, [distincao] TEXT,';
        ExecSQL := ExecSQL +
          ' [aplicacao] TEXT, [alteracao] TEXT, [dureza_min] FLOAT, [dureza_max] FLOAT, [densidade_min] FLOAT, [densidade_max] FLOAT, [cor] TEXT, [brilho] TEXT, [traco] TEXT, [fratura] TEXT, [clivagem] TEXT, ';
        ExecSQL := ExecSQL +
          ' [luminescencia] TEXT, [magnetismo] TEXT, [difaneidade] TEXT, [sinal_optico] TEXT, [indice_refracao] TEXT, [angulo] TEXT, [cor_interferencia] TEXT, [cor_lamina] TEXT, [sinal_elongacao] TEXT, [birrefringencia] TEXT, [relevo] TEXT, ';
        ExecSQL := ExecSQL +
          ' [extincao] TEXT, [classe_cristalina] TEXT, [sistema] TEXT, [h_m] TEXT, [habito] TEXT, ';
        ExecSQL := ExecSQL +
          ' [imagem1] BLOB, [imagem2] BLOB, [imagem3] BLOB, [imagem4] BLOB, [imagem5] BLOB, [imagemCristalografia1] BLOB, [imagemcristalografia2] BLOB), [imagem6] BLOB, [imagem7] BLOB;';
        Dados.Sqlite3DatasetGeral.ExecSQL(ExecSQL);
        ExecSQL :=
          'CREATE TABLE mineralogia ([id] INTEGER PRIMARY KEY NOT NULL, [campo] TEXT, [mineralogiaimagem1] BLOB, [mineralogiaimagem2] BLOB, [mineralogiaimagem3] BLOB, [mineralogiaimagem4] BLOB, [mineralogiaimagem5] BLOB);';
        Dados.Sqlite3DatasetGeral.ExecSQL(ExecSQL);

        ExecSQL:= 'CREATE TABLE rruff ([id] INTEGER PRIMATY KEY NOT NULL, [especie] TEXT NOT NULL, [rruff_id] TEXT NOT NULL, [numero] INTEGER, [quimicaideal] TEXT, ';
        ExecSQL:=ExecSQL+' [localidade] TEXT, [fonte] TEXT, [descricao_quimica] TEXT, [situacao] TEXT, [quimicamedida] TEXT, [arquivo_microssonda] TEXT, [pin_id] TEXT, ';
        ExecSQL:=ExecSQL+' [orientacao] TEXT, [microssonda] BLOB, [descricao_raman] TEXT, [raman] BLOB, [comprimento_onda] TEXT, [descricao_broadscan] TEXT, '+
                           '[instrumento_bs] TEXT, [varredura] BLOB, [descricao_infravermelho] TEXT, [instrumento_iv] TEXT, [resolucao] TEXT, [infravermelho] BLOB, [descricao_amostra] TEXT, [direcao_laser] TEXT,';
        ExecSQL:=ExecSQL+' [a] TEXT, [b] TEXT, [c] TEXT, [alpha] TEXT, [beta] TEXT, [gamma] TEXT, [volume] TEXT, [sistema_cristalino] TEXT, [descricao_difracao] TEXT, [arquivo_difracao] BLOB,';
        ExecSQL:=ExecSQL+' [rruff_id_quimica] TEXT, [rruff_id_raman] TEXT, [rruff_id_varredura] TEXT, [rruff_id_infravermelho] TEXT, [rruff_id_difracao] TEXT, [proprietario] TEXT, [imagem_amostra] BLOB, [imagem_quimica] BLOB;';
        Dados.Sqlite3DatasetGeral.ExecSQL(ExecSQL);

        ExecSQL:= 'CREATE TABLE raman ([id] INTEGER PRIMATY KEY NOT NULL, [especie] TEXT NOT NULL, [rruff_id] TEXT NOT NULL, [direcao_polarizacao] TEXT NOT NULL, [arquivo_raman] BLOB);';
        Dados.Sqlite3DatasetGeral.ExecSQL(ExecSQL);

        ExecSQL:= 'CREATE TABLE instrumentos ([id] INTEGER PRIMATY KEY NOT NULL, [nome] UNIQUE NOT NULL, [descricao] TEXT, [localidade] TEXT);';
        Dados.Sqlite3DatasetGeral.ExecSQL(ExecSQL);
      finally
        Dados.Sqlite3DatasetGeral.Open();
        sldb.Free;
      end;
      // sldb.Create(ExecSQL);
      //sldb.free;
      ListBoxSeleciona.Items.Append(Diretorio);
    end
    else
      ShowMessage('Já existe um Banco de Dados com esse nome');
  end
  else
    ShowMessage('Você deve especificar um nome para o Banco de Dados');
end;

procedure TFormSelecionaBD.FormShow(Sender: TObject);
begin
  ListBoxSeleciona.Clear;
  ListBoxSeleciona.Items.AddStrings(
    FindAllFiles(GetCurrentDir, 'All Files | *.s3db; *.sqlite; *.db;', True));
  Diretorio := GetCurrentDir + '\Data';
  if (not DirectoryExists(Diretorio)) then
    MkDir(Diretorio);
  Diretorio := GetCurrentDir + '\Data\config.ini';
  Config := TINIFile.Create(Diretorio);
  nomeBD := Config.ReadString('Configuracoes', 'BD', '');
  if FileExists(nomeBD) then
    StatusBar1.SimpleText := 'Banco de Dados Padrão: ' + nomeBD
  else
    Config.WriteString('Configuracoes', 'BD', '');
  Config.Free;
end;

procedure TFormSelecionaBD.MenuItemSairClick(Sender: TObject);
begin
  Application.Terminate;
end;

{ TFormSelecionaBD }

{$R *.lfm}

end.
