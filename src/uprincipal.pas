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
  StdCtrls, ExtCtrls, ComCtrls, DBCtrls, ExtDlgs, Buttons, BGRAPanel,
  BGRALabel, RichMemo, uFormImpressao, uSelecionaBD, SQLite3mod,
  SQLite3tablemod, uBibliografia, UnitAjuda, IniFiles, unitImagem;

type

  { TFormPrincipal }

  TFormPrincipal = class(TForm)
    BGRALabelNome: TBGRALabel;
    BGRALabelClasse: TBGRALabel;
    BGRALabelSubclasse: TBGRALabel;
    BGRALabelGrupo: TBGRALabel;
    BGRALabelSubgrupo: TBGRALabel;
    BGRALabelDureza: TBGRALabel;
    BGRALabelDensidade: TBGRALabel;
    BGRALabelOcorrencia: TBGRALabel;
    BGRALabelAssociacao: TBGRALabel;
    BitBtnAdImagem: TBitBtn;
    BitBtnRemImagem: TBitBtn;
    ComboBoxClasse: TComboBox;
    ComboBoxDureza_max: TComboBox;
    ComboBoxDureza_min: TComboBox;
    ComboBoxGrupo: TComboBox;
    ComboBoxSubclasse: TComboBox;
    ComboBoxSubgrupo: TComboBox;
    DBEditDureza_Min: TDBEdit;
    DBEditDureza_Max: TDBEdit;
    DBEditDensidade_Min: TDBEdit;
    DBEditDensidade_Max: TDBEdit;
    DBMemoCor_Lamina: TDBMemo;
    DBMemoAngulo: TDBMemo;
    DBMemoBirrefringencia: TDBMemo;
    DBMemoClasse_Cristalina: TDBMemo;
    DBMemoCor_interferencia: TDBMemo;
    DBMemoDifaneidade: TDBMemo;
    DBMemoExtincao: TDBMemo;
    DBMemoHabito: TDBMemo;
    DBMemoH_M: TDBMemo;
    DBMemoIndice_Refracao: TDBMemo;
    DBMemoRelevo: TDBMemo;
    DBMemoSinal_Elongacao: TDBMemo;
    DBMemoSinal_Optico: TDBMemo;
    DBMemoMagnetismo: TDBMemo;
    DBMemoLuminescencia: TDBMemo;
    DBMemoFratura: TDBMemo;
    DBMemoCor: TDBMemo;
    DBMemoSistema: TDBMemo;
    DBMemoTraco: TDBMemo;
    DBMemoBrilho: TDBMemo;
    DBMemoClivagem: TDBMemo;
    EditAssociacao: TEdit;
    EditDensidade_Max: TEdit;
    EditDensidade_min: TEdit;
    EditDureza: TEdit;
    EditDensidade: TEdit;
    EditNome: TEdit;
    EditOcorrencia: TEdit;
    GroupBox1: TGroupBox;
    GroupBoxCristalografia2: TGroupBox;
    GroupBoxImagem2: TGroupBox;
    GroupBoxImagem3: TGroupBox;
    GroupBoxImagem4: TGroupBox;
    GroupBoxImagem5: TGroupBox;
    GroupBoxImagem1: TGroupBox;
    GroupBoxCristalografia: TGroupBox;
    GroupBoxCristalografia1: TGroupBox;
    GroupBoxImagemAmpliada: TGroupBox;
    GroupBoxOpticas: TGroupBox;
    GroupBoxDureza: TGroupBox;
    GroupBoxDensidade: TGroupBox;
    GroupBoxProp_Fisicas: TGroupBox;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    ImageAmpliada: TImage;
    ImageCristalografia2: TImage;
    ImageCristalografia1: TImage;
    LabelSistema_Cristalino: TLabel;
    LabelClasse_Cristalina: TLabel;
    LabelSimbologia: TLabel;
    LabelHabito: TLabel;
    LabelDifaneidade: TLabel;
    LabelSinal_optico: TLabel;
    LabelIndice_Refracao: TLabel;
    LabelAngulo_2V: TLabel;
    LabelCor_Interferencia: TLabel;
    LabelSInal_Elongacao: TLabel;
    LabelBirrefringencia: TLabel;
    LabelRelevo: TLabel;
    LabelExtincao: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    LabelCor: TLabel;
    LabelTraco: TLabel;
    LabelBrilho: TLabel;
    LabelClivagem: TLabel;
    LabelFratura: TLabel;
    LabelMagnetismo: TLabel;
    LabelLuminescencia: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    LabelCor_Lamina: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    ListBoxMinerais: TListBox;
    MenuItemAlfabetica: TMenuItem;
    MenuItemImagens: TMenuItem;
    MenuItemAdicionar: TMenuItem;
    MenuItemFiltro: TMenuItem;
    MenuItemExibir: TMenuItem;
    MenuItemRetira: TMenuItem;
    MenuItemExclui: TMenuItem;
    MenuItemAjuda: TMenuItem;
    MenuItemNormal: TMenuItem;
    MenuItemGrande: TMenuItem;
    MenuItemFonte: TMenuItem;
    MenuItemSelecionaBD: TMenuItem;
    MenuItemExcluir: TMenuItem;
    MenuItemModoEdicao: TMenuItem;
    BGRAPanelImagens: TBGRAPanel;
    BGRAPanelFiltro: TBGRAPanel;
    BGRAPanelListbox: TBGRAPanel;
    DBMemoClasse: TDBMemo;
    DBMemoSubclasse: TDBMemo;
    DBMemoGrupo: TDBMemo;
    DBMemoSubgrupo: TDBMemo;
    DBMemoOCorrencia: TDBMemo;
    DBMemoAssociacao: TDBMemo;
    DBMemoDistincao: TDBMemo;
    DBMemoAlteracao: TDBMemo;
    DBMemoAplicacao: TDBMemo;
    DBMemoNome: TDBMemo;
    DBMemoFormula: TDBMemo;
    GroupBoxInf_Gerais: TGroupBox;
    Label1: TLabel;
    LabelAplicacao: TLabel;
    LabelClasse: TLabel;
    LabelSubClasse: TLabel;
    LabelGrupo: TLabel;
    LabelSubGrupo: TLabel;
    LabelOcorrencia: TLabel;
    LabelAssociacao: TLabel;
    LabelDistincao: TLabel;
    LabelAlteracao: TLabel;
    LabelNome: TLabel;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItemBD: TMenuItem;
    MenuItemOrdem: TMenuItem;
    MenuItemDureza: TMenuItem;
    MenuItemDensidade: TMenuItem;
    MenuItemNovo: TMenuItem;
    MenuItemImprimir: TMenuItem;
    MenuItemBibliografia: TMenuItem;
    MenuItemEditar: TMenuItem;
    MenuItemArquivo: TMenuItem;
    OpenPictureDialog1: TOpenPictureDialog;
    PageControlFicha: TPageControl;
    PanelImagem: TPanel;
    PanelFicha: TPanel;
    PopupMenuListbox: TPopupMenu;
    ProgressBar1: TProgressBar;
    RichMemoFormula: TRichMemo;
    StatusBar1: TStatusBar;
    TabSheetInf_Gerais: TTabSheet;
    TabSheetImagem: TTabSheet;
    TabSheetCristalografia: TTabSheet;
    TabSheetProp_Fisicas: TTabSheet;
    TabSheetOticas: TTabSheet;
    Timer1: TTimer;
    procedure BitBtnAdImagemClick(Sender: TObject);
    procedure BitBtnFiltrarClick(Sender: TObject);
    procedure BitBtnRemImagemClick(Sender: TObject);
    procedure ComboBoxClasseChange(Sender: TObject);
    procedure ComboBoxDureza_maxChange(Sender: TObject);
    procedure ComboBoxDureza_minChange(Sender: TObject);
    procedure ComboBoxGrupoChange(Sender: TObject);
    procedure ComboBoxSubclasseChange(Sender: TObject);
    procedure ComboBoxSubgrupoChange(Sender: TObject);
    procedure DBEditDensidade_MaxEditingDone(Sender: TObject);
    procedure DBEditDensidade_MaxKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEditDensidade_MinEditingDone(Sender: TObject);
    procedure DBEditDensidade_MinKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEditDureza_MaxEditingDone(Sender: TObject);
    procedure DBEditDureza_MaxKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEditDureza_MinEditingDone(Sender: TObject);
    procedure DBEditDureza_MinKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBMemoAlteracaoEditingDone(Sender: TObject);
    procedure DBMemoAlteracaoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBMemoAnguloEditingDone(Sender: TObject);
    procedure DBMemoAnguloKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBMemoAplicacaoEditingDone(Sender: TObject);
    procedure DBMemoAplicacaoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBMemoAssociacaoEditingDone(Sender: TObject);
    procedure DBMemoAssociacaoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBMemoBirrefringenciaEditingDone(Sender: TObject);
    procedure DBMemoBirrefringenciaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBMemoBrilhoEditingDone(Sender: TObject);
    procedure DBMemoBrilhoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBMemoClasseEditingDone(Sender: TObject);
    procedure DBMemoClasseKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBMemoClasse_CristalinaEditingDone(Sender: TObject);
    procedure DBMemoClasse_CristalinaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBMemoClivagemEditingDone(Sender: TObject);
    procedure DBMemoClivagemKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBMemoCorEditingDone(Sender: TObject);
    procedure DBMemoCorKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState
      );
    procedure DBMemoCor_interferenciaEditingDone(Sender: TObject);
    procedure DBMemoCor_interferenciaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBMemoCor_LaminaEditingDone(Sender: TObject);
    procedure DBMemoCor_LaminaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBMemoDifaneidadeEditingDone(Sender: TObject);
    procedure DBMemoDifaneidadeKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBMemoDistincaoEditingDone(Sender: TObject);
    procedure DBMemoDistincaoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBMemoExtincaoEditingDone(Sender: TObject);
    procedure DBMemoExtincaoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBMemoFormulaEditingDone(Sender: TObject);
    procedure DBMemoFormulaKeyPress(Sender: TObject; var Key: char);
    procedure DBMemoFormulaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBMemoFraturaEditingDone(Sender: TObject);
    procedure DBMemoFraturaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBMemoGrupoEditingDone(Sender: TObject);
    procedure DBMemoGrupoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBMemoHabitoEditingDone(Sender: TObject);
    procedure DBMemoHabitoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBMemoH_MEditingDone(Sender: TObject);
    procedure DBMemoH_MKeyPress(Sender: TObject; var Key: char);
    procedure DBMemoH_MKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState
      );
    procedure DBMemoIndice_RefracaoEditingDone(Sender: TObject);
    procedure DBMemoIndice_RefracaoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBMemoLuminescenciaEditingDone(Sender: TObject);
    procedure DBMemoLuminescenciaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBMemoMagnetismoEditingDone(Sender: TObject);
    procedure DBMemoMagnetismoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBMemoNomeEditingDone(Sender: TObject);
    procedure DBMemoNomeKeyPress(Sender: TObject; var Key: char);
    procedure DBMemoOCorrenciaEditingDone(Sender: TObject);
    procedure DBMemoOCorrenciaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBMemoRelevoEditingDone(Sender: TObject);
    procedure DBMemoRelevoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBMemoSinal_ElongacaoEditingDone(Sender: TObject);
    procedure DBMemoSinal_ElongacaoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBMemoSinal_OpticoEditingDone(Sender: TObject);
    procedure DBMemoSinal_OpticoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBMemoSistemaEditingDone(Sender: TObject);
    procedure DBMemoSistemaKeyPress(Sender: TObject; var Key: char);
    procedure DBMemoSistemaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBMemoSubclasseEditingDone(Sender: TObject);
    procedure DBMemoSubclasseKeyPress(Sender: TObject; var Key: char);
    procedure DBMemoSubclasseKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBMemoSubgrupoEditingDone(Sender: TObject);
    procedure DBMemoSubgrupoKeyPress(Sender: TObject; var Key: char);
    procedure DBMemoSubgrupoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBMemoTracoEditingDone(Sender: TObject);
    procedure DBMemoTracoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditAssociacaoEditingDone(Sender: TObject);
    procedure EditDensidadeClick(Sender: TObject);
    procedure EditDensidade_MaxEditingDone(Sender: TObject);
    procedure EditDensidade_minEditingDone(Sender: TObject);
    procedure EditDurezaClick(Sender: TObject);
    procedure EditNomeEditingDone(Sender: TObject);
    procedure EditOcorrenciaEditingDone(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image1DblClick(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image2DblClick(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image3DblClick(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image4DblClick(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image5DblClick(Sender: TObject);
    procedure ImageCristalografia1Click(Sender: TObject);
    procedure ImageCristalografia1DblClick(Sender: TObject);
    procedure ImageCristalografia2Click(Sender: TObject);
    procedure ImageCristalografia2DblClick(Sender: TObject);
    procedure ListBoxMineraisClick(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItemAdicionarClick(Sender: TObject);
    procedure MenuItemExcluiClick(Sender: TObject);
    procedure MenuItemFiltroClick(Sender: TObject);
    procedure MenuItemImagensClick(Sender: TObject);
    procedure MenuItemRetiraClick(Sender: TObject);
    procedure MenuItemAjudaClick(Sender: TObject);
    procedure MenuItemBibliografiaClick(Sender: TObject);
    procedure MenuItemDurezaClick(Sender: TObject);
    procedure MenuItemExcluirClick(Sender: TObject);
    procedure MenuItemImprimirClick(Sender: TObject);
    procedure MenuItemModoEdicaoClick(Sender: TObject);
    procedure MenuItemNormalClick(Sender: TObject);
    procedure MenuItemNovoClick(Sender: TObject);
    procedure MenuItemSelecionaBDClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    procedure Preenche_Lista;
    procedure Preenche_Classes;
    procedure Preenche_SubClasses;
    procedure Preenche_Grupos;
    procedure Preenche_SubGrupos;
    function Filtro_Nome: boolean;
    function Filtro_Ocorrencia: boolean;
    function Filtro_Associacao: boolean;
    function Nome_Didatico: string;
    procedure AtualizaRichMemo;
    procedure LimpaRichMemo;
    procedure Barra_Status;
    procedure EditaDD;
    procedure LimpaDD;
    procedure Adiciona_Imagem(num: char);
    //procedure Adiciona_Cristalografia(num: char);
    procedure AtualizaImagem;
    procedure SelecionaImagem(num: char);
    procedure ProcuraMineral;
    procedure MemoryStreamParaImagem;
    procedure AdicionaMineral;
    procedure RetiraDaLista;
    procedure ExcluiMineral;
    procedure MudarFonte;   //UpdateMemos
    procedure UpdateCampos(Especie:String; Campo:String; objeto :TDBMemo);
    procedure UpdateEdits(Especie:String; Campo:String; objeto :TDBEdit);
    procedure ModoEdicao;
    function DefinirOrdem: String;
    { private declarations }
  public
    { public declarations }
  end;

const
  lista_formatos: string = 'All Files| *.jpg; *.jpeg;'; //ver se *.mpeg é compatível
  grande: integer = 13;
  normal: integer = 9;

var
  FormPrincipal: TFormPrincipal;
  Nome_Mineral: string;
  Imagem_Selecionada: char;
  Tipo: string;
  UltimaPesquisa: string;

  ms: TMemoryStream;
  pic: TJPEGImage;

  sldb: TSQLiteDatabase;
  sltb: TSQLiteTable;
  sltb2: TSQLiteTable;
  slst: Tsqlitestmt;  //nao usada

  Config: TIniFile;

  //variaveis usadas para nao preencher a lista desnecessariamente://transformar em variáveis locais
  den_min, den_max, ocorrencia, associacao: string;
  //Usado pelo RichMemo
  fonte, fontenormal, fonte2: TFontParams;

  DatasetFileName: String;

implementation

uses udatamodule;

{$R *.lfm}

{ TFormPrincipal }

procedure TFormPrincipal.ComboBoxClasseChange(Sender: TObject);
begin
  Preenche_SubClasses;
  Preenche_Grupos;
  Preenche_SubGrupos;
  Preenche_Lista;
end;

procedure TFormPrincipal.ComboBoxGrupoChange(Sender: TObject);
begin
  Preenche_SubGrupos;
  Preenche_Lista;
end;

procedure TFormPrincipal.ComboBoxSubclasseChange(Sender: TObject);
begin
  Preenche_Grupos;
  Preenche_SubGrupos;
  Preenche_Lista;
end;

procedure TFormPrincipal.ComboBoxSubgrupoChange(Sender: TObject);
begin
  Preenche_Lista;
end;

procedure TFormPrincipal.DBEditDensidade_MaxEditingDone(Sender: TObject);
begin
  UpDateEdits( Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
    'densidade_max', DBEditDensidade_max);
end;

procedure TFormPrincipal.DBEditDensidade_MaxKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  UpDateEdits( Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
     'densidade_max', DBEditDensidade_max);
end;

procedure TFormPrincipal.DBEditDensidade_MinEditingDone(Sender: TObject);
begin
  UpDateEdits( Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
      'densidade_min', DBEditDensidade_min);
end;

procedure TFormPrincipal.DBEditDensidade_MinKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  UpDateEdits( Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
      'densidade_min', DBEditDensidade_min);
end;

procedure TFormPrincipal.DBEditDureza_MaxEditingDone(Sender: TObject);
begin
  UpDateEdits( Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
      'dureza_max', DBEditDureza_max);
end;

procedure TFormPrincipal.DBEditDureza_MaxKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     UpDateEdits( Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
      'dureza_max', DBEditDureza_max);
end;

procedure TFormPrincipal.DBEditDureza_MinEditingDone(Sender: TObject);
begin
  UpDateEdits( Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
     'dureza_min', DBEditDureza_min);
end;

procedure TFormPrincipal.DBEditDureza_MinKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   UpDateEdits( Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
      'dureza_min', DBEditDureza_min);
end;

procedure TFormPrincipal.DBMemoAlteracaoEditingDone(Sender: TObject);
begin
   UpDateCampos( Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
      'alteracao', DBMemoAlteracao);
end;

procedure TFormPrincipal.DBMemoAlteracaoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  UpDateCampos( Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
      'alteracao', DBMemoAlteracao);
end;

procedure TFormPrincipal.DBMemoAnguloEditingDone(Sender: TObject);
begin
    UpDateCampos( Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
      'angulo', DBMemoAngulo);
end;

procedure TFormPrincipal.DBMemoAnguloKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   UpDateCampos( Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
      'angulo', DBMemoAngulo);
end;

procedure TFormPrincipal.DBMemoAplicacaoEditingDone(Sender: TObject);
begin
   UpDateCampos( Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
      'Aplicacao', DBMemoAplicacao);
end;

procedure TFormPrincipal.DBMemoAplicacaoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  UpDateCampos( Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
      'Aplicacao', DBMemoAplicacao);
end;

procedure TFormPrincipal.DBMemoAssociacaoEditingDone(Sender: TObject);
begin
   UpDateCampos( Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
      'associacao', DBMemoAssociacao);
end;

procedure TFormPrincipal.DBMemoAssociacaoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  UpDateCampos( Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
      'associacao', DBMemoAssociacao);
end;

procedure TFormPrincipal.DBMemoBirrefringenciaEditingDone(Sender: TObject);
begin
  UpDateCampos( Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
      'birrefringencia', DBMemoBirrefringencia);
end;

procedure TFormPrincipal.DBMemoBirrefringenciaKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    UpDateCampos( Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
      'birrefringencia', DBMemoBirrefringencia);
end;

procedure TFormPrincipal.DBMemoBrilhoEditingDone(Sender: TObject);
begin
   UpDateCampos( Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
      'brilho', DBMemoBrilho);
end;

procedure TFormPrincipal.DBMemoBrilhoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   UpDateCampos( Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
      'brilho', DBMemoBrilho);
end;

procedure TFormPrincipal.DBMemoClasseEditingDone(Sender: TObject);
begin
    UpDateCampos( Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
      'classe', DBMemoClasse);
end;

procedure TFormPrincipal.DBMemoClasseKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    UpDateCampos( Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
      'classe', DBMemoClasse);
end;

procedure TFormPrincipal.DBMemoClasse_CristalinaEditingDone(Sender: TObject);
begin
  UpDateCampos( Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
      'classe_cristalina', DBMemoClasse_Cristalina);
end;

procedure TFormPrincipal.DBMemoClasse_CristalinaKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    UpDateCampos( Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
      'classe_cristalina', DBMemoClasse_Cristalina);
end;

procedure TFormPrincipal.DBMemoClivagemEditingDone(Sender: TObject);
begin
  UpDateCampos( Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
      'clivagem', DBMemoClivagem);
end;

procedure TFormPrincipal.DBMemoClivagemKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   UpDateCampos( Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
      'clivagem', DBMemoClivagem);
end;

procedure TFormPrincipal.DBMemoCorEditingDone(Sender: TObject);
begin
  UpDateCampos( Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
      'cor', DBMemoCor);
end;

procedure TFormPrincipal.DBMemoCorKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   UpDateCampos( Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
      'cor', DBMemoCor);
end;

procedure TFormPrincipal.DBMemoCor_interferenciaEditingDone(Sender: TObject);
begin
  UpDateCampos( Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
     'cor_interferencia', DBMemoCor_Interferencia);
end;

procedure TFormPrincipal.DBMemoCor_interferenciaKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   UpDateCampos( Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
      'cor_interferencia', DBMemoCor_Interferencia);
end;

procedure TFormPrincipal.DBMemoCor_LaminaEditingDone(Sender: TObject);
begin
  UpDateCampos( Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
      'cor_lamina', DBMemoCor_lamina);
end;

procedure TFormPrincipal.DBMemoCor_LaminaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     UpDateCampos( Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
      'cor_lamina', DBMemoCor_lamina);
end;

procedure TFormPrincipal.DBMemoDifaneidadeEditingDone(Sender: TObject);
begin
   UpDateCampos( Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
      'difaneidade', DBMemoDifaneidade);
end;

procedure TFormPrincipal.DBMemoDifaneidadeKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  UpDateCampos( Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
      'difaneidade', DBMemoDifaneidade);
end;

procedure TFormPrincipal.DBMemoDistincaoEditingDone(Sender: TObject);
begin
  UpDateCampos( Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
      'distincao', DBMemoDistincao);
end;

procedure TFormPrincipal.DBMemoDistincaoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   UpDateCampos( Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
      'distincao', DBMemoDistincao);
end;

procedure TFormPrincipal.DBMemoExtincaoEditingDone(Sender: TObject);
begin
    UpDateCampos( Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
      'extincao', DBMemoExtincao);
end;

procedure TFormPrincipal.DBMemoExtincaoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  UpDateCampos( Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
    'extincao', DBMemoExtincao);
end;

procedure TFormPrincipal.DBMemoFormulaEditingDone(Sender: TObject);
begin
    UpDateCampos( Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
      'formula', DBMemoFormula);
end;

procedure TFormPrincipal.DBMemoFormulaKeyPress(Sender: TObject; var Key: char);
begin

end;

procedure TFormPrincipal.DBMemoFormulaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   UpDateCampos( Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
      'formula', DBMemoFormula);
end;

procedure TFormPrincipal.DBMemoFraturaEditingDone(Sender: TObject);
begin
  UpDateCampos( Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
      'fratura', DBMemoFratura);
end;

procedure TFormPrincipal.DBMemoFraturaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  UpDateCampos( Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
      'fratura', DBMemoFratura);
end;

procedure TFormPrincipal.DBMemoGrupoEditingDone(Sender: TObject);
begin
    UpDateCampos( Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
      'grupo', DBMemoGrupo);
end;

procedure TFormPrincipal.DBMemoGrupoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Key = 13) then
  begin
    sltb := sldb.GetTable('UPDATE minerais SET grupo = "' + Copy(DBMemoGrupo.Text,
      0, Length(DBMemoGrupo.Text)) + '" WHERE nome = "' + DBMemoNome.Text + '";');
    Preenche_Grupos;
  end
  else
    UpDateCampos( Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
      'grupo', DBMemoGrupo);
end;

procedure TFormPrincipal.DBMemoHabitoEditingDone(Sender: TObject);
begin
  UpDateCampos( Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
   'habito', DBMemoHabito);
end;

procedure TFormPrincipal.DBMemoHabitoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  UpDateCampos( Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
   'habito', DBMemoHabito);
end;

procedure TFormPrincipal.DBMemoH_MEditingDone(Sender: TObject);
begin
    UpDateCampos( Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
   'habito', DBMemoHabito);
end;

procedure TFormPrincipal.DBMemoH_MKeyPress(Sender: TObject; var Key: char);
begin
     UpDateCampos( Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
   'h_m', DBMemoH_M);
end;

procedure TFormPrincipal.DBMemoH_MKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  UpDateCampos( Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
    'h_m', DBMemoH_M);
end;

procedure TFormPrincipal.DBMemoIndice_RefracaoEditingDone(Sender: TObject);
begin
  UpDateCampos( Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
      'indice_refracao', DBMemoIndice_Refracao);
end;

procedure TFormPrincipal.DBMemoIndice_RefracaoKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  UpDateCampos( Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
      'indice_refracao', DBMemoIndice_Refracao);
end;

procedure TFormPrincipal.DBMemoLuminescenciaEditingDone(Sender: TObject);
begin
  UpDateCampos( Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
      'luminescencia', DBMemoLuminescencia);
end;

procedure TFormPrincipal.DBMemoLuminescenciaKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  UpDateCampos( Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
      'luminescencia', DBMemoLuminescencia);
end;

procedure TFormPrincipal.DBMemoMagnetismoEditingDone(Sender: TObject);
begin
  UpDateCampos( Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
      'magnetismo', DBMemoMagnetismo);
end;

procedure TFormPrincipal.DBMemoMagnetismoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  UpDateCampos( Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
      'magnetismo', DBMemoMagnetismo);
end;

procedure TFormPrincipal.ComboBoxDureza_maxChange(Sender: TObject);
begin
  Preenche_Lista;
end;

procedure TFormPrincipal.ComboBoxDureza_minChange(Sender: TObject);
begin
  Preenche_Lista;
end;

procedure TFormPrincipal.BitBtnFiltrarClick(Sender: TObject);
begin
  Preenche_Lista;
end;

procedure TFormPrincipal.BitBtnRemImagemClick(Sender: TObject);
begin
  if ListboxMinerais.GetSelectedText <> EmptyStr then
  begin
  RemoveImagem('Imagem', 'minerais', StrToInt(Imagem_Selecionada));
  end
  else
  begin
    RemoveImagem('MineralogiaImagem', 'mineralogia', StrToInt(Imagem_Selecionada));
  end;
  Imagem_Selecionada := '1';
  AtualizaImagem;
end;

procedure TFormPrincipal.BitBtnAdImagemClick(Sender: TObject);
begin
  if (ListBoxMinerais.GetSelectedText = EmptyStr) then
  begin
    if (Imagem_Selecionada = '6') then
      ShowMessage(
        'Só é possível adicionar Imagens Cristalográficas se tiver algum mineral selecionado na lista')
    else
    if (Imagem_Selecionada = '7') then
      ShowMessage(
        'Só é possível adicionar Imagens Cristalográficas se tiver algum mineral selecionado na lista')
    else
      Adiciona_Imagem(Imagem_Selecionada);
  end;
  AtualizaImagem;
end;

procedure TFormPrincipal.DBMemoNomeEditingDone(Sender: TObject);
var
  novo, velho: integer;
begin
  velho := ListboxMinerais.items.IndexOf(ListboxMinerais.getselectedtext);
  novo := ListboxMinerais.Items.Add(dados.SQLite3datasetgeral.FieldByName(
    'nome').AsString);
  ListboxMinerais.items.Exchange(novo, velho);
  ListboxMinerais.Items.Delete(novo);
end;

procedure TFormPrincipal.DBMemoNomeKeyPress(Sender: TObject; var Key: char);
var
  aux: integer;
begin
  {if (Key = #13) then
  begin
    aux := ListboxMinerais.items.IndexOf(ListboxMinerais.getselectedtext);
    {sltb := sldb.GetTable('UPDATE minerais SET nome = "' + Copy(DBMemoNome.Text, 0,
      Length(DBMemoNome.Text)-1) + '" WHERE nome = "' + DBMemoNome.Text + '";');
      }
      sltb := sldb.GetTable('UPDATE minerais SET nome = "' + DBMemoNome.Text + '" WHERE nome = "' + DBMemoNome.Text + '";');
    Preenche_Lista;
    ProcuraMineral;
    ListBoxMinerais.Selected[aux] := True;
  end; }
end;

procedure TFormPrincipal.DBMemoOCorrenciaEditingDone(Sender: TObject);
begin
   UpDateCampos( Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
      'ocorrencia', DBMemoOcorrencia);
end;

procedure TFormPrincipal.DBMemoOCorrenciaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   UpDateCampos( Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
      'ocorrencia', DBMemoOcorrencia);
end;

procedure TFormPrincipal.DBMemoRelevoEditingDone(Sender: TObject);
begin
  UpDateCampos( Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
      'relevo', DBMemoRelevo);
end;

procedure TFormPrincipal.DBMemoRelevoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  UpDateCampos( Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
      'relevo', DBMemoRelevo);
end;

procedure TFormPrincipal.DBMemoSinal_ElongacaoEditingDone(Sender: TObject);
begin
  UpDateCampos( Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
      'sinal_elongacao', DBMemoSinal_Elongacao);
end;

procedure TFormPrincipal.DBMemoSinal_ElongacaoKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  UpDateCampos( Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
      'sinal_elongacao', DBMemoSinal_Elongacao);
end;

procedure TFormPrincipal.DBMemoSinal_OpticoEditingDone(Sender: TObject);
begin
  UpDateCampos( Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
      'sinal_optico', DBMemoSinal_Optico);
end;

procedure TFormPrincipal.DBMemoSinal_OpticoKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  UpDateCampos( Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
      'sinal_optico', DBMemoSinal_Optico);
end;

procedure TFormPrincipal.DBMemoSistemaEditingDone(Sender: TObject);
begin
  UpDateCampos( Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
    'sistema', DBMemoSistema);
end;

procedure TFormPrincipal.DBMemoSistemaKeyPress(Sender: TObject; var Key: char);
begin

end;

procedure TFormPrincipal.DBMemoSistemaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   UpDateCampos( Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
    'sistema', DBMemoSistema);
end;

procedure TFormPrincipal.DBMemoSubclasseEditingDone(Sender: TObject);
begin
   UpDateCampos( Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
      'subclasse', DBMemoSubClasse);
end;

procedure TFormPrincipal.DBMemoSubclasseKeyPress(Sender: TObject; var Key: char
  );
begin
  if MenuItemDureza.Checked then Result:= '(1/(dureza_max+1))'
  else
  if MenuItemDensidade.Checked then Result:= '(1/(densidade_max+1))'
  else
  if MenuItemAlfabetica.Checked then Result:= 'ASC';
end;

procedure TFormPrincipal.DBMemoSubclasseKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Key = 13) then
  begin
    sltb := sldb.GetTable('UPDATE minerais SET subclasse = "' + Copy(
      DBMemoSubClasse.Text, 0, Length(DBMemoSubClasse.Text)-1) + '" WHERE nome = "' +
      DBMemoNome.Text + '";');
    Preenche_SubClasses;
  end
  else
    UpDateCampos( Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
      'subclasse', DBMemoSubClasse);
end;

procedure TFormPrincipal.DBMemoSubgrupoEditingDone(Sender: TObject);
begin
    UpDateCampos( Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
      'subgrupo', DBMemoSubGrupo);
end;

procedure TFormPrincipal.DBMemoSubgrupoKeyPress(Sender: TObject; var Key: char);
begin

end;

procedure TFormPrincipal.DBMemoSubgrupoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Key = 13) then
  begin
    sltb := sldb.GetTable('UPDATE minerais SET subgrupo = "' + Copy(
      DBMemoSubGrupo.Text, 0, Length(DBMemoSubGrupo.Text)) + '" WHERE nome = "' +
      DBMemoNome.Text + '";');
    Preenche_SubGrupos;
  end
  else
    UpDateCampos( Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
      'subgrupo', DBMemoSubGrupo);
end;

procedure TFormPrincipal.DBMemoTracoEditingDone(Sender: TObject);
begin
   UpDateCampos( Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
      'traco', DBMemoTraco);
end;

procedure TFormPrincipal.DBMemoTracoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  UpDateCampos( Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
      'traco', DBMemoTraco);
end;

procedure TFormPrincipal.EditAssociacaoEditingDone(Sender: TObject);
begin
  if (EditAssociacao.Text <> Associacao) then
    Preenche_Lista;
  Associacao := EditAssociacao.Text;
end;

procedure TFormPrincipal.EditDensidadeClick(Sender: TObject);
begin
  if (GroupBoxDensidade.Visible) then
    GroupBoxDensidade.Visible := False
  else
    GroupBoxDensidade.Visible := True;
end;

procedure TFormPrincipal.EditDensidade_MaxEditingDone(Sender: TObject);
begin
  if (EditDensidade_Max.Text <> Den_Min) then
  begin
    Den_Max :=StringReplace(EditDensidade_Max.Text, ',','.',[]);
    EditDensidade_Max.Text:=Den_Max;
    Preenche_Lista;
  end;
end;

procedure TFormPrincipal.EditDensidade_minEditingDone(Sender: TObject);
begin
  if (EditDensidade_Min.Text <> Den_Min) then
  begin
    Den_Min :=StringReplace(EditDensidade_Min.Text, ',','.',[]);
    EditDensidade_Min.Text:=Den_Min;
    Preenche_Lista;
  end;
end;

procedure TFormPrincipal.EditDurezaClick(Sender: TObject);
begin
  if (GroupBoxDureza.Visible) then
    GroupBoxDureza.Visible := False
  else
    GroupBoxDureza.Visible := True;
end;

procedure TFormPrincipal.EditNomeEditingDone(Sender: TObject);
begin
  if (UltimaPesquisa <> EditNome.Text) then
  begin
    Preenche_lista;
    UltimaPesquisa := EditNome.Text;
    ProcuraMineral;
  end;
end;

procedure TFormPrincipal.EditOcorrenciaEditingDone(Sender: TObject);
begin
  if (EditOcorrencia.Text <> Ocorrencia) then
    Preenche_Lista;
  Ocorrencia := EditOcorrencia.Text;
end;

procedure TFormPrincipal.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  sldb.Free;
end;

procedure TFormPrincipal.FormCreate(Sender: TObject);
var
  BancoDados, Diretorio, Ordem: string;
begin
  Fonte.Style := [fsitalic];
  Fonte2.Style := [];
  FonteNormal.style := [fsbold];
  //fonte.Color := 1;
  //fonte2.Color := 1;
  //FonteNormal.Color := 1;

  Tipo := EmptyStr;
  //ver se precisa, feito para criar o campo geral no inicio e carregar as imagens iniciais
  Imagem_Selecionada := '1';
  limpaDD;
  LimpaRichMemo;
  Application.CreateForm(TFormSelecionaBD, FormSelecionaBD);
  Diretorio := GetCurrentDir + '\Data\config.ini';
  Config := TIniFile.Create(Diretorio);
  BancoDados := Config.ReadString('Configuracoes', 'BD', '');
  if Config.ReadString('Configuracoes', 'Comprimento', '') <> EmptyStr then
  FormPrincipal.Width:=StrToInt(Config.ReadString('Configuracoes', 'Comprimento', ''));
  if Config.ReadString('Configuracoes', 'Altura', '') <> EmptyStr then
  FormPrincipal.Height:=StrToInt(Config.ReadString('Configuracoes', 'Altura', ''));

  Ordem:=Config.ReadString('Configuracoes', 'Ordem','Alfabetica');
  if Upcase(Trim(Ordem)) = Upcase('Densidade') then
  MenuItemDensidade.Checked:=True
  else
  if  Upcase(Trim(Ordem)) = Upcase('Dureza') then
  MenuItemDureza.Checked:=True
  else
  if Upcase(Trim(Ordem)) = Upcase('Alfabetica') then
  MenuItemAlfabetica.Checked:=True;

  if Config.ReadString('Configuracoes', 'Ordem','') = 'Densidade' then
  MenuItemDensidade.Checked:=True else MenuItemDureza.Checked:=True;

  if Config.ReadString('Configuracoes', 'Fonte', '') = 'Grande' then
  MenuItemGrande.Checked:=True else
  MenuItemNormal.Checked:=True;
  if Config.ReadBool('Configuracoes', 'PainelFiltro', False) then
  begin
    BGRAPanelFiltro.Visible:=True;
    MenuItemFiltro.Checked:=True;
  end;
  if Config.ReadBool('Configuracoes', 'PainelImagem', True) then
  begin
  MenuItemimagens.Checked:=True;
  BGRAPanelImagens.Visible:=True;
  end;
  if Config.ReadBool('Configuracoes', 'ModoEdicao', False) then
  begin
  ModoEdicao;
  end;
  Config.Free;
  MudarFonte;
  if FileExists(BancoDados) then
  begin
    if Dados.DeterminaBD(BancoDados) then
    begin
    sldb := TSQLiteDatabase.Create(BancoDados);
    Dados.Sqlite3DatasetDidatico.Open();
    //acho q nao precisa definir a tabela aqui//
    //sltb := sldb.GetTable('SELECT imagem1,imagem2,imagem3, imagem4,imagem5,imagemCristalografia1, ImagemCristalografia2 FROM minerais');
  {  sltb2 := sldb.GetTable(
      'SELECT campo, mineralogiaimagem1, mineralogiaimagem2, mineralogiaimagem3, mineralogiaimagem4, mineralogiaimagem5 FROM mineralogia;');
    if sltb2.Count = 0 then
      sldb.ExecSQL('INSERT INTO mineralogia (campo) values ("geral");');
  }  Preenche_Classes;
    Preenche_SubClasses;
    Preenche_Grupos;
    Preenche_SubGrupos;
    Preenche_Lista;
    end
    else
    ShowMessage('O banco de dados selecionado não é compatível.');
  end
  else
  begin
    FormSelecionaBD.Show;
    DatasetFileName:=Dados.Sqlite3DatasetGeral.Filename;
    Timer1.Enabled := True;
  end;
  openpicturedialog1.Filter := lista_formatos;
end;

procedure TFormPrincipal.FormResize(Sender: TObject);
var Comprimento, Altura: Integer;
begin
  BGRALabelClasse.Top:=Trunc(BGRAPanelFiltro.Height*0.153);
  ComboboxClasse.Top:=Trunc(BGRAPanelFiltro.Height*0.191);
  BGRALabelSubClasse.Top:=Trunc(BGRAPanelFiltro.Height*0.255);
  ComboboxSubClasse.Top:=Trunc(BGRAPanelFiltro.Height*0.293);
  BGRALabelGrupo.Top:=Trunc(BGRAPanelFiltro.Height*0.357);
  ComboboxGrupo.Top:=Trunc(BGRAPanelFiltro.Height*0.395);
  BGRALabelSubGrupo.Top:=Trunc(BGRAPanelFiltro.Height*0.459);
  ComboboxSubGrupo.Top:=Trunc(BGRAPanelFiltro.Height*0.507);
  BGRALAbelDureza.Top:=Trunc(BGRAPanelFiltro.Height*0.548);
  Label33.Top:=Trunc(BGRAPanelFiltro.Height*0.59);
  Label34.Top:=Trunc(BGRAPanelFiltro.Height*0.615);
  ComboboxDureza_min.Top:=Trunc(BGRAPanelFiltro.Height*0.615);
  ComboboxDureza_max.top:=ComboboxDureza_min.Top;
  BGRALabelDensidade.Top:=Trunc(BGRAPanelFiltro.Height*0.676);
  Label35.Top:=Trunc(BGRAPanelFiltro.Height*0.717);
  Label36.Top:=Trunc(BGRAPanelFiltro.Height*0.743);
  EditDensidade_min.Top:=Trunc(BGRAPanelFiltro.Height*0.743);
  EditDensidade_max.Top:=EditDensidade_min.Top;
  BGRALabelOcorrencia.Top:=Trunc(BGRAPanelFiltro.Height*0.803);
  EditOcorrencia.Top:=Trunc(BGRAPanelFiltro.Height*0.842);
  BGRALabelAssociacao.Top:=Trunc(BGRAPanelFiltro.Height*0.893);
  EditAssociacao.Top:=Trunc(BGRAPanelFiltro.Height*0.931);
  GroupBoxImagem2.Top:=Trunc(BGRAPanelFiltro.Height*0.202);
  GroupBoxImagem3.Top:=Trunc(BGRAPanelFiltro.Height*0.403);
  GroupBoxImagem4.Top:=Trunc(BGRAPanelFiltro.Height*0.606);
  GroupBoxImagem5.Top:=Trunc(BGRAPanelFiltro.Height*0.807);

  LabelNome.Top:=Trunc(GroupBoxInf_Gerais.Height*0.066);
  DBMemoNome.Top:=LabelNome.Top;
  LabelClasse.Top:=Trunc(GroupBoxInf_Gerais.Height*0.134);
  DBMemoClasse.Top:=LabelClasse.Top;
  LabelSubClasse.Top:=Trunc(GroupBoxInf_Gerais.Height*0.188);
  DBMemoSubClasse.Top:=LabelSubclasse.Top;
  LabelGrupo.Top:=Trunc(GroupBoxInf_Gerais.Height*0.242);
  DBMemoGrupo.Top:=LabelGrupo.Top;
  LabelSubGrupo.Top:=Trunc(GroupBoxInf_Gerais.Height*0.297);
  DBMemoSubGrupo.Top:=LabelSubGrupo.Top;
  LabelOcorrencia.Top:=Trunc(GroupBoxInf_Gerais.Height*0.355);
  DBMemoOcorrencia.Top:=LabelOcorrencia.Top;
  DBMemoOcorrencia.Height:=Trunc(GroupBoxInf_Gerais.Height*0.11);
  LabelAssociacao.Top:=Trunc(GroupBoxInf_Gerais.Height*0.48);
  DBMemoAssociacao.Top:=LabelAssociacao.Top;
  DBMemoAssociacao.Height:=DBMemoOcorrencia.Height;
  LabelDistincao.Top:=Trunc(GroupBOxInf_Gerais.Height*0.606);
  DBMemoDistincao.Top:=LabelDistincao.Top;
  DBMemoDistincao.Height:=DBMemoOcorrencia.Height;
  LabelAlteracao.Top:=Trunc(GroupBoxInf_Gerais.Height*0.732);
  DBMemoAlteracao.Top:=LabelAlteracao.Top;
  DBMemoAlteracao.Height:=DBMemoOcorrencia.Height;
  LabelAplicacao.Top:=Trunc(GroupBoxInf_Gerais.Height*0.858);
  DBMemoAplicacao.Top:=LabelAplicacao.Top;
  DBMemoAplicacao.Height:=DBMemoOcorrencia.Height;

  LabelCor.Top:=Trunc(GroupBoxProp_Fisicas.Height*0.265);
  DBMemoCor.Top:=LabelCor.Top;
  DBMemoCor.Height:=Trunc(GroupBoxProp_Fisicas.Height*0.1);
  LabelTraco.Top:=Trunc(GroupBoxProp_Fisicas.Height*0.385);
  DBMemoTraco.Top:=LabelTraco.Top;
  DBMemoTraco.Height:=DBMemoCor.Height;
  LabelBrilho.Top:=Trunc(GroupBoxProp_Fisicas.Height*0.505);
  DBMemoBrilho.Top:=LabelBrilho.Top;
  DBMemoBrilho.Height:=DBmemoCor.Height;
  LabelClivagem.Top:=Trunc(GroupBoxProp_Fisicas.Height*0.626);
  DBMemoClivagem.Top:=LabelClivagem.Top;
  DBMemoClivagem.Height:=DBMemoCor.Height;
  LabelFratura.Top:=Trunc(GroupBoxProp_Fisicas.Height*0.746);
  DBMemoFratura.Top:=LabelFratura.Top;
  DBMemoFratura.Height:=DBMemoCor.Height;
  LabelMagnetismo.Top:=Trunc(GroupBOxProp_Fisicas.Height*0.856);
  DBMemoMagnetismo.Top:=LabelMagnetismo.Top;
  DBMemoMagnetismo.Height:=Trunc(GroupBoxProp_Fisicas.Height*0.045);
  LabelLuminescencia.Top:=Trunc(GroupBoxProp_Fisicas.Height*0.923);
  DBMemoLuminescencia.Top:=LabelLuminescencia.Top;
  DBMemoLuminescencia.Height:=DBMemoMagnetismo.Height;

  LabelDifaneidade.Top:=Trunc(GroupBoxOpticas.Height*0.038);
  DBMemoDifaneidade.Top:=LabelDifaneidade.Top;
  DBMemoDifaneidade.Height:=Trunc(GroupBoxOpticas.Height*0.075);
  LabelSinal_Optico.Top:=Trunc(GroupBoxOpticas.Height*0.132);
  DBMemoSinal_Optico.Top:=LabelSinal_Optico.Top;
  DBMemoSinal_Optico.Height:=DBMemoDifaneidade.Height;
  LabelIndice_Refracao.Top:=Trunc(GroupBoxOpticas.Height*0.225);
  DBMemoIndice_Refracao.Top:=LabelIndice_Refracao.Top;
  DBMemoIndice_Refracao.Height:=DBMemoDifaneidade.Height;
  LabelAngulo_2v.Top:=Trunc(GroupBoxOpticas.Height*0.318);
  DBMemoAngulo.Top:=LabelAngulo_2v.Top;
  DBMemoAngulo.Height:=DBMemoDifaneidade.Height;
  LabelCor_Interferencia.Top:=Trunc(GroupBoxOpticas.Height*0.412);
  DBMemoCor_Interferencia.Top:=LabelCor_Interferencia.Top;
  DBMemoCor_Interferencia.Height:=DBMemoDifaneidade.Height;
  LabelCor_Lamina.Top:=Trunc(GroupBOxOpticas.Height*0.506);
  DBMemoCor_Lamina.Top:=LabelCor_Lamina.Top;
  DBMemoCor_Lamina.Height:=DBMemoDifaneidade.Height;
  LabelSinal_Elongacao.Top:=Trunc(GroupBoxOpticas.Height*0.6);
  DBMemoSinal_Elongacao.Top:=LabelSinal_Elongacao.Top;
  DBMemoSinal_Elongacao.Height:=DBMemoDifaneidade.Height;
  LabelBirrefringencia.Top:=Trunc(GroupBoxOpticas.Height*0.693);
  DBMemoBirrefringencia.Top:=LabelBirrefringencia.Top;
  DBMemoBirrefringencia.Height:=DBMemoDifaneidade.Height;
  LabelRelevo.Top:=Trunc(GroupBoxOpticas.Height*0.786);
  DBMemoRelevo.Top:=LabelRelevo.Top;
  DBMemoRelevo.Height:=DBMemoDifaneidade.Height;
  LabelExtincao.Top:=Trunc(GroupBoxOpticas.Height*0.880);
  DBMemoExtincao.Top:=LabelExtincao.Top;
  DBMemoExtincao.Height:=DBMemoDifaneidade.Height;

  LabelSistema_Cristalino.Top:=Trunc(GroupBoxCristalografia.Height*0.091);
  DBMemoSistema.Top:=LabelSistema_Cristalino.Top;
  LabelClasse_Cristalina.Top:=Trunc(GroupBoxCristalografia.Height*0.242);
  DBMemoClasse_Cristalina.Top:=LabelClasse_Cristalina.Top;
  LabelSimbologia.Top:=Trunc(GroupboxCristalografia.Height*0.393);
  DBMemoH_M.Top:=LabelSimbologia.Top;
  LabelHabito.Top:=Trunc(GroupBoxCristalografia.Height*0.593);
  DBMemoHabito.Top:=Labelhabito.Top;
  DBMemoHabito.Height:=Trunc(GroupBOxCristalografia.Height*0.295);

  Config:=TINIFile.Create(GetCurrentDir + '\Data\config.ini');
  Comprimento:=FormPrincipal.Width;
  Config.WriteString('Configuracoes', 'Comprimento', IntToStr(FormPrincipal.Width));
  Altura:=FormPrincipal.Height;
  Config.WriteString('Configuracoes', 'Altura', IntToStr(FormPrincipal.Height));
  Config.Free;
end;

procedure TFormPrincipal.Timer1Timer(Sender: TObject);
begin
  if (FormSelecionaBD.Visible = False) then
  begin
    Timer1.Enabled := False;
     //obs essa funcao analisa o filename do dataset e determina novamente o mesmo
     //pode haver erros aqui
     if DatasetFileName <> Dados.Sqlite3DatasetGeral.FileName then
     begin
       if (Dados.DeterminaBD(Dados.Sqlite3DatasetGeral.FileName)) then
       begin
        sldb := TSQLiteDatabase.Create(Dados.Sqlite3DatasetGeral.FileName);
        Preenche_Classes;
        Preenche_SubClasses;
        Preenche_Grupos;
        Preenche_SubGrupos;
        Preenche_Lista;
      end;
     end;
    FormPrincipal.Show;
  end;
end;

procedure TFormPrincipal.ListboxMineraisClick(Sender: TObject);
begin
  limparichmemo;
  ProcuraMineral;
end;

procedure TFormPrincipal.RetiraDaLista;
begin
  if (ListBoxMinerais.GetSelectedText <> EmptyStr) then
  begin
    ListBoxMinerais.Items.Delete(ListBoxMinerais.ItemIndex);
  end;
end;

procedure TFormPrincipal.MenuItemRetiraClick(Sender: TObject);
begin
  RetiraDaLista;
end;

procedure TFormPrincipal.MenuItem1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFormPrincipal.MenuItemAdicionarClick(Sender: TObject);
begin
  AdicionaMineral;
end;

procedure TFormPrincipal.MenuItemExcluiClick(Sender: TObject);
begin
  ExcluiMineral;
end;

procedure TFormPrincipal.MenuItemFiltroClick(Sender: TObject);
begin
  Config:=TIniFile.Create(GetCurrentDir + '\Data\config.ini');
  if BGRAPanelFiltro.Visible then
  begin
    BGRAPanelFiltro.Visible := False;
    MenuItemFiltro.Checked:=False;
    Config.WriteBool('Configuracoes', 'PainelFiltro', False);
  end
  else
  begin
    BGRAPanelFiltro.Visible := True;
    MenuItemFiltro.Checked:=True;
    Config.WriteBool('Configuracoes', 'PainelFiltro', True);
  end;
end;

procedure TFormPrincipal.MenuItemImagensClick(Sender: TObject);
begin
  Config:=TIniFile.Create(GetCurrentDir + '\Data\config.ini');
  if MenuItemImagens.Checked then
  begin
    BGRAPanelImagens.Visible:=False;
    MenuItemImagens.Checked:=False;
      Config.WriteBool('Configuracoes', 'PainelImagem', False);
  end
  else
  begin
    BGRAPanelImagens.Visible:=True;
    MenuItemImagens.Checked:=True;
    Config.WriteBool('Configuracoes', 'PainelImagem', True);
    AtualizaImagem;
  end;
  Config.Free;
end;

procedure TFormPrincipal.MenuItemAjudaClick(Sender: TObject);
begin
  FormAjuda.Show;
end;

procedure TFormPrincipal.MenuItemBibliografiaClick(Sender: TObject);
begin
  FormBibliografia.Show;
end;

procedure TFormPrincipal.MenuItemDurezaClick(Sender: TObject);
begin
  Config:=TIniFile.Create(GetCurrentDir + '\Data\config.ini');
  if (MenuItemDureza.Checked) Then
  begin
     Config.WriteString('Configuracoes', 'Ordem', 'Densidade');
     MenuItemDureza.Checked:=False;
     MenuItemDensidade.Checked:=True;
  end
  else
  Begin
    Config.WriteString('Configuracoes', 'Ordem', 'Dureza');
     MenuItemDureza.Checked:=True;
     MenuItemDensidade.Checked:=False;
  end;
  Config.Free;
  Preenche_Lista;
end;

procedure TFormPrincipal.ExcluiMineral;
var
  nome_exclusao: string; //esta var pode ser eliminada
begin
  if (ListboxMinerais.GetSelectedText = emptystr) then
  begin
    ShowMessage('Não há mineral selecionado');
  end
  else
  begin
    nome_exclusao := ListboxMinerais.GetSelectedText;
    if (dados.SQLite3DatasetGeral.FieldByName('nome').AsString <>
      ListboxMinerais.GetSelectedText) then
    begin
      dados.SQLite3DatasetGeral.First;
      repeat
        dados.SQLite3DatasetGeral.Next;
      until (dados.SQLite3DatasetGeral.FieldByName('nome').AsString = nome_exclusao);
    end;
    // fazer form de exclusão
    if (QuestionDlg('Confirmação', 'Deseja realmente remover "' +
      UpCase(nome_exclusao) + '"?', mtConfirmation, [mrNo, mrYes], 0) = mrYes) then
    begin
      dados.SQLite3DatasetGeral.Delete();
      dados.SQLite3DatasetGeral.ApplyUpdates;
      Preenche_Lista;
      AtualizaImagem;
      Barra_Status;
    end;
  end;
end;

procedure TFormPrincipal.MudarFonte;
begin
  Config:=TIniFile.Create(GetCurrentDir + '\Data\config.ini');
  if (MenuItemNormal.Checked = False) then
  begin
    Config.WriteString('Configuracoes', 'Fonte', 'Grande');
    MenuItemNormal.Checked := False;
    MenuItemGrande.Checked := True;
    PanelFicha.Font.Size := Grande;
    GroupBoxInf_Gerais.Font.Size := grande;
    GroupBoxProp_Fisicas.Font.Size := grande;
    GroupBoxOpticas.Font.Size := grande;
    GroupBoxCristalografia.Font.Size := grande;
    ListBoxMinerais.Font.Size := grande;
  end
  else
  begin
    Config.WriteString('Configuracoes', 'Fonte', 'Normal');
    MenuItemNormal.Checked := True;
    MenuItemGrande.Checked := False;
    PanelFicha.Font.Size := Normal;
    GroupBoxInf_Gerais.Font.Size := normal;
    GroupBoxProp_Fisicas.Font.Size := normal;
    GroupBoxOpticas.Font.Size := normal;
    GroupBoxCristalografia.Font.Size := normal;
    ListBoxMinerais.Font.Size := normal;
  end;
  AtualizaRichMemo;
  Config.Free;
end;

procedure TFormPrincipal.UpdateCampos(Especie: String; Campo: String;
  objeto: TDBMemo);
begin
     sltb:= sldb.GetTable('UPDATE minerais set '+Campo+' ="'+objeto.Text+
     '" WHERE nome="'+especie+'";');
     if UpCase(objeto.Name) = UpCase('DBMemoSubclasse') then
     Preenche_Subclasses;
end;

procedure TFormPrincipal.UpdateEdits(Especie: String; Campo: String;
  objeto: TDBEdit);
begin
   sltb:= sldb.GetTable('UPDATE minerais set '+Campo+' ="'+objeto.Text+
   '" WHERE nome="'+especie+'";');
   if UpCase(objeto.Name) = UpCase('DBMemoSubclasse') then
   Preenche_Subclasses;
end;

procedure TFormPrincipal.ModoEdicao;
begin
  if (dados.SQLite3DatasetGeral.Active) then
    dados.SQLite3DatasetGeral.ApplyUpdates();

  Config := TIniFile.Create(GetCurrentDir + '\Data\config.ini');

  if (MenuItemModoEdicao.Checked) then
  begin
    Config.WriteBool('configuracoes', 'modo_edicao', True);
    statusbar1.Panels.Items[1].Text := '';
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

    richmemoformula.Visible := True;
    //dbmemoformula.Visible := False;
    AtualizaRichMemo;
  end
  else
  begin
    Config.WriteBool('configuracoes', 'modo_edicao', False);
    statusbar1.Panels.Items[1].Text := 'Modo de Edição';

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

    richmemoformula.Visible := False;
    //dbmemoformula.Visible := True;
  end;
  Config.Free;
end;

function TFormPrincipal.DefinirOrdem: String;
begin

end;

procedure TFormPrincipal.MenuItemExcluirClick(Sender: TObject);
begin
  ExcluiMineral;
end;

procedure TFormPrincipal.MenuItemImprimirClick(Sender: TObject);

  function strNome(i: integer): string;
  begin
    if i >= 1 then
      Result := ' nome="' + ListBoxMinerais.Items.Strings[i] + '" or '
    else
    if i = 0 then
      Result := ' nome="' + ListBoxMinerais.Items.Strings[i] + '" );';
  end;

var
  i: integer;
begin
  if (ListboxMinerais.Items.Count - 1) > 0 then
  begin
    Dados.Sqlite3DatasetPrinter.SQL := 'SELECT * FROM minerais WHERE(';
    for i := (ListBoxMinerais.Items.Count - 1) downto 0 do
    begin
      Dados.Sqlite3DatasetPrinter.SQL :=
        Dados.Sqlite3DatasetPrinter.SQL + strNome(i);
    end;
  end;
  if ListboxMinerais.GetSelectedText = EmptyStr then
  FormImpressao.RadioButtonSelecionado.Enabled:=False
  else
  FormImpressao.RadioButtonSelecionado.Enabled:=True;
  FormImpressao.Show;
end;

procedure TFormPrincipal.MenuItemModoEdicaoClick(Sender: TObject);
begin
  ModoEdicao;
end;

procedure TFormPrincipal.MenuItemNormalClick(Sender: TObject);
begin
  MudarFonte;
end;

procedure TFormPrincipal.AdicionaMineral;
var
  indice: integer;
  SQL, SQL2: string;
begin
  LimpaDD;
  LimpaRichMemo;
  if (EditNome.Text <> EmptyStr) then
  begin
    sltb := sldb.GetTable('SELECT nome FROM minerais WHERE (nome = "' +
      EditNome.Text + '");');
    if (sltb.Count > 0) then
    begin
      ShowMessage('Mineral já existente no Banco de Dados');
    end
    else
    begin
      try
        SQL := 'INSERT INTO minerais (nome , dureza_min, dureza_max, densidade_min, densidade_max ) VALUES ';
        SQL := SQL + ' ("' + EditNome.Text + '", "' + ComboBoxDureza_min.Text +
          '", "' + ComboBoxDureza_max.Text + '", "' + EditDensidade_min.Text + '", "' +
          EditDensidade_max.Text + '");';
        SQL2 := 'UPDATE minerais SET classe="' + ComboBoxClasse.Text +
          '", subclasse="' + ComboboxSubClasse.Text + '",';
        SQL2 := SQL2 + 'grupo="' + ComboBoxGrupo.Text + '",subgrupo="' +
          ComboBoxSubgrupo.Text + '" WHERE nome = "' + EditNome.Text + '";';
      finally
        sldb.BeginTransaction;
        sldb.ExecSQL(SQL);
        sldb.ExecSQL(SQL2);
        sldb.Commit;
      end;
      indice := ListBoxMinerais.Items.Add(EditNome.Text);
      ListboxMinerais.Selected[indice] := True;
    end;
  end
  else
  begin
    sltb := sldb.GetTable('SELECT nome FROM minerais WHERE (nome = "Novo Mineral");');
    if (sltb.Count > 0) then
    begin
      ShowMessage('Mineral já existente no Banco de Dados');
    end
    else
    begin
      try
        SQL := 'INSERT INTO minerais (nome , dureza_min, dureza_max, densidade_min, densidade_max ) VALUES ';
        SQL := SQL + ' ("Novo Mineral", "' + ComboBoxDureza_min.Text +
          '", "' + ComboBoxDureza_max.Text + '", "' + EditDensidade_min.Text + '", "' +
          EditDensidade_max.Text + '");';
        SQL2 := 'UPDATE minerais SET classe="' + ComboBoxClasse.Text +
          '", subclasse="' + ComboboxSubClasse.Text + '",';
        SQL2 := SQL2 + 'grupo="' + ComboBoxGrupo.Text + '",subgrupo="' +
          ComboBoxSubgrupo.Text + '" WHERE nome = "Novo Mineral";';
      finally
        sldb.BeginTransaction;
        sldb.ExecSQL(SQL);
        sldb.ExecSQL(SQL2);
        sldb.Commit;
      end;
      indice := ListBoxMinerais.Items.Add('Novo Mineral');
      ListboxMinerais.Selected[indice] := True;
    end;
  end;
  AtualizaImagem;
  barra_status;
end;

procedure TFormPrincipal.MenuItemNovoClick(Sender: TObject);
begin
  AdicionaMineral;
end;

procedure TFormPrincipal.MenuItemSelecionaBDClick(Sender: TObject);
begin
  FormSelecionaBD.Show;
  Timer1.Enabled := True;
end;

procedure TFormPrincipal.preenche_lista;
var
  num: integer; SelectSQL: String;
begin
  limparichmemo;
  ListboxMinerais.Clear();
  limpaDD;
  if (Dados.SQLite3DatasetGeral.Active) then
    Dados.SQLite3DatasetGeral.Close();
  SelectSQL:='Select nome, formula, classe, subclasse, grupo, subgrupo, ocorrencia, associacao, ';
  SelectSQL:=SelectSQL+' distincao, alteracao, aplicacao, dureza_min, dureza_max, ';
  SelectSQL:=SelectSQL +' densidade_min, densidade_max, cor, traco, brilho, clivagem, fratura, magnetismo, ';
  SelectSQL:=SelectSQl+' luminescencia, difaneidade, sinal_optico, indice_refracao, angulo, cor_interferencia, ';
   SelectSQL:=SelectSQL+' cor_lamina, sinal_elongacao, birrefringencia, relevo, extincao, ';
   SelectSQL:=SelectSQL+' sistema, classe_cristalina, h_m, habito FROM minerais ';
  if (ComboboxClasse.Text = emptystr) then
  begin
    if (ComboboxSubclasse.Text = emptystr) then
    begin
      if (ComboboxGrupo.Text = emptystr) then
      begin
        if (ComboboxSubgrupo.Text = emptystr) then
        begin     //nenhum combobox selecionado   1
          if (MenuItemDureza.Checked) then
            Dados.SQLite3DatasetGeral.SQL :=
              SelectSQL+' WHERE (dureza_min >= "' + comboboxDureza_min.Text +
              '" and dureza_max <= "' + comboboxdureza_max.Text + '" and densidade_min >= "' +
              editDensidade_min.Text + '" and densidade_max<= "' + editDensidade_max.Text +
              '") ORDER BY (1/(dureza_max+1))'
          else
            Dados.SQLite3DatasetGeral.SQL :=
              SelectSQL+' WHERE (dureza_min >= "' + comboboxDureza_min.Text +
              '" and dureza_max <= "' + comboboxdureza_max.Text + '" and densidade_min >= "' +
              editDensidade_min.Text + '" and densidade_max<= "' + editDensidade_max.Text +
              '") ORDER BY (1/(densidade_max+1))';
        end
        else
        begin  //combobox subgrupos    2
          if (MenuItemDureza.Checked) then
            Dados.SQLite3DatasetGeral.SQL :=
              SelectSQL+' WHERE (subgrupo = "' + ComboboxSubgrupo.Text +
              '" and dureza_min >= "' + comboboxDureza_min.Text + '" and dureza_max <= "' +
              comboboxdureza_max.Text + '" and densidade_min >= "' + editDensidade_min.Text +
              '" and densidade_max<= "' + editDensidade_max.Text + '") ORDER BY (1/(dureza_max+1))'
          else
            Dados.SQLite3DatasetGeral.SQL :=
              SelectSQL+' WHERE (subgrupo = "' + ComboboxSubgrupo.Text +
              '" and dureza_min >= "' + comboboxDureza_min.Text + '" and dureza_max <= "' +
              comboboxdureza_max.Text + '" and densidade_min >= "' + editDensidade_min.Text +
              '" and densidade_max<= "' + editDensidade_max.Text + '") ORDER BY (1/(densidade_max+1))';
        end;
      end
      else
      begin
        if (ComboboxSubgrupo.Text = emptystr) then
        begin     // combobox grupos   3
          if (menuItemDureza.Checked) then
            Dados.SQLite3DatasetGeral.SQL :=
              SelectSQL+' WHERE (grupo = "' + ComboboxGrupo.Text +
              '" and dureza_min >= "' + comboboxDureza_min.Text + '" and dureza_max <= "' +
              comboboxdureza_max.Text + '" and densidade_min >= "' + editDensidade_min.Text +
              '" and densidade_max<= "' + editDensidade_max.Text + '") ORDER BY (1/(dureza_max+1))'
          else
            Dados.SQLite3DatasetGeral.SQL :=
              SelectSQL+' WHERE (grupo = "' + ComboboxGrupo.Text +
              '" and dureza_min >= "' + comboboxDureza_min.Text + '" and dureza_max <= "' +
              comboboxdureza_max.Text + '" and densidade_min >= "' + editDensidade_min.Text +
              '" and densidade_max<= "' + editDensidade_max.Text + '") ORDER BY (1/(densidade_max+1))';
        end
        else
        begin     //combobox BGRALabelGrupo e subgrupo   4
          if (MenuItemDureza.Checked) then
            Dados.SQLite3DatasetGeral.SQL :=
              SelectSQL+' WHERE (grupo = "' + ComboboxGrupo.Text +
              '" and subgrupo = "' + ComboboxSubgrupo.Text + '" and dureza_min >= "' +
              comboboxDureza_min.Text + '" and dureza_max <= "' + comboboxdureza_max.Text +
              '" and densidade_min >= "' + editDensidade_min.Text + '" and densidade_max<= "' +
              editDensidade_max.Text + '") ORDER BY (1/(dureza_max+1))'
          else
            Dados.SQLite3DatasetGeral.SQL :=
              SelectSQL+' WHERE (grupo = "' + ComboboxGrupo.Text +
              '" and subgrupo = "' + ComboboxSubgrupo.Text + '" and dureza_min >= "' +
              comboboxDureza_min.Text + '" and dureza_max <= "' + comboboxdureza_max.Text +
              '" and densidade_min >= "' + editDensidade_min.Text + '" and densidade_max<= "' +
              editDensidade_max.Text + '") ORDER BY (1/(densidade_max+1))';
        end;
      end;
    end
    else
    begin
      if (ComboboxGrupo.Text = emptystr) then
      begin
        if (ComboboxSubgrupo.Text = emptystr) then
        begin           //combobox subclasse 5
          if (MenuItemDureza.Checked) then
            Dados.SQLite3DatasetGeral.SQL :=
              SelectSQL+' WHERE (subclasse = "' + ComboboxSubclasse.Text +
              '" and dureza_min >= "' + comboboxDureza_min.Text + '" and dureza_max <= "' +
              comboboxdureza_max.Text + '" and densidade_min >= "' + editDensidade_min.Text +
              '" and densidade_max<= "' + editDensidade_max.Text + '") ORDER BY (1/(dureza_max+1))'
          else
            Dados.SQLite3DatasetGeral.SQL :=
              SelectSQL+' WHERE (subclasse = "' + ComboboxSubclasse.Text +
              '" and dureza_min >= "' + comboboxDureza_min.Text + '" and dureza_max <= "' +
              comboboxdureza_max.Text + '" and densidade_min >= "' + editDensidade_min.Text +
              '" and densidade_max<= "' + editDensidade_max.Text + '") ORDER BY (1/(densidade_max+1))';
        end
        else
        begin  // combobox subclasse e subgrupo  6
          if (MenuITemDureza.Checked) then
            Dados.SQLite3DatasetGeral.SQL :=
              SelectSQL+' WHERE (subclasse = "' + ComboboxSubclasse.Text +
              '" and subgrupo = "' + ComboboxSubgrupo.Text + '" and dureza_min >= "' +
              comboboxDureza_min.Text + '" and dureza_max <= "' + comboboxdureza_max.Text +
              '" and densidade_min >= "' + editDensidade_min.Text + '" and densidade_max<= "' +
              editDensidade_max.Text + '") ORDER BY (1/(dureza_max+1))'
          else
            Dados.SQLite3DatasetGeral.SQL :=
              SelectSQL+' WHERE (subclasse = "' + ComboboxSubclasse.Text +
              '" and subgrupo = "' + ComboboxSubgrupo.Text + '" and dureza_min >= "' +
              comboboxDureza_min.Text + '" and dureza_max <= "' + comboboxdureza_max.Text +
              '" and densidade_min >= "' + editDensidade_min.Text + '" and densidade_max<= "' +
              editDensidade_max.Text + '") ORDER BY (1/(densidade_max+1))';
        end;
      end
      else
      begin
        if (ComboboxSubgrupo.Text = emptystr) then
        begin   //combobox subclasse e BGRALabelGrupo   7
          if (MenuItemDureza.Checked) then
            Dados.SQLite3DatasetGeral.SQL :=
              SelectSQL+' WHERE (subclasse = "' + ComboboxSubclasse.Text +
              '" and grupo ="' + ComboboxGrupo.Text + '" and dureza_min >= "' +
              comboboxDureza_min.Text + '" and dureza_max <= "' + comboboxdureza_max.Text +
              '" and densidade_min >= "' + editDensidade_min.Text + '" and densidade_max<= "' +
              editDensidade_max.Text + '") ORDER BY (1/(dureza_max+1))'
          else
            Dados.SQLite3DatasetGeral.SQL :=
              SelectSQL+' WHERE (subclasse = "' + ComboboxSubclasse.Text +
              '" and grupo = "' + ComboboxGrupo.Text + '" and dureza_min >= "' +
              comboboxDureza_min.Text + '" and dureza_max <= "' + comboboxdureza_max.Text +
              '" and densidade_min >= "' + editDensidade_min.Text + '" and densidade_max<= "' +
              editDensidade_max.Text + '") ORDER BY (1/(densidade_max+1))';
        end
        else
        begin   //subclasse BGRALabelGrupo subgrupo      8
          if (MenuItemDureza.Checked) then
            Dados.SQLite3DatasetGeral.SQL :=
              SelectSQL+' WHERE (subclasse = "' + ComboboxSubclasse.Text +
              '" and grupo = "' + ComboboxGrupo.Text + '" and subgrupo = "' + ComboboxSubgrupo.Text +
              '" and dureza_min >= "' + comboboxDureza_min.Text + '" and dureza_max <= "' +
              comboboxdureza_max.Text + '" and densidade_min >= "' + editDensidade_min.Text +
              '" and densidade_max<= "' + editDensidade_max.Text + '") ORDER BY (1/(dureza_max+1))'
          else
            Dados.SQLite3DatasetGeral.SQL :=
              SelectSQL+' WHERE (subclasse = "' + ComboboxSubclasse.Text +
              '" and grupo = "' + ComboboxGrupo.Text + '" and subgrupo = "' + ComboboxSubgrupo.Text +
              '" and dureza_min >= "' + comboboxDureza_min.Text + '" and dureza_max <= "' +
              comboboxdureza_max.Text + '" and densidade_min >= "' + editDensidade_min.Text +
              '" and densidade_max<= "' + editDensidade_max.Text + '") ORDER BY (1/(densidade_max+1))';
        end;
      end;
    end;
  end
  else
  begin
    if (ComboboxSubclasse.Text = emptystr) then
    begin
      if (ComboboxGrupo.Text = emptystr) then
      begin
        if (ComboboxSubgrupo.Text = emptystr) then
        begin     //classe      9
          if (MenuItemDureza.Checked) then
            Dados.SQLite3DatasetGeral.SQL :=
              SelectSQL+' WHERE (classe = "' + ComboboxClasse.Text +
              '" and dureza_min >= "' + comboboxDureza_min.Text + '" and dureza_max <= "' +
              comboboxdureza_max.Text + '" and densidade_min >= "' + editDensidade_min.Text +
              '" and densidade_max<= "' + editDensidade_max.Text + '") ORDER BY (1/(dureza_max+1))'
          else
            Dados.SQLite3DatasetGeral.SQL :=
              SelectSQL+' WHERE (classe = "' + ComboboxClasse.Text +
              '" and dureza_min >= "' + comboboxDureza_min.Text + '" and dureza_max <= "' +
              comboboxdureza_max.Text + '" and densidade_min >= "' + editDensidade_min.Text +
              '" and densidade_max<= "' + editDensidade_max.Text + '") ORDER BY (1/(densidade_max+1))';
        end
        else    //classe subgrupos    10
        begin
          if (MenuItemDureza.Checked) then
            Dados.SQLite3DatasetGeral.SQL :=
              SelectSQL+' WHERE (classe = "' + ComboboxClasse.Text +
              '" and subgrupo = "' + ComboboxSubgrupo.Text + '" and dureza_min >= "' +
              comboboxDureza_min.Text + '" and dureza_max <= "' + comboboxdureza_max.Text +
              '" and densidade_min >= "' + editDensidade_min.Text + '" and densidade_max<= "' +
              editDensidade_max.Text + '") ORDER BY (1/(dureza_max+1))'
          else
            Dados.SQLite3DatasetGeral.SQL :=
              SelectSQL+' WHERE (classe = "' + ComboboxClasse.Text +
              '" and subgrupo = "' + ComboboxSubgrupo.Text + '" and dureza_min >= "' +
              comboboxDureza_min.Text + '" and dureza_max <= "' + comboboxdureza_max.Text +
              '" and densidade_min >= "' + editDensidade_min.Text + '" and densidade_max<= "' +
              editDensidade_max.Text + '") ORDER BY (1/(densidade_max+1))';
        end;
      end
      else
      begin      //classe grupos    11
        if (ComboboxSubgrupo.Text = emptystr) then
        begin
          if (MenuItemDureza.Checked) then
            Dados.SQLite3DatasetGeral.SQL :=
              SelectSQL+' WHERE (classe = "' + ComboboxClasse.Text +
              '" and grupo = "' + ComboboxGrupo.Text + '" and dureza_min >= "' +
              comboboxDureza_min.Text + '" and dureza_max <= "' + comboboxdureza_max.Text +
              '" and densidade_min >= "' + editDensidade_min.Text + '" and densidade_max<= "' +
              editDensidade_max.Text + '") ORDER BY (1/(dureza_max+1))'
          else
            Dados.SQLite3DatasetGeral.SQL :=
              SelectSQL+' WHERE (classe = "' + ComboboxClasse.Text +
              '" and grupo = "' + ComboboxGrupo.Text + '" and dureza_min >= "' +
              comboboxDureza_min.Text + '" and dureza_max <= "' + comboboxdureza_max.Text +
              '" and densidade_min >= "' + editDensidade_min.Text + '" and densidade_max<= "' +
              editDensidade_max.Text + '") ORDER BY (1/(densidade_max+1))';
        end
        else    //classe BGRALabelGrupo subgrupo     12
        begin
          if (MenuItemDureza.Checked) then
            Dados.SQLite3DatasetGeral.SQL :=
              SelectSQL+' WHERE (classe = "' + ComboboxClasse.Text +
              '" and grupo = "' + ComboboxGrupo.Text + '" and subgrupo = "' + ComboboxSubgrupo.Text +
              '" and dureza_min >= "' + comboboxDureza_min.Text + '" and dureza_max <= "' +
              comboboxdureza_max.Text + '" and densidade_min >= "' + editDensidade_min.Text +
              '" and densidade_max<= "' + editDensidade_max.Text + '") ORDER BY (1/(dureza_max+1))'
          else
            Dados.SQLite3DatasetGeral.SQL :=
              SelectSQL+' WHERE (classe = "' + ComboboxClasse.Text +
              '" and grupo = "' + ComboboxGrupo.Text + '" and subgrupo = "' + ComboboxSubgrupo.Text +
              '" and dureza_min >= "' + comboboxDureza_min.Text + '" and dureza_max <= "' +
              comboboxdureza_max.Text + '" and densidade_min >= "' + editDensidade_min.Text +
              '" and densidade_max<= "' + editDensidade_max.Text + '") ORDER BY (1/(densidade_max+1))';
        end;
      end;
    end
    else
    begin
      if (ComboboxGrupo.Text = emptystr) then
      begin
        if (ComboboxSubgrupo.Text = emptystr) then
        begin   //classe subclasse     13
          if (MenuItemDureza.Checked) then
            Dados.SQLite3DatasetGeral.SQL :=
              SelectSQL+' WHERE (classe = "' + ComboboxClasse.Text +
              '" and subclasse = "' + ComboboxSubclasse.Text + '" and dureza_min >= "' +
              comboboxDureza_min.Text + '" and dureza_max <= "' + comboboxdureza_max.Text +
              '" and densidade_min >= "' + editDensidade_min.Text + '" and densidade_max<= "' +
              editDensidade_max.Text + '") ORDER BY (1/(dureza_max+1))'
          else
            Dados.SQLite3DatasetGeral.SQL :=
              SelectSQL+' WHERE (classe = "' + ComboboxClasse.Text +
              '" and subclasse = "' + ComboboxSubclasse.Text + '" and dureza_min >= "' +
              comboboxDureza_min.Text + '" and dureza_max <= "' + comboboxdureza_max.Text +
              '" and densidade_min >= "' + editDensidade_min.Text + '" and densidade_max<= "' +
              editDensidade_max.Text + '") ORDER BY (1/(densidade_max+1))';
        end
        else
        begin    //classe subclasse subgrupo   14
          if (MenuItemDureza.Checked) then
            Dados.SQLite3DatasetGeral.SQL :=
              SelectSQL+' WHERE (classe = "' + ComboboxClasse.Text +
              '" and subclasse = "' + ComboboxSubclasse.Text + '" and subgrupo = "' +
              ComboboxSubgrupo.Text + '" and dureza_min >= "' + comboboxDureza_min.Text +
              '" and dureza_max <= "' + comboboxdureza_max.Text + '" and densidade_min >= "' +
              editDensidade_min.Text + '" and densidade_max<= "' + editDensidade_max.Text +
              '") ORDER BY (1/(dureza_max+1))'
          else
            Dados.SQLite3DatasetGeral.SQL :=
              SelectSQL+' WHERE (classe = "' + ComboboxClasse.Text +
              '" and subclasse = "' + ComboboxSubclasse.Text + '" and subgrupo = "' +
              ComboboxSubgrupo.Text + '" and dureza_min >= "' + comboboxDureza_min.Text +
              '" and dureza_max <= "' + comboboxdureza_max.Text + '" and densidade_min >= "' +
              editDensidade_min.Text + '" and densidade_max<= "' + editDensidade_max.Text +
              '") ORDER BY (1/(densidade_max+1))';
        end;
      end
      else
      begin   //classe subclasse BGRALabelGrupo      15
        if (ComboboxSubgrupo.Text = emptystr) then
        begin
          if (MenuItemDureza.Checked) then
            Dados.SQLite3DatasetGeral.SQL :=
              SelectSQL+' WHERE (classe = "' + ComboboxClasse.Text +
              '" and subclasse = "' + ComboboxSubclasse.Text + '" and grupo = "' +
              ComboboxGrupo.Text + '" and dureza_min >= "' + comboboxDureza_min.Text +
              '" and dureza_max <= "' + comboboxdureza_max.Text + '" and densidade_min >= "' +
              editDensidade_min.Text + '" and densidade_max<= "' + editDensidade_max.Text +
              '") ORDER BY (1/(dureza_max+1))'
          else
            Dados.SQLite3DatasetGeral.SQL :=
              SelectSQL+' WHERE (classe = "' + ComboboxClasse.Text +
              '" and subclasse = "' + ComboboxSubclasse.Text + '" and grupo = "' +
              ComboboxGrupo.Text + '" and dureza_min >= "' + comboboxDureza_min.Text +
              '" and dureza_max <= "' + comboboxdureza_max.Text + '" and densidade_min >= "' +
              editDensidade_min.Text + '" and densidade_max<= "' + editDensidade_max.Text +
              '") ORDER BY (1/(densidade_max+1))';
        end
        else    //classe subclasse BGRALabelGrupo subgrupo    16
        begin
          if (MenuItemDureza.Checked) then
            Dados.SQLite3DatasetGeral.SQL :=
              SelectSQL+' WHERE (classe = "' + ComboboxClasse.Text +
              '" and subclasse = "' + ComboboxSubclasse.Text + '" and grupo = "' +
              ComboboxGrupo.Text + '" and subgrupo = "' + ComboboxSubgrupo.Text +
              '" and dureza_min >= "' + comboboxDureza_min.Text + '" and dureza_max <= "' +
              comboboxdureza_max.Text + '" and densidade_min >= "' + editDensidade_min.Text +
              '" and densidade_max<= "' + editDensidade_max.Text + '") ORDER BY (1/(dureza_max+1))'
          else
            Dados.SQLite3DatasetGeral.SQL :=
              SelectSQL+' WHERE (classe = "' + ComboboxClasse.Text +
              '" and subclasse = "' + ComboboxSubclasse.Text + '" and grupo = "' +
              ComboboxGrupo.Text + '" and subgrupo = "' + ComboboxSubgrupo.Text +
              '" and dureza_min >= "' + comboboxDureza_min.Text + '" and dureza_max <= "' +
              comboboxdureza_max.Text + '" and densidade_min >= "' + editDensidade_min.Text +
              '" and densidade_max<= "' + editDensidade_max.Text + '") ORDER BY (1/(densidade_max+1))';
        end;
      end;
    end;

  end;
  if FileExists(Dados.SQLite3DatasetGeral.FileName) then ///precisa?
  begin
    num := 0;
    Progressbar1.Position := 0;
    Progressbar1.Visible := True;
    Dados.SQLite3DatasetGeral.Open();
    Dados.SQLite3DatasetGeral.First();
    while (not Dados.SQLite3DatasetGeral.EOF) do
    begin
      if (Length(Trim(Dados.SQLite3DatasetGeral.Fields[0].AsString)) > 0) then
      begin
        if Filtro_Nome = False then
          if Filtro_Ocorrencia = False then
            if Filtro_Associacao = False then
              ListboxMinerais.Items.add(Dados.SQLite3DatasetGeral.FieldByName('nome').AsString);
      end;
      Dados.SQLite3DatasetGeral.Next();
      Inc(num);
      ProgressBar1.Position := Round(100 * (num / Dados.SQLite3DatasetGeral.RecNo));
    end;
    ProgressBar1.Visible := False;
    Dados.SQLite3DatasetGeral.Close;
    Barra_status;
    AtualizaImagem;
  end;
end;

procedure TFormPrincipal.Preenche_Classes;
begin
  ComboBoxClasse.Items.Clear;
  ComboBoxClasse.Items.add(emptystr);
  Dados.SQLite3DatasetComboBox.SQL :=
    'SELECT DISTINCT classe FROM minerais ORDER BY classe ASC';
  Dados.SQLite3DatasetComboBox.Open();
  Dados.SQLite3DatasetComboBox.First;
  while (not Dados.SQLite3DatasetComboBox.EOF) do
  begin
    if (Length(Trim(Dados.SQLite3DatasetComboBox.Fields[0].AsString)) > 0) then
    begin
      ComboBoxClasse.Items.Add(dados.SQLite3DatasetComboBox.Fields[0].AsString);
    end;
    dados.SQLite3DatasetComboBox.Next();
  end;
  dados.SQLite3DatasetComboBox.Close();
end;

procedure TFormPrincipal.Preenche_SubClasses;
begin
  if (ComboBoxClasse.Text = emptystr) then
  begin
    dados.SQLite3DatasetComboBox.sql :=
      'SELECT DISTINCT subclasse FROM minerais ORDER BY subclasse ASC';
  end
  else
  begin
    dados.SQLite3DatasetComboBox.sql :=
      'SELECT DISTINCT subclasse FROM minerais WHERE( classe = "' +
      ComboBoxClasse.Text + '") ORDER BY subclasse ASC';
  end;
  ComboBoxSubClasse.Clear();
  ComboBoxSubClasse.Items.add(emptystr);
  dados.SQLite3DatasetComboBox.Open;
  Dados.SQLite3DatasetComboBox.First;
  while (not Dados.SQLite3DatasetComboBox.EOF) do
  begin
    if (Length(Trim(Dados.SQLite3DatasetComboBox.Fields[0].AsString)) > 0) then
    begin
      ComboBoxSubClasse.Items.Add(dados.SQLite3DatasetComboBox.Fields[0].AsString);
    end;
    dados.SQLite3DatasetComboBox.Next();
  end;
  dados.SQLite3DatasetComboBox.Close;
end;

procedure TFormPrincipal.Preenche_Grupos;
begin
  if (ComboBoxClasse.Text = emptystr) then
  begin
    if (ComboBoxSubClasse.Text = emptystr) then
    begin
      dados.SQLite3DatasetComboBox.sql :=
        'SELECT DISTINCT grupo FROM minerais ORDER BY grupo ASC';
    end
    else
    begin
      dados.SQLite3DatasetComboBox.sql :=
        'SELECT DISTINCT grupo FROM minerais WHERE (subclasse = "' +
        ComboBoxSubClasse.Text + '")ORDER BY grupo ASC';
    end;
  end
  else
  begin
    if (ComboBoxSubClasse.Text = emptystr) then
    begin
      dados.SQLite3DatasetComboBox.sql :=
        'SELECT DISTINCT grupo from minerais WHERE (classe = "' + ComboBoxClasse.Text +
        '") ORDER BY grupo ASC';
    end
    else
    begin
      dados.SQLite3DatasetComboBox.sql :=
        'SELECT DISTINCT grupo FROM minerais WHERE( classe = "' + ComboBoxClasse.Text +
        '" and subclasse = "' + ComboBoxSubClasse.Text + '")ORDER BY grupo ASC';
    end;
  end;
  ComboBoxGrupo.Clear();
  ComboBoxGrupo.Items.add(emptystr);
  Dados.SQLite3DatasetComboBox.Open();
  Dados.SQLite3DatasetComboBox.First;
  while (not Dados.SQLite3DatasetComboBox.EOF) do
  begin
    if (Length(Trim(Dados.SQLite3DatasetComboBox.Fields[0].AsString)) > 0) then
    begin
      ComboBoxGrupo.Items.Add(dados.SQLite3DatasetComboBox.Fields[0].AsString);
    end;
    dados.SQLite3DatasetComboBox.Next();
  end;
  dados.SQLite3DatasetComboBox.Close;
end;

procedure TFormPrincipal.Preenche_SubGrupos;
begin
  if ComboBoxClasse.Text = emptystr then
  begin
    if (ComboBoxSubClasse.Text = emptystr) then
    begin
      if (ComboBoxGrupo.Text = emptystr) then
      begin
        dados.SQLite3DatasetComboBox.sql :=
          'SELECT DISTINCT subgrupo FROM minerais ORDER BY subgrupo ASC';
      end
      else
      begin
        dados.SQLite3DatasetComboBox.sql :=
          'SELECT DISTINCT subgrupo FROM minerais WHERE(grupo = "' + ComboBoxGrupo.Text +
          '") ORDER BY subgrupo ASC';
      end;
    end
    else
    begin
      if (ComboBoxGrupo.Text = emptystr) then
      begin
        dados.SQLite3DatasetComboBox.sql :=
          'SELECT DISTINCT subgrupo FROM minerais WHERE(subclasse = "' +
          ComboBoxSubClasse.Text + '") ORDER BY subgrupo ASC';
      end
      else
      begin
        dados.SQLite3DatasetComboBox.sql :=
          'SELECT DISTINCT subgrupo FROM minerais WHERE(subclasse = "' +
          ComboBoxSubclasse.Text + '" and grupo = "' + ComboBoxGrupo.Text + '") ORDER BY subgrupo ASC';
      end;
    end;
  end
  else
  begin
    if (ComboBoxSubClasse.Text = emptystr) then
    begin
      if (ComboBoxGrupo.Text = emptystr) then
      begin
        dados.SQLite3DatasetComboBox.sql :=
          'SELECT DISTINCT subgrupo FROM minerais WHERE(classe = "' + ComboBoxClasse.Text +
          '") ORDER BY subgrupo ASC';
      end
      else
      begin
        dados.SQLite3DatasetComboBox.sql :=
          'SELECT DISTINCT subgrupo FROM minerais WHERE(classe= "' + ComboBoxClasse.Text +
          '" and grupo= "' + ComboBoxGrupo.Text + '") ORDER BY subgrupo ASC';
      end;
    end
    else
    begin
      if (ComboBoxGrupo.Text = emptystr) then
      begin
        dados.SQLite3DatasetComboBox.sql :=
          'SELECT DISTINCT subgrupo FROM minerais WHERE(classe = "' + ComboBoxClasse.Text +
          '" and subclasse = "' + ComboBoxSubClasse.Text + '") ORDER BY subgrupo ASC';
      end
      else
      begin
        dados.SQLite3DatasetComboBox.sql :=
          'SELECT DISTINCT subgrupo FROM minerais WHERE(classe = "' + ComboBoxClasse.Text +
          '" and subclasse = "' + ComboBoxSubClasse.Text + '" and grupo = "' +
          ComboBoxGrupo.Text + '")ORDER BY subgrupo ASC';
      end;
    end;
  end;
  ComboBoxSubGrupo.Clear();
  ComboBoxSubGrupo.Items.add(emptystr);
  Dados.SQLite3DatasetComboBox.Open();
  Dados.SQLite3DatasetComboBox.First;
  while (not Dados.SQLite3DatasetComboBox.EOF) do
  begin
    if (Length(Trim(Dados.SQLite3DatasetComboBox.Fields[0].AsString)) > 0) then
    begin
      ComboBoxSubGrupo.Items.Add(dados.SQLite3DatasetComboBox.Fields[0].AsString);
    end;
    dados.SQLite3DatasetComboBox.Next();
  end;
  dados.SQLite3DatasetComboBox.Close;
end;

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

procedure TFormPrincipal.LimpaRichMemo;
begin
  RichmemoFormula.Text := '';
end;

procedure TFormPrincipal.Barra_Status;

  function ordem: string;
  begin
    if (menuitemdureza.Checked) then
    begin
      Result := 'dureza.';
    end
    else
    begin
      Result := 'densidade.';
    end;
  end;

begin
  if ListboxMinerais.items.Count = 0 then
    statusbar1.Panels.Items[0].Text := '';
  if ListboxMinerais.items.Count = 1 then
    statusbar1.Panels.Items[0].Text := '      1 Mineral encontrado';
  if ListboxMinerais.items.Count > 1 then
    statusbar1.Panels.Items[0].Text :=
      '     ' + IntToStr(ListboxMinerais.Items.Count) +
      ' minerais encontrados listados em ordem decrescente de ' + ordem;
end;

procedure TFormPrincipal.EditaDD;
begin
  if (dbeditdureza_min.Text = dbeditdureza_max.Text) then
  begin
    editdureza.Text := dbeditdureza_min.Text;
  end
  else
  begin
    editDureza.Text := dbeditdureza_min.Text + ' - ' + dbeditdureza_max.Text;
  end;
  if (dbeditdensidade_min.Text = dbeditdensidade_max.Text) then
  begin
    editdensidade.Text := dbeditdensidade_min.Text;
  end
  else
  begin
    editDensidade.Text := dbeditdensidade_min.Text + ' - ' + dbeditdensidade_max.Text;
  end;
end;

procedure TFormPrincipal.LimpaDD;
begin
  editDureza.Text := '';
  editDensidade.Text := '';
end;

function TFormPrincipal.Filtro_Nome: boolean;
var
  eliminar: boolean;
begin
  if (EditNome.Text = Emptystr) then
  begin
    eliminar := False;
  end
  else
  begin
    if UpCase(Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString) =
      UpCase(EditNome.Text) then
      Eliminar := False
    else
      Eliminar := True;
  end;
  Result := Eliminar;
end;

function TFormPrincipal.Filtro_Ocorrencia: boolean;
var
  eliminar: boolean;
  aux: string;
  i: integer;
begin
  if (EditOcorrencia.Text = EmptyStr) then
    eliminar := False
  else
  begin
    aux := Dados.SQLite3DatasetGeral.FieldByName('ocorrencia').AsString;
    eliminar := True;
    for i := 0 to (length(aux) - 1) do
    begin
      if (UpCase(EditOcorrencia.Text) =
        UpCase(Copy(aux, i, length(Trim(EditOcorrencia.Text))))) then
        eliminar := False;
    end;
  end;
  Result := eliminar;
end;

function TFormPrincipal.Filtro_Associacao: boolean;
var
  eliminar: boolean;
  aux: string;
  i: integer;
begin
  if (EditAssociacao.Text = EmptyStr) then
    eliminar := False
  else
  begin
    aux := Dados.SQLite3DatasetGeral.FieldByName('associacao').AsString;
    eliminar := True;
    for i := 0 to (length(aux) - 1) do
    begin
      if (UpCase(EditAssociacao.Text) =
        UpCase(Copy(aux, i, length(Trim(EditAssociacao.Text))))) then
        eliminar := False;
    end;
  end;
  Result := eliminar;
end;

procedure TFormPrincipal.Adiciona_Imagem(num: char);
var
  fs: tfilestream;
begin
  OpenPictureDialog1.FileName := emptystr;
  OpenPictureDialog1.Execute;
  if (OpenPictureDialog1.FileName <> emptystr) then
  begin
    try
      fs := TFileStream.Create(OpenPictureDialog1.FileName, fmOpenRead);
      if (ListboxMinerais.GetSelectedText <> emptystr) then
        sldb.UpdateBlob('UPDATE minerais set imagem' + num +
          ' = ? WHERE nome = "' + dados.SQLite3DatasetGeral.FieldByName('nome').AsString + '"', fs)
      else
      begin       //colocar procedimento de checar campo
        sldb.UpdateBlob('UPDATE mineralogia set mineralogiaimagem' + num +
          ' = ? WHERE campo = "' + Nome_Didatico + '"', fs);
      end;
    finally
      fs.Free;
    end;
    Imagem_Selecionada := num;
    AtualizaImagem;
  end;
end;
 {
procedure TFormPrincipal.Adiciona_Cristalografia(num: char);
var
  fs: tfilestream;
begin
  if (MenuItemModoEdicao.Checked) then
  begin
    if (ListboxMinerais.GetSelectedText <> emptystr) then
    begin
      OpenPictureDialog1.FileName := emptystr;
      OpenPictureDialog1.Execute;
      if (OpenPictureDialog1.FileName <> emptystr) then
      begin
        try
          fs := TFileStream.Create(OpenPictureDialog1.FileName, fmOpenRead);
          sldb.UpdateBlob('UPDATE minerais set imagem' +
            num + ' = ? WHERE nome = "' + Dados.SQLite3DatasetGeral.FieldByName(
            'nome').AsString + '"', fs);
        finally
          fs.Free;
        end;
      end;
      AtualizaImagem;
    end;
  end;
end;
        }
procedure TFormPrincipal.AtualizaImagem;
var
  nome_mineral, aux: string;
begin
  nome_mineral := ListboxMinerais.GetselectedText;
  if (ListBoxMinerais.GetSelectedText <> EmptyStr) then
  begin       //diminuir tamanho do codigo, usando um try e um sldb.gettable

    self.ImageAmpliada.Picture.Graphic := ImagemMineral(nome_mineral, 1);

  if MenuItemImagens.Checked then
  begin
        self.Image1.Picture.Graphic := ImagemMineral(nome_mineral, 1);
        self.Image2.Picture.Graphic := ImagemMineral(nome_mineral, 2);
        self.Image3.Picture.Graphic := ImagemMineral(nome_mineral, 3);
        self.Image4.Picture.Graphic := ImagemMineral(nome_mineral, 4);
        self.Image5.Picture.Graphic := ImagemMineral(nome_mineral, 5);
        self.ImageCristalografia1.Picture.Graphic := ImagemMineral(nome_mineral, 6);
        self.ImageCristalografia2.Picture.Graphic := ImagemMineral(nome_mineral, 6);
    end;
  end
  else
  begin
    self.Image1.Picture.Graphic:= ImagemDidatica(Nome_Didatico, 1);
    self.Image2.Picture.Graphic:= ImagemDidatica(Nome_Didatico, 2);
    self.Image3.Picture.Graphic:= ImagemDidatica(Nome_Didatico, 3);
    self.Image4.Picture.Graphic:= ImagemDidatica(Nome_Didatico, 4);
    self.Image5.Picture.Graphic:= ImagemDidatica(Nome_Didatico, 5);
  end;
end;

function TFormPrincipal.Nome_Didatico: string;
begin
  if (ComboBoxSubGrupo.Text = EmptyStr) then
  begin
    if (ComboBoxGrupo.Text = EmptyStr) then
    begin
      if (ComboBoxSubClasse.Text = EmptyStr) then
      begin
        if (ComboBoxClasse.Text = EmptyStr) then
        begin
          Result := 'Geral';
        end
        else
          Result := ComboBoxClasse.Text;
      end
      else
        Result := ComboBoxSubClasse.Text;
    end
    else
      Result := ComboBoxGrupo.Text;
  end
  else
    Result := ComboBoxSubGrupo.Text;
end;

procedure TFormPrincipal.SelecionaImagem(num: char);
begin
    if (ListboxMinerais.GetSelectedText <> EmptyStr) then
    begin
      self.ImageAmpliada.Picture.Graphic :=
      SelecionarImagem(ListboxMinerais.GetSelectedText, 'minerais', StrToInt(num));
    end
    else
    begin
      self.ImageAmpliada.Picture.Graphic :=
      SelecionarImagem(Nome_Didatico, 'mineralogia', StrToInt(num));
    end;
  Imagem_Selecionada := num;
end;

procedure TFormPrincipal.ProcuraMineral;
var SelectSQL:String;
begin
  Nome_Mineral := ListboxMinerais.GetSelectedText;
  if Nome_Mineral <> emptystr then
  begin
    SelectSQL:='SELECT nome, formula, classe, subclasse, grupo, subgrupo, ocorrencia, associacao,';
      SelectSQL:=SelectSQL+' distincao, alteracao, aplicacao, dureza_min, dureza_max, ';
      SelectSQL:=SelectSQl+' densidade_min, densidade_max, cor, traco, brilho, clivagem, fratura, magnetismo, ';
      SelectSQL:=SelectSQL+' luminescencia, difaneidade, sinal_optico, indice_refracao, angulo, cor_interferencia,';
      SelectSQL:=SelectSQL+'cor_lamina, sinal_elongacao, birrefringencia, relevo, extincao,';
      SelectSQL:=SelectSQL+'sistema, classe_cristalina, h_m, habito FROM minerais WHERE nome="'+Nome_Mineral+'";';
    if (Dados.SQLite3DatasetGeral.active) then
    begin
      Dados.SQLite3DatasetGeral.applyupdates;
      Dados.Sqlite3DatasetGeral.Close;
      Dados.Sqlite3DatasetGeral.SQL:=SelectSQL;
      Dados.SQLite3DatasetGeral.Open();
    end
    else
    begin
      Dados.Sqlite3DatasetGeral.SQL:=SelectSQL;
      Dados.SQLite3DatasetGeral.Open();
    end;
    //atualizarichmemo; //
    editaDD;
    AtualizaImagem;
    if (MenuItemModoEdicao.Checked) then
    begin
      GroupBoxDureza.Visible := True;
      GroupBoxDensidade.Visible := True;
      RichMemoFormula.Visible:=False;
    end
    else
    begin
      GroupBoxDureza.Visible := False;
      GroupBoxDensidade.Visible := False;
      //RichMemoFormula.Visible:=True;
      atualizarichmemo;
    end;
  end
  else
  if Dados.Sqlite3DatasetGeral.Active then
  Dados.Sqlite3DatasetGeral.ClearFields;
end;

procedure TFormPrincipal.Image1Click(Sender: TObject);
begin
  SelecionaImagem('1');
end;

procedure TFormPrincipal.Image1DblClick(Sender: TObject);
begin
  Adiciona_Imagem('1');
end;

procedure TFormPrincipal.Image2Click(Sender: TObject);
begin
  SelecionaImagem('2');
end;

procedure TFormPrincipal.Image2DblClick(Sender: TObject);
begin
  Adiciona_Imagem('2');
end;

procedure TFormPrincipal.Image3Click(Sender: TObject);
begin
  SelecionaImagem('3');
end;

procedure TFormPrincipal.Image3DblClick(Sender: TObject);
begin
  Adiciona_Imagem('3');
end;

procedure TFormPrincipal.Image4Click(Sender: TObject);
begin
  SelecionaImagem('4');
end;

procedure TFormPrincipal.Image4DblClick(Sender: TObject);
begin
  Adiciona_Imagem('4');
end;

procedure TFormPrincipal.Image5Click(Sender: TObject);
begin
  SelecionaImagem('5');
end;

procedure TFormPrincipal.ImageCristalografia1DblClick(Sender: TObject);
begin
  Adiciona_Imagem('6');
end;

procedure TFormPrincipal.ImageCristalografia2DblClick(Sender: TObject);
begin
  Adiciona_Imagem('7');
end;

procedure TFormPrincipal.Image5DblClick(Sender: TObject);
begin
  Adiciona_Imagem('5');
end;

procedure TFormPrincipal.MemoryStreamParaImagem;
begin
  ms.Position := 0;
  pic := TJPEGImage.Create;
  pic.LoadFromStream(ms);
  self.ImageAmpliada.Picture.Graphic := pic;
  pic.Free;
end;

procedure TFormPrincipal.ImageCristalografia1Click(Sender: TObject);
begin
  if (ListboxMinerais.GetSelectedText <> EmptyStr) then
  begin
    try
      sltb := sldb.GetTable('SELECT imagemCristalografia1 FROM minerais where nome = "' +
        dados.SQLite3DatasetGeral.FieldByName('nome').AsString + '"');
      ms := sltb.FieldAsBlob(sltb.FieldIndex['imagemCristalografia1']);

      if (ms <> nil) then
        MemoryStreamParaImagem
      else
        ImageAmpliada.Picture.Clear;
    finally
      sltb.Free
    end;
  end;
  Imagem_Selecionada := '6';
end;

procedure TFormPrincipal.ImageCristalografia2Click(Sender: TObject);
begin
  if (ListboxMinerais.GetSelectedText <> EmptyStr) then
  begin
    try
      sltb := sldb.GetTable('SELECT imagemCristalografia2 FROM minerais where nome = "' +
        dados.SQLite3DatasetGeral.FieldByName('nome').AsString + '"');
      ms := sltb.FieldAsBlob(sltb.FieldIndex['imagemCristalografia2']);
      if (ms <> nil) then
        MemoryStreamParaImagem
      else
        ImageAmpliada.Picture.Clear;
    finally
      sltb.Free
    end;
  end;
  Imagem_Selecionada := '7';
end;

end.
