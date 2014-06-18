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
unit uprincipal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Menus,
  StdCtrls, ExtCtrls, ComCtrls, DBCtrls, ExtDlgs, Buttons, EditBtn, ActnList,
  RichMemo, unitshowimages, BGRAImageList, BCPanel, BCImageButton,
  uFormImpressao, uBibliografia, UnitAjuda, IniFiles, unitequipamentos,
  unitfichaamostra, unitfichaespecie, unitselectdatabase ;

type

  { TFormPrincipal }

  TFormPrincipal = class(TForm)
    ActionOpenHelpForm: TAction;
    ActionOpenFormDatabase: TAction;
    ActionOpenSampleForm: TAction;
    ActionOpenMineralForm: TAction;
    ActionList1: TActionList;
    ActionChangeEquipment: TAction;
    BCPanel1: TBCPanel;
    GroupBox1: TGroupBox;
    MenuItemAddChartData: TMenuItem;
    MenuItemEraseData: TMenuItem;
    PopupMenuChart: TPopupMenu;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    ToolBar2: TToolBar;
    ToolButton3: TToolButton;
    ToolButtonExit: TToolButton;
    ToolButtonHelp: TToolButton;
    procedure ActionOpenFormDatabaseExecute(Sender: TObject);
    procedure ActionOpenHelpFormExecute(Sender: TObject);
    procedure ActionOpenMineralFormExecute(Sender: TObject);
    procedure ActionOpenSampleFormExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

const
  Minerais: string = 'minerais';
  Mineralogia: string = 'mineralogia';
  Sample: string = 'rruff';
  EspectroRAMAN: string = 'RAMAN';
  AmplaVarredura: string = 'Ampla Varredura com Artefatos Espectrais';

  TodosOsDados: string = 'Todos os Dados';
  //Depolarizado: string = 'Não polarizado';
  Angulo0: string = '0.000';
  Angulo45: string = '45.000 ccw';
  Angulo90: string = '90.000 ccw';
  Onda514: string = '514 nm'; //terminar de implementar onda 514
  Onda532: string = '532 nm';
  Onda780: string = '780 nm';

  AdicionarAmostra:String = 'Adicionar Amostra';

var
  FormPrincipal: TFormPrincipal;
  Nome_Mineral: string;
  Imagem_Selecionada: char;
  Tipo: string;
  UltimaPesquisa: string;

  Config: TIniFile;
  ConfigFilePath: String;

  den_min, den_max, ocorrencia,
    associacao, cor, brilho: string;
  //Usado pelo RichMemo
  fonte, fontenormal, fonte2: TFontParams;

  DatasetFileName: string;

  DatabaseMinerals, DatabaseSamples: String;//caminho do banco de dados

  FormFichaEspecie:TForm;

implementation
           //mudar o nome da unit unitadicionarimagem
uses udatamodule;

{$R *.lfm}

