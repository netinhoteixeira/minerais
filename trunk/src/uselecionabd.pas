﻿{
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
  Buttons, StdCtrls, ComCtrls, Menus, EditBtn, IniFiles;
//excluir SQLite3TableMod
type

  { TFormSelecionaBD }

  TFormSelecionaBD = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtnStandardSampleDb: TBitBtn;
    BitBtnSelectMineralDb: TBitBtn;
    BitBtnSelectSampleDb: TBitBtn;
    BitBtnStandardMineralDb: TBitBtn;
    EditButtonNovo: TEditButton;
    EditButtonNovo1: TEditButton;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBoxSamplesDatabase: TGroupBox;
    GroupBoxMineralDatabase: TGroupBox;
    ListBoxSelectMineralDb: TListBox;
    ListBoxSelectSampleDb: TListBox;
    MainMenu1: TMainMenu;
    MenuItemSair: TMenuItem;
    MenuItemArquivo: TMenuItem;
    OpenDialog1: TOpenDialog;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    ProgressBar1: TProgressBar;
    StatusBar1: TStatusBar;
    StatusBar2: TStatusBar;
    StatusBar3: TStatusBar;
    StatusBar4: TStatusBar;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtnStandardSampleDbClick(Sender: TObject);
    procedure BitBtnSelecionar1Click(Sender: TObject);
    procedure BitBtnStandardMineralDbClick(Sender: TObject);
    procedure EditButtonNovo1ButtonClick(Sender: TObject);
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
  Config: TIniFIle;
  MineralDb,
  SampleDb,
  ConfigFilePath: string;

implementation

uses udatamodule;

{ TFormSelecionaBD }

procedure TFormSelecionaBD.BitBtnStandardMineralDbClick(Sender: TObject);
begin
  if ListBoxSelectMineralDb.GetSelectedText <> EmptyStr then
  begin
    Config := TINIFile.Create(ConfigFilePath);
    Config.WriteString('Configuracoes', 'MineralBD', Trim(
      ListBoxSelectMineralDb.GetSelectedText));
    Config.Free;
    StatusBar1.SimpleText :=
      'Banco de Dados Padrão: ' + ListBoxSelectMineralDb.GetSelectedText;
  end;
end;

procedure TFormSelecionaBD.EditButtonNovo1ButtonClick(Sender: TObject);
var Diretorio: String;
begin
  if (EditButtonNovo1.Text <> EmptyStr) then
  begin
    if DirectoryExists(GetCurrentDir+'\Data') then
      Diretorio := GetCurrentDir + '\Data\' + EditButtonNovo1.Text + '.s3db'
    else
      Diretorio := GetCurrentDir + '\' + EditButtonNovo1.Text + '.s3db';
    Dados.CreateDatabase('amostra', Diretorio);
    ListBoxSelectSampleDb.Items.Append(Diretorio);
    EditButtonNovo1.Clear;
  end
  else
    ShowMessage('Você deve especificar um nome para o Banco de Dados.');
end;

procedure TFormSelecionaBD.BitBtn1Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
    ListBoxSelectMineralDb.Items.Append(OpenDialog1.FileName);
end;

procedure TFormSelecionaBD.BitBtn2Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
    ListBoxSelectSampleDb.Items.Append(OpenDialog1.FileName);
end;

procedure TFormSelecionaBD.BitBtnStandardSampleDbClick(Sender: TObject);
begin
  if ListBoxSelectSampleDb.GetSelectedText <> EmptyStr then
  begin
    Config := TINIFile.Create(ConfigFilePath);
    Config.WriteString('Configuracoes', 'AmostraBD', Trim(
      ListBoxSelectSampleDb.GetSelectedText));
    Config.Free;
    StatusBar2.SimpleText :=
      'Banco de Dados Padrão: ' + ListBoxSelectSampleDb.GetSelectedText;
  end;
end;

procedure TFormSelecionaBD.BitBtnSelecionar1Click(Sender: TObject);
begin

end;

procedure TFormSelecionaBD.EditButtonNovoButtonClick(Sender: TObject);
var Diretorio: String;
begin
  if (EditButtonNovo.Text <> EmptyStr) then
  begin
    if DirectoryExists(GetCurrentDir+'\Data') then
      Diretorio := GetCurrentDir + '\Data\' + EditButtonNovo.Text + '.s3db'
    else
      Diretorio := GetCurrentDir + '\' + EditButtonNovo.Text + '.s3db';
    Dados.CreateDatabase('mineral', Diretorio);
    ListBoxSelectMineralDb.Items.Append(Diretorio);
    EditButtonNovo.Clear;
  end
  else
    ShowMessage('Você deve especificar um nome para o Banco de Dados.');
end;

procedure TFormSelecionaBD.FormShow(Sender: TObject);
var I,J: Integer; Databases:TStrings;
begin
  ListBoxSelectMineralDb.Clear;
  ListBoxSelectSampleDb.Clear;

  ListBoxSelectMineralDb.Items.AddStrings(FindAllFiles(GetCurrentDir,
    'All Files | *.s3db; *.sqlite; *.db;', True));
  Databases:=FindAllFiles(GetCurrentDir,
      'All Files | *.s3db; *.sqlite; *.db;', True);
  ListBoxSelectSampleDb.Items.AddStrings(
    FindAllFiles(GetCurrentDir, 'All Files | *.s3db; *.sqlite; *.db;', True));
  for I:=0 to Databases.Count-1 do
  begin
    J:= ListboxSelectMineralDB.Items.IndexOf(Databases[I]);
    if J >= 0 then
    begin
      if not Dados.ChooseDatabase('minerais', ListboxSelectMineralDB.Items.
      Strings[J]) then
      begin
        ListboxSelectMineralDb.Items.Delete(J);
      end;
    end;
    J:= ListboxSelectSampleDB.Items.IndexOf(Databases[I]);
    if J >= 0 then
    begin
      if not Dados.ChooseDatabase('amostras', ListboxSelectSampleDB.Items.
         Strings[J]) then
      begin
        ListboxSelectSampleDb.Items.Delete(J);
      end;
    end;
  end;
  Databases.Clear;
  ConfigFilePath := GetCurrentDir + '\Data';
  if (not DirectoryExists(ConfigFilePath)) then
   // MkDir(Diretorio);
  {faz com que o programa tenha de ser executado como administrador}
    ConfigFilePath:= GetCurrentDir+'\config.ini'
    else
  ConfigFilePath := GetCurrentDir + '\Data\config.ini';
  Config := TINIFile.Create(ConfigFilePath);
  mineraldb := Config.ReadString('Configuracoes', 'MineraisBD', '');
  if FileExists(mineraldb) then
    StatusBar1.SimpleText := 'Banco de Dados Padrão: ' + mineraldb
  else
    Config.WriteString('Configuracoes', 'MineraisBD', '');
  SampleDb:= Config.ReadString('Configuracoes','AmostrasBD','');
  if FileExists(SampleDb) then
    StatusBar2.SimpleText := 'Banco de Dados Padrão: ' + SampleDb
  else
    Config.WriteString('Configuracoes', 'AmostrasBD', '');
  Config.Free;
end;

procedure TFormSelecionaBD.MenuItemSairClick(Sender: TObject);
begin
  Application.Terminate;
end;

{ TFormSelecionaBD }

{$R *.lfm}

end.