{ TFormPrincipal }

    {nao adicionado //este procedimento é chamado por outro form:
procedure TFormPrincipal.ActionAddDataExecute(Sender: TObject);
var EditDigitoText: String; I,J: Integer; FoundChar: Boolean;
begin
  ///obs substituir editamostrastext por listboxitems
  EditDigitoText:=Trim(FormAdicionaRruff.EditAmostras.Text);
  for I:= 0 to FormAdicionaRruff.ListBox1.Count-1 do
  begin
    {implementar procedimento com varios items selecionados
      em FormAdicionaRruff.ListBox}
    if FormAdicionaRruff.ListBox1.Selected[I] then
    begin
      J:=0;
      FoundChar:=False;
      while not FoundChar do
      begin
        Inc(J);
        if ( Copy(FormAdicionaRruff.ListBox1.Items.Strings[I],J,1) = '-' ) then
          FoundChar:=True;
      end;
      Inc(J);
      Case PageControlSample.TabIndex of
      1:begin
        ComboboxQuimicaDigito.ItemIndex:= ComboboxQuimicaDigito.Items.Add(
          Trim(Copy(FormAdicionaRruff.Listbox1.Items.Strings[I], J, 4)));
        Dados.AdicionaAmostra('chemistry', MemoAmostraEspecie.Text, MemoSample.
          Text, Trim(ComboboxQuimicaDigito.Text), EmptyStr, EmptyStr);
      end;
      2:begin
            ComboboxRamanDigito.ItemIndex:= ComboboxRamanDigito.Items.Add(
              Trim(Copy(FormAdicionaRruff.ListBox1.Items.Strings[I],J,4)));
            ComboboxDirecaoLaser.Text:=FormAdicionaRruff.ComboBox1.Text;
            Dados.AdicionaAmostra('raman', MemoAmostraEspecie.Text, MemoSample.Text,
              Trim(ComboboxRamanDigito.Text), FormAdicionaRruff.ComboBox1.
                Text, '');
        end;
      3:begin
            ComboboxVarreduraDigito.ItemIndex:= ComboboxVarreduraDigito.Items.Add(
              Trim(Copy(FormAdicionaRruff.ListBox1.Items.Strings[I],J,4)));
            ComboboxVarreduraOnda.Text:=FormAdicionaRruff.ComboBox2.Text;
            Dados.AdicionaAmostra('varredura', MemoAmostraEspecie.Text, MemoSample.Text,
              Trim(ComboboxVarreduraDigito.Text), FormAdicionaRruff.ComboBox2.
                Text, '');
        end;
      4:begin
            ComboboxInfravermelhoDigito.ItemIndex:= ComboboxInfravermelhoDigito.
              Items.Add(Trim(Copy(FormAdicionaRruff.ListBox1.Items.Strings[I],J,4)));
            Dados.AdicionaAmostra('infravermelho', MemoAmostraEspecie.Text, MemoSample.Text,
              Trim(ComboboxInfravermelhoDigito.Text), EmptyStr, EmptyStr);
        end;
      5:begin
            ComboboxDifracaoDigito.ItemIndex:= ComboboxDifracaoDigito.Items.Add(
              Trim(Copy(FormAdicionaRruff.ListBox1.Items.Strings[I],J,4)));
            Dados.AdicionaAmostra('difracao', MemoAmostraEspecie.Text, MemoSample.Text,
              Trim(ComboboxDifracaoDigito.Text), EmptyStr, EmptyStr);
        end;
      end;
    end;
  end;
  FormAdicionaRruff.Hide;
end;     }

 {nao adicionado
// é do form de adicionar rruff
procedure TFormPrincipal.ActionListboxDigitoExecute(Sender: TObject);
var Aux:String; Aux2:Integer;
begin
  Aux:=FormAdicionaRruff.ListBox1.GetSelectedText;
  Aux:=StringReplace(Aux, FormAdicionaRruff.EditSample_id.Text, '',[rfReplaceAll]);
  Aux:=StringReplace(Aux, '-', '',[rfReplaceAll]);
  Case FormAdicionaRruff.LocalAmostra of
    1:begin
      ComboboxQuimicaDigito.ItemIndex:=ComboboxQuimicaDigito.Items.Add(Trim(Aux));
      Dados.TableSamples:=Dados.DatabaseSamples.GetTable('SELECT especie, rruff_id, digito '+
        'FROM rruff WHERE rruff_id="'+ListboxSample_id.GetSelectedText+
           '" AND digito="'+ComboboxQuimicaDigito.Text+'";');
      if Dados.TableSamples.RowCount = 0 then
      begin
      Dados.DatabaseSamples.ExecSQL('INSERT INTO rruff (rruff_id, digito) VALUES '+
        '("'+ListBoxSample_id.GetSelectedText+'", "'+ComboboxQuimicaDigito.Text+'");');
      end
      else
      ShowMessage('Já existe uma amostra com essas especificações');
    end;
    2:begin
      ComboboxRamanDigito.ItemIndex:=ComboboxRamanDigito.Items.Add(Trim(Aux));
      Dados.TableSamples:=Dados.DatabaseSamples.GetTable('SELECT especie, rruff_id, digito '+
        'FROM raman WHERE especie="'+ListboxMinerais.GetSelectedText+'" AND '+
          'rruff_id="'+ListboxSample_id.GetSelectedText+'" AND digito='+
            '"'+ComboboxRamanDigito.Text+'";');
      if Dados.TableSamples.RowCount = 0 then
      begin
      Dados.DatabaseSamples.ExecSQL('INSERT INTO raman (especie, rruff_id, digito, direcao)'+
        ' VALUES ("'+ListboxMinerais.GetSelectedText+'", "'+ListBoxSample_id.
          GetSelectedText+'", "'+ComboboxRamanDigito.Text+'", "'+
            ComboboxDirecaoLaser.Text+'");');
      end
      else
      ShowMessage('Já existe uma amostra com essas especificações');
    end;
    3:begin
      ComboboxVarreduraDigito.ItemIndex:=ComboboxVarreduraDigito.Items.Add(Trim(Aux));
      Dados.TableSamples:=Dados.DatabaseSamples.GetTable('SELECT especie, rruff_id, digito '+
        'FROM varredura WHERE especie="'+ListboxMinerais.GetSelectedText+'" AND '+
          'rruff_id="'+ListboxSample_id.GetSelectedText+'" AND digito='+
            '"'+ComboboxVarreduraDigito.Text+'";');
      if Dados.TableSamples.RowCount = 0 then
      begin
      Dados.DatabaseSamples.ExecSQL('INSERT INTO varredura (especie, rruff_id, '+
        'digito, comprimento_onda) VALUES ("'+ListboxMinerais.GetSelectedText+'", "'
          +ListBoxSample_id.GetSelectedText+'", "'+ComboboxVarreduraDigito.Text+
            '", "'+ComboboxVarreduraOnda.Text+'");');
      end
      else
      ShowMessage('Já existe uma amostra com essas especificações');
    end;
    4:begin
      ComboboxInfravermelhoDigito.ItemIndex:=ComboboxInfravermelhoDigito.Items.
        Add(Trim(Aux));
      Dados.TableSamples:=Dados.DatabaseSamples.GetTable('SELECT especie, rruff_id, digito '+
        'FROM infravermelho WHERE especie="'+ListboxMinerais.GetSelectedText+'" AND '+
          'rruff_id="'+ListboxSample_id.GetSelectedText+'" AND digito='+
            '"'+ComboboxInfravermelhoDigito.Text+'";');
      if Dados.TableSamples.RowCount = 0 then
      begin
      Dados.DatabaseSamples.ExecSQL('INSERT INTO infravermelho (especie, rruff_id, '+
        'digito) VALUES ("'+ListboxMinerais.GetSelectedText
           +'", "'+ListBoxSample_id.GetSelectedText+'", "'+
             ComboboxInfravermelhoDigito.Text+'");');
      end
      else
      ShowMessage('Já existe uma amostra com essas especificações');
    end;
    5:begin
      ComboboxDifracaoDigito.ItemIndex:=ComboboxDifracaoDigito.Items.
        Add(Trim(Aux));
      Dados.TableSamples:=Dados.DatabaseSamples.GetTable('SELECT especie, rruff_id, digito '+
        'FROM difracao WHERE especie="'+ListboxMinerais.GetSelectedText+'" AND '+
          'rruff_id="'+ListboxSample_id.GetSelectedText+'" AND digito='+
            '"'+ComboboxDifracaoDigito.Text+'";');
      if Dados.TableSamples.RowCount = 0 then
      begin
      Dados.DatabaseSamples.ExecSQL('INSERT INTO difracao (especie, rruff_id, '+
        'digito) VALUES ("'+ListboxMinerais.GetSelectedText+'", "'+
          ListBoxSample_id.GetSelectedText+'", "'+ComboboxDifracaoDigito.Text+'");');
      end
      else
      ShowMessage('Já existe uma amostra com essas especificações');
    end;
  end;
  FormAdicionaRruff.Close;
end;         }

     {nao adicionado
procedure TFormPrincipal.DBMemoNomeEditingDone(Sender: TObject);
var
  novo, velho: integer;
begin
  if Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString <>
    ListBoxMinerais.GetSelectedText then
  begin
    velho := ListboxMinerais.items.IndexOf(ListboxMinerais.getselectedtext);
    novo := ListboxMinerais.Items.Add(dados.SQLite3datasetgeral.FieldByName(
      'nome').AsString);
    ListboxMinerais.items.Exchange(novo, velho);
    ListboxMinerais.Items.Delete(novo);
    UpDateCampos(Minerais, Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
      'nome', DBMemoNome);
  end;
end;                }
    {nao adicionado
procedure TFormPrincipal.DBMemoNomeKeyUp(Sender: TObject; var Key: word;
  Shift: TShiftState);
var
  aux: integer;
begin     /////funcoes para edicao de nome nao estao finalizadas!
  {if Key = 13 then
  begin
   aux := ListboxMinerais.items.IndexOf(ListboxMinerais.getselectedtext);
    UpDateCampos( Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
      'nome', DBMemoNome);
   Preenche_Lista;
   ProcuraMineral;
   ListBoxMinerais.Selected[aux] := True;
  end;                    }
  UpDateCampos(Minerais, Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
    'nome', DBMemoNome);
end;   }

procedure TFormPrincipal.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  Config.Free;
 // sldb.Free;
end;

procedure TFormPrincipal.ActionOpenMineralFormExecute(Sender: TObject);
begin
  FormFichaEspecie:=TFormFichaEspecie.Create(nil);
  with FormFichaEspecie do
  begin
    Show;
  end;
end;

procedure TFormPrincipal.ActionOpenFormDatabaseExecute(Sender: TObject);
begin
  FormSelectDatabase.Show;
end;

procedure TFormPrincipal.ActionOpenHelpFormExecute(Sender: TObject);
begin
  FormAjuda.Show;
end;

procedure TFormPrincipal.ActionOpenSampleFormExecute(Sender: TObject);
begin
  FormFichaAmostra:=TFormFichaAmostra.Create(nil);
  with FormFichaAmostra do
  begin
    Show;
  end;
end;

procedure TFormPrincipal.FormCreate(Sender: TObject);
var
  MineralDb, SamplesDb, Diretorio, Ordenamento: string;
begin
  Imagem_Selecionada := '1';
  if DirectoryExists(GetCurrentDir+'\Data') then
    ConfigFilePath := GetCurrentDir + '\Data\config.ini'
  else
    ConfigFilePath:= GetCurrentDir + '\config.ini';
  Config := TIniFile.Create(ConfigFilePath);
end;

          {
procedure TFormPrincipal.ModoEdicao;
begin
  if (Dados.SQLite3DatasetGeral.Active) then
    Dados.SQLite3DatasetGeral.ApplyUpdates();

  Config := TIniFile.Create(ConfigFilePath);

  if (MenuItemModoEdicao.Checked) then
  begin
    Config.WriteBool('configuracoes', 'modo_edicao', True);
    statusbar1.Panels.Items[1].Text := 'Modo de Edição Desativado';
    image1.Hint := '';
    image2.Hint := '';
    image3.Hint := '';
    image4.Hint := '';
    image5.Hint := '';

    ImageCristalografia1.Hint := '';
    ImageCristalografia2.Hint := '';

    MenuItemModoEdicao.Checked := False;

    GroupBoxDureza.Enabled := False;
    GroupBoxDensidade.Enabled := False;

    dbmemonome.ReadOnly := True;
    dbmemoocorrencia.ReadOnly := True;
    dbmemoassociacao.ReadOnly := True;
    dbmemoclasse.ReadOnly := True;
    dbmemosubclasse.ReadOnly := True;
    dbmemogrupo.ReadOnly := True;
    dbmemoSubgrupo.ReadOnly := True;
    dbmemoAplicacao.ReadOnly := True;
    dbmemoAlteracao.ReadOnly := True;
    dbmemoDistincao.ReadOnly := True;
    dbmemoCor.ReadOnly := True;
    dbmemoTraco.ReadOnly := True;
    dbmemoclivagem.ReadOnly := True;
    dbmemofratura.ReadOnly := True;
    dbmemoBrilho.ReadOnly := True;
    dbmemoMagnetismo.ReadOnly := True;
    dbmemoLuminescencia.ReadOnly := True;
    dbmemoDifaneidade.ReadOnly := True;
    dbmemoSinal_optico.ReadOnly := True;
    dbmemoIndice_Refracao.ReadOnly := True;
    dbmemoAngulo.ReadOnly := True;
    dbmemoCor_Interferencia.ReadOnly := True;
    dbmemoSinal_Elongacao.ReadOnly := True;
    dbmemoBirrefringencia.ReadOnly := True;
    dbmemoRelevo.ReadOnly := True;
    dbmemoExtincao.ReadOnly := True;
    dbmemoSistema.ReadOnly := True;
    dbmemoH_M.ReadOnly := True;
    DBMemoHabito.ReadOnly := True;
    dbmemoClasse_Cristalina.ReadOnly := True;
    DBMemoCor_Lamina.ReadOnly := True;

    MemoVarreduraDescricao.ReadOnly := True;
    MemoInfravermelhoDescricao.ReadOnly := True;
    MemoA.ReadOnly := True;
    MemoB.ReadOnly := True;
    MemoC.ReadOnly := True;
    MemoAlpha.ReadOnly := True;
    MemoBeta.ReadOnly := True;
    MemoGamma.ReadOnly := True;
    MemoVolume.ReadOnly := True;
    MemoSistemaCristalino.ReadOnly := True;

    MemoAmostraQuimica.ReadOnly := True;
    MemoLocalidade.ReadOnly := True;
    MemoFonte.ReadOnly := True;
    MemoAmostraDescricao.ReadOnly := True;
    MemoQuimicaDescricao.ReadOnly := True;
    MemoRamanDescricao.ReadOnly := True;
    MemoSituacao.ReadOnly := True;
    MemoQuimicaMedida.ReadOnly := True;
    MemoRamanPin_id.ReadOnly := True;
    MemoRamanOrientacao.ReadOnly := True;
    MemoProprietario.ReadOnly := True;
    MemoSample.ReadOnly := True;

    richmemoformula.Visible := True;
    //dbmemoformula.Visible := False;
    AtualizaRichMemo;
  end
  else
  begin
    Config.WriteBool('configuracoes', 'modo_edicao', False);
    statusbar1.Panels.Items[1].Text := 'Modo de Edição Ativado';

    image1.Hint := 'Duplo clique para alterar';
    image2.Hint := 'Duplo clique para alterar';
    image3.Hint := 'Duplo clique para alterar';
    image4.Hint := 'Duplo clique para alterar';
    image5.Hint := 'Duplo clique para alterar';
    ImageCristalografia1.Hint := 'Duplo clique para alterar';
    ImageCristalografia2.Hint := 'Duplo clique para alterar';

    GroupBoxDureza.Enabled := True;
    GroupBoxDensidade.Enabled := True;

    MenuItemModoEdicao.Checked := True;

    dbmemonome.ReadOnly := False;
    dbmemoocorrencia.ReadOnly := False;
    dbmemoassociacao.ReadOnly := False;
    dbmemoclasse.ReadOnly := False;
    dbmemosubclasse.ReadOnly := False;
    dbmemogrupo.ReadOnly := False;
    dbmemoSubgrupo.ReadOnly := False;
    dbmemoaplicacao.ReadOnly := False;
    dbmemoalteracao.ReadOnly := False;
    dbmemodistincao.ReadOnly := False;
    dbmemocor.ReadOnly := False;
    dbmemoTraco.ReadOnly := False;
    dbmemoClivagem.ReadOnly := False;
    dbmemoFratura.ReadOnly := False;
    dbmemoBrilho.ReadOnly := False;
    dbmemoMagnetismo.ReadOnly := False;
    dbmemoLuminescencia.ReadOnly := False;
    dbmemoDifaneidade.ReadOnly := False;
    dbmemoSinal_Optico.ReadOnly := False;
    dbmemoIndice_Refracao.ReadOnly := False;
    dbmemoAngulo.ReadOnly := False;
    dbmemoCor_Interferencia.ReadOnly := False;
    dbmemoSinal_Elongacao.ReadOnly := False;
    dbmemoBirrefringencia.ReadOnly := False;
    dbmemoRelevo.ReadOnly := False;
    dbmemoExtincao.ReadOnly := False;
    dbmemoSistema.ReadOnly := False;
    dbmemoH_M.ReadOnly := False;
    DBMemoHabito.ReadOnly := False;
    dbmemoClasse_Cristalina.ReadOnly := False;
    DBMemoCor_Lamina.ReadOnly := False;

    MemoVarreduraDescricao.ReadOnly := False;
    MemoInfravermelhoDescricao.ReadOnly := False;
    MemoInfravermelhoResolucao.ReadOnly := False;
    MemoA.ReadOnly := False;
    MemoB.ReadOnly := False;
    MemoC.ReadOnly := False;
    MemoAlpha.ReadOnly := False;
    MemoBeta.ReadOnly := False;
    MemoGamma.ReadOnly := False;
    MemoVolume.ReadOnly := False;
    MemoSistemaCristalino.ReadOnly := False;

    MemoAmostraQuimica.ReadOnly := False;
    MemoLocalidade.ReadOnly := False;
    MemoFonte.ReadOnly := False;
    MemoAmostraDescricao.ReadOnly := False;
    MemoQuimicaDescricao.ReadOnly := False;
    MemoRamanDescricao.ReadOnly := False;
    MemoSituacao.ReadOnly := False;
    MemoQuimicaMedida.ReadOnly := False;
    MemoRamanPin_id.ReadOnly := False;
    MemoRamanOrientacao.ReadOnly := False;
    MemoProprietario.ReadOnly := False;
    MemoSample.ReadOnly := False;

    richmemoformula.Visible := False;
    //dbmemoformula.Visible := True;
  end;
  Config.Free;
end;      }
         {
procedure TFormPrincipal.AtualizaRichMemo;
var
  aux: string;
  i, j: integer;
begin
  if (MenuItemNormal.Checked) then
  begin
    Fonte.Size := Normal;
    Fonte2.Size := Normal;
    FonteNormal.Size := Normal;
  end
  else
  begin
    Fonte.Size := Grande;
    Fonte2.Size := Grande;
    FonteNormal.Size := Grande;
  end;
  if MenuItemModoEdicao.Checked then
  begin
    aux := DBMemoFormula.Text;
    RichMemoFormula.Text := aux;
    i := Length(aux);

    for j := 1 to i do
    begin
      if (aux[j] = '0') then
        RichMemoFormula.SetTextAttributes(j - 1, 1, fonte)
      else
      if (aux[j] = '1') then
        RichMemoFormula.SetTextAttributes(j - 1, 1, fonte)
      else
      if (aux[j] = '2') then
        RichMemoFormula.SetTextAttributes(j - 1, 1, fonte)
      else
      if (aux[j] = '3') then
        RichMemoFormula.SetTextAttributes(j - 1, 1, fonte)
      else
      if (aux[j] = '4') then
        RichMemoFormula.SetTextAttributes(j - 1, 1, fonte)
      else
      if (aux[j] = '5') then
        RichMemoFormula.SetTextAttributes(j - 1, 1, fonte)
      else
      if (aux[j] = '6') then
        RichMemoFormula.SetTextAttributes(j - 1, 1, fonte)
      else
      if (aux[j] = '7') then
        RichMemoFormula.SetTextAttributes(j - 1, 1, fonte)
      else
      if (aux[j] = '8') then
        RichMemoFormula.SetTextAttributes(j - 1, 1, fonte)
      else
      if (aux[j] = '9') then
        RichMemoFormula.SetTextAttributes(j - 1, 1, fonte)
      else
      if (aux[j] = '(') then
        RichMemoFormula.SetTextAttributes(j - 1, 1, fonte2)
      else
      if (aux[j] = ')') then
        RichMemoFormula.SetTextAttributes(j - 1, 1, fonte2)
      else
      if (aux[j] = '.') then
        RichMemoFormula.SetTextAttributes(j - 1, 1, fonte2)
      else
      if (aux[j] = ',') then
        RichMemoFormula.SetTextAttributes(j - 1, 1, fonte2)
      else
        RichMemoFormula.SetTextAttributes(j - 1, 1, fontenormal);
    end;
  end;
end;
}

end.
