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
unit unitfichaespecie;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, BCPanel, BCLabel,
  Forms, Controls, Graphics, Dialogs, ExtCtrls, ComCtrls,
  StdCtrls, DBCtrls, Buttons, Menus, ExtDlgs, ActnList,
  SQLite3tablemod, uFormImpressao, unitremovemineral, unitlanguage,
  IniFiles, uBibliografia, unitajuda;

type

  { TFormFichaEspecie }

  TFormFichaEspecie = class(TForm)
    ActionMenuHelp: TAction;
    ActionMenuConf: TAction;
    ActionOpenDatabaseForm: TAction;
    ActionFormPrint: TAction;
    ActionImagesVisible: TAction;
    ActionFilterVisible: TAction;
    ActionAdd: TAction;
    ActionRemoveMineral: TAction;
    ActionRefreshList: TAction;
    ActionAddImage7: TAction;
    ActionAddImage6: TAction;
    ActionAddImage5: TAction;
    ActionAddImage4: TAction;
    ActionAddImage3: TAction;
    ActionAddImage2: TAction;
    ActionAddImage1: TAction;
    ActionList1: TActionList;
    BCLabelName: TBCLabel;
    BCLabelOrder: TBCLabel;
    BCLabelMinerals: TBCLabel;
    BCLabelRegistros: TBCLabel;
    BCLabelAssociacao: TBCLabel;
    BCLabelBrilho: TBCLabel;
    BCLabelClass: TBCLabel;
    BCLabelCor: TBCLabel;
    BCLabelDensity: TBCLabel;
    BCLabelHardness: TBCLabel;
    BCLabelGroup: TBCLabel;
    BCLabelOcorrencia: TBCLabel;
    BCLabelSubclass: TBCLabel;
    BCLabelSubgroup: TBCLabel;
    BCPanel1: TBCPanel;
    BCPanel2: TBCPanel;
    ComboBoxClasse: TComboBox;
    ComboBoxDureza_max: TComboBox;
    ComboBoxDureza_min: TComboBox;
    ComboBoxGrupo: TComboBox;
    ComboBoxSubclasse: TComboBox;
    ComboBoxSubgrupo: TComboBox;
    EditSistema: TEdit;
    EditClasse_Cristalina: TEdit;
    EditH_M: TEdit;
    EditClasse: TEdit;
    EditDensidade: TEdit;
    EditDensidadeMax: TEdit;
    EditDensidadeMin: TEdit;
    EditDureza: TEdit;
    EditDurezaMax: TEdit;
    EditDurezaMin: TEdit;
    EditFiltroAssociacao: TEdit;
    EditFiltroBrilho: TEdit;
    EditFiltroCor: TEdit;
    EditFiltroDens_Max: TEdit;
    EditFiltroDens_min: TEdit;
    EditFiltroOcorrencia: TEdit;
    EditFormula: TEdit;
    EditGrupo: TEdit;
    EditNome: TEdit;
    EditNomeMineral: TEdit;
    EditSubClasse: TEdit;
    EditSubGrupo: TEdit;
    GroupBoxCristalografia1: TGroupBox;
    GroupBoxCristalografia2: TGroupBox;
    GroupBoxDensidade: TGroupBox;
    GroupBoxDureza: TGroupBox;
    GroupBoxImagemAmpliada: TGroupBox;
    HeaderControl1: THeaderControl;
    ImageCristalografia1: TImage;
    ImageCristalografia2: TImage;
    ImageList1: TImageList;
    ImageListHeaderControl: TImageList;
    ImagemAmpliada: TImage;
    Memo1: TMemo;
    MenuItemRemoveMineral: TMenuItem;
    MenuItemConfiguracao: TMenuItem;
    MenuItemAddMineral: TMenuItem;
    MenuItemAjuda: TMenuItem;
    Mineralogy_Name: TLabel;
    LabelComposicao: TLabel;
    LabelHardness: TLabel;
    LabelDensity: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    LabelAlteracao: TLabel;
    LabelAngulo_2V: TLabel;
    LabelAplicacao: TLabel;
    LabelAssociacao: TLabel;
    LabelBirrefringencia: TLabel;
    LabelBrilho: TLabel;
    LabelClasse: TLabel;
    LabelClasse_Cristalina: TLabel;
    LabelClivagem: TLabel;
    LabelCor: TLabel;
    LabelCor_Interferencia: TLabel;
    LabelCor_Lamina: TLabel;
    LabelDiafaneidade: TLabel;
    LabelDistincao: TLabel;
    LabelExtincao: TLabel;
    LabelFratura: TLabel;
    LabelGrupo: TLabel;
    LabelHabito: TLabel;
    LabelIndice_Refracao: TLabel;
    LabelLuminescencia: TLabel;
    LabelMagnetismo: TLabel;
    LabelNome: TLabel;
    LabelOcorrencia: TLabel;
    LabelRelevo: TLabel;
    LabelSimbologia: TLabel;
    LabelSInal_Elongacao: TLabel;
    LabelSinal_optico: TLabel;
    LabelSistema_Cristalino: TLabel;
    LabelSubClasse: TLabel;
    LabelSubGrupo: TLabel;
    LabelTraco: TLabel;
    ListBoxMinerais: TListBox;
    MainMenu1: TMainMenu;
    MemoHabito: TMemo;
    MemoAlteracao: TMemo;
    MemoAngulo: TMemo;
    MemoAplicacao: TMemo;
    MemoAssociacao: TMemo;
    MemoBirrefringencia: TMemo;
    MemoBrilho: TMemo;
    MemoClivagem: TMemo;
    MemoCor: TMemo;
    MemoCorLamina: TMemo;
    MemoDiafaneidade: TMemo;
    MemoDistincao: TMemo;
    MemoExtincao: TMemo;
    MemoFratura: TMemo;
    MemoIndiceRefracao: TMemo;
    MemoInterferencia: TMemo;
    MemoLuminescencia: TMemo;
    MemoMagnetismo: TMemo;
    MemoOcorrencia: TMemo;
    MemoRelevo: TMemo;
    MemoSinalElongacao: TMemo;
    MemoSinalOptico: TMemo;
    MemoTraco: TMemo;
    MenuItem1: TMenuItem;
    MenuItemAddImage: TMenuItem;
    MenuItemRemoveImage: TMenuItem;
    MenuItemAddImage1: TMenuItem;
    MenuItemAddImage2: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem15: TMenuItem;
    MenuItem16: TMenuItem;
    MenuItem17: TMenuItem;
    MenuItem18: TMenuItem;
    MenuItemRemImage1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItemRemImage2: TMenuItem;
    MenuItem21: TMenuItem;
    MenuItem22: TMenuItem;
    MenuItem23: TMenuItem;
    MenuItem24: TMenuItem;
    MenuItem25: TMenuItem;
    MenuItemBibliografia: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItemClose: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItemPrint: TMenuItem;
    OpenPictureDialog1: TOpenPictureDialog;
    ProgressBar1: TProgressBar;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioGroupOrdem: TRadioGroup;
    PageControlFicha: TPageControl;
    ScrollBox8: TScrollBox;
    ScrollBox2: TScrollBox;
    ScrollBox3: TScrollBox;
    ScrollBox4: TScrollBox;
    ScrollBox5: TScrollBox;
    ScrollBox6: TScrollBox;
    TabSheetCristalografia: TTabSheet;
    TabSheetImagem: TTabSheet;
    TabSheetInf_Gerais: TTabSheet;
    TabSheetOticas: TTabSheet;
    TabSheetProp_Fisicas: TTabSheet;
    ToolBar1: TToolBar;
    ToolBar2: TToolBar;
    ToolButton1: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButtonBibliografia: TToolButton;
    ToolButton6: TToolButton;
    ToolButtonAdd: TToolButton;
    ToolButtonDatabase: TToolButton;
    ToolButtonHelp: TToolButton;
    ToolButtonShowFilter: TToolButton;
    ToolButtonShowImages: TToolButton;
    ToolButtonRemove: TToolButton;
    ToolButton5: TToolButton;
    ToolButtonRefresh: TToolButton;
    ToolButton7: TToolButton;
    ToolButtonPrint: TToolButton;
    ToolButtonAddImage: TToolButton;
    ToolButton2: TToolButton;
    ToolButtonRemoveImage: TToolButton;
    procedure ActionAddExecute(Sender: TObject);
    procedure ActionAddImage1Execute(Sender: TObject);
    procedure ActionAddImage2Execute(Sender: TObject);
    procedure ActionAddImage3Execute(Sender: TObject);
    procedure ActionAddImage4Execute(Sender: TObject);
    procedure ActionAddImage5Execute(Sender: TObject);
    procedure ActionAddImage6Execute(Sender: TObject);
    procedure ActionAddImage7Execute(Sender: TObject);
    procedure ActionFilterVisibleExecute(Sender: TObject);
    procedure ActionFormPrintExecute(Sender: TObject);
    procedure ActionImagesVisibleExecute(Sender: TObject);
    procedure ActionMenuConfExecute(Sender: TObject);
    procedure ActionMenuHelpExecute(Sender: TObject);
    procedure ActionOpenDatabaseFormExecute(Sender: TObject);
    procedure ActionRefreshListExecute(Sender: TObject);
    procedure ActionRemoveMineralExecute(Sender: TObject);
    procedure ComboBoxClasseChange(Sender: TObject);
    procedure ComboBoxGrupoChange(Sender: TObject);
    procedure ComboBoxSubclasseChange(Sender: TObject);
    procedure ComboBoxSubgrupoChange(Sender: TObject);
    procedure EditClasse_CristalinaEditingDone(Sender: TObject);
    procedure EditClasse_CristalinaKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure EditFiltroAssociacaoEditingDone(Sender: TObject);
    procedure EditFiltroBrilhoEditingDone(Sender: TObject);
    procedure EditClasseEditingDone(Sender: TObject);
    procedure EditClasseKeyUp(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure EditFiltroCorEditingDone(Sender: TObject);
    procedure EditDensidadeClick(Sender: TObject);
    procedure EditDensidadeMaxEditingDone(Sender: TObject);
    procedure EditDensidadeMaxKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure EditDensidadeMinEditingDone(Sender: TObject);
    procedure EditDensidadeMinKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure EditFiltroDens_MaxEditingDone(Sender: TObject);
    procedure EditFiltroDens_minEditingDone(Sender: TObject);
    procedure EditDurezaClick(Sender: TObject);
    procedure EditDurezaMaxEditingDone(Sender: TObject);
    procedure EditDurezaMaxKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure EditDurezaMinEditingDone(Sender: TObject);
    procedure EditDurezaMinKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure EditFormulaEditingDone(Sender: TObject);
    procedure EditFormulaKeyUp(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure EditGrupoEditingDone(Sender: TObject);
    procedure EditGrupoKeyUp(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure EditH_MEditingDone(Sender: TObject);
    procedure EditH_MKeyUp(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure EditNomeEditingDone(Sender: TObject);
    procedure EditFiltroOcorrenciaEditingDone(Sender: TObject);
    procedure EditNomeMineralEditingDone(Sender: TObject);
    procedure EditNomeMineralKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure EditSistemaEditingDone(Sender: TObject);
    procedure EditSistemaKeyUp(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure EditSubClasseEditingDone(Sender: TObject);
    procedure EditSubClasseKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure EditSubGrupoEditingDone(Sender: TObject);
    procedure EditSubGrupoKeyUp(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure HeaderControl1SectionClick(HeaderControl: TCustomHeaderControl;
      Section: THeaderSection);
    procedure ListBoxMineraisClick(Sender: TObject);
    procedure MemoAlteracaoEditingDone(Sender: TObject);
    procedure MemoAlteracaoKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure MemoAnguloEditingDone(Sender: TObject);
    procedure MemoAnguloKeyUp(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure MemoAplicacaoEditingDone(Sender: TObject);
    procedure MemoAplicacaoKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure MemoAssociacaoEditingDone(Sender: TObject);
    procedure MemoAssociacaoKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure MemoBirrefringenciaEditingDone(Sender: TObject);
    procedure MemoBirrefringenciaKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure MemoBrilhoEditingDone(Sender: TObject);
    procedure MemoBrilhoKeyUp(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure MemoClivagemEditingDone(Sender: TObject);
    procedure MemoClivagemKeyUp(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure MemoCorEditingDone(Sender: TObject);
    procedure MemoCorKeyUp(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure MemoCorLaminaEditingDone(Sender: TObject);
    procedure MemoCorLaminaKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure MemoDiafaneidadeEditingDone(Sender: TObject);
    procedure MemoDiafaneidadeKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure MemoDistincaoEditingDone(Sender: TObject);
    procedure MemoDistincaoKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure MemoExtincaoEditingDone(Sender: TObject);
    procedure MemoExtincaoKeyUp(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure MemoFraturaEditingDone(Sender: TObject);
    procedure MemoFraturaKeyUp(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure MemoHabitoEditingDone(Sender: TObject);
    procedure MemoHabitoKeyUp(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure MemoIndiceRefracaoEditingDone(Sender: TObject);
    procedure MemoIndiceRefracaoKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure MemoInterferenciaEditingDone(Sender: TObject);
    procedure MemoInterferenciaKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure MemoLuminescenciaEditingDone(Sender: TObject);
    procedure MemoLuminescenciaKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure MemoMagnetismoEditingDone(Sender: TObject);
    procedure MemoMagnetismoKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure MemoOcorrenciaEditingDone(Sender: TObject);
    procedure MemoOcorrenciaKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure MemoRelevoEditingDone(Sender: TObject);
    procedure MemoRelevoKeyUp(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure MemoSinalElongacaoEditingDone(Sender: TObject);
    procedure MemoSinalElongacaoKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure MemoSinalOpticoEditingDone(Sender: TObject);
    procedure MemoSinalOpticoKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure MemoTracoEditingDone(Sender: TObject);
    procedure MemoTracoKeyUp(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure MenuItemRemImage1Click(Sender: TObject);
    procedure MenuItemRemImage2Click(Sender: TObject);
    procedure MenuItem21Click(Sender: TObject);
    procedure MenuItem22Click(Sender: TObject);
    procedure MenuItem23Click(Sender: TObject);
    procedure MenuItem24Click(Sender: TObject);
    procedure MenuItem25Click(Sender: TObject);
    procedure MenuItemBibliografiaClick(Sender: TObject);
    procedure MenuItemCloseClick(Sender: TObject);
    procedure PageControlFichaChange(Sender: TObject);
    procedure ToolButtonAddImageClick(Sender: TObject);
    procedure ToolButtonBibliografiaClick(Sender: TObject);
    procedure ToolButtonLanguageClick(Sender: TObject);
    procedure ToolButtonRemoveImageClick(Sender: TObject);
  private
    function DefinirOrdem: string;
    function Filtro_Nome: boolean;
    function Filtro_Ocorrencia: boolean;
    function Filtro_Associacao: boolean;
    function Filtro_Cor: boolean;
    function Filtro_Brilho: boolean;
    function MineralogyName: string;
    procedure AddMineralImage(Tipo:String;Num: char);
    procedure ClearFields;
    procedure ConfigDatabase(config:TIniFile);
    procedure Image1OnClick(Sender: TObject);
    procedure Image2OnClick(Sender: TObject);
    procedure Image3OnClick(Sender: TObject);
    procedure Image4OnClick(Sender: TObject);
    procedure Image5OnClick(Sender: TObject);
    procedure Image6OnClick(Sender: TObject);
    procedure Image7OnClick(Sender: TObject);
    procedure RefreshHeaderControl(num: char);
    procedure RefreshHardDens;
    procedure RemoveImage(ImagemSelecionada:Char);
    { private declarations }
  public
    procedure EditingMode(Mode: boolean);
    procedure ChangeLanguage;
    procedure Preenche_Classes;
    procedure Preenche_Subclasses;
    procedure Preenche_Grupos;
    procedure Preenche_SubGrupos;
    procedure RefreshImages;
    function AtualizarLista: boolean;
    { public declarations }
  end;

  PropertyImages = record
    ToCreate: boolean;
    Created: boolean;
  end;

const
  Lista_Formatos: string = 'All Files| *.jpg; *.jpeg;';
  ImagesLeft: integer = 6;
  Image1Top: integer = 8;
  SeparadorImagens: integer = 140;
  ImagesWidth: integer = 140;
  ImagesHeight: integer = 120;

var
  DatabaseMinerals: TSQLiteDatabase;
  TableMinerals: TSQLiteTable;

  NomeMineral: string;

  Image1, Image2, Image3, Image4, Image5, Image6, Image7: TImage;

  FormFichaEspecie: TFormFichaEspecie;
  Imagem_Selecionada: char;

  UltimaPesquisa: string;
  den_min, den_max, Ocorrencia,      //variaveis usadas nos procedimentos de filtro
  Associacao, Cor, Brilho: string;

  Image: array[1..7] of PropertyImages;

  Config:TIniFile;

implementation

uses udatamodule, unitBlobFields, unitaddmineral, unitselectdatabase,
  unitformlanguage, unitformconfigurations;

{$R *.lfm}

{ TFormFichaEspecie }

procedure TFormFichaEspecie.FormCreate(Sender: TObject);
begin
  Imagem_Selecionada := '1';
  openpicturedialog1.Filter := lista_formatos;
  Config:=TIniFile.Create(Dados.Caminho+'\config.ini');
  ConfigDatabase(Config);
  if SetLanguage(Config.ReadString('Configurations', 'Language', 'English')) then
  begin
    ChangeLanguage;
  end;
  Config.Free;
  Mineralogy_Name.Caption:=MineralogyName;
end;

procedure TFormFichaEspecie.FormDestroy(Sender: TObject);
begin

end;

procedure TFormFichaEspecie.FormShow(Sender: TObject);
var
  SelectSQL: string;
begin
  Imagem_Selecionada := '1';

  if Trim(Dados.DatabaseMineralFileName) <> EmptyStr then
  begin
    if FileExists(Dados.DatabaseMineralFileName) then
    begin
      Dados.DatabaseMinerals := TSQLiteDatabase.Create(Dados.DatabaseMineralFileName);
      SelectSQL :=
        'Select nome, formula, classe, subclasse, grupo, subgrupo, ocorrencia, associacao, ';
      SelectSQL := SelectSQL +
        ' distincao, alteracao, aplicacao, dureza_min, dureza_max, ';
      SelectSQL := SelectSQL +
        ' densidade_min, densidade_max, cor, traco, brilho, clivagem, fratura, magnetismo, ';
      SelectSQL := SelectSQl +
        ' luminescencia, difaneidade, sinal_optico, indice_refracao, angulo, cor_interferencia, ';
      SelectSQL := SelectSQL +
        ' cor_lamina, sinal_elongacao, birrefringencia, relevo, extincao, ';
      SelectSQL := SelectSQL + ' sistema, classe_cristalina, h_m, habito FROM minerais ';
      Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(SelectSQl);

      AtualizarLista;
      Preenche_Classes;
      Preenche_Subclasses;
      Preenche_Grupos;
      Preenche_Subgrupos;
      EditingMode(True);
      RefreshImages;
    end
    else
    begin
      EditingMode(False);
      ShowMessage(Lang.TheSelectedDatabaseIsNotValid);
      Dados.DatabaseMineralFileName := EmptyStr;
    end;
  end
  else
  begin
    EditingMode(False);
    ShowMessage(Lang.NoDatabaseSelected);
  end;
end;

procedure TFormFichaEspecie.HeaderControl1SectionClick(
  HeaderControl: TCustomHeaderControl; Section: THeaderSection);
begin
  if (Trim(ListboxMinerais.GetSelectedText) <> Emptystr) then
  begin
    case Section.Index of
      0:
      begin
        self.ImagemAmpliada.Picture.Graphic :=
          SelectBlobFieldToJPEGImage('minerais', 'imagem1',
          EditNomeMineral.Caption, EmptyStr, EmptyStr, EmptyStr);
        Imagem_Selecionada := '1';
      end;
      1:
      begin
        self.ImagemAmpliada.Picture.Graphic :=
          SelectBlobFieldToJPEGImage('minerais', 'imagem2',
          EditNomeMineral.Caption, EmptyStr, EmptyStr, EmptyStr);
        Imagem_Selecionada := '2';
      end;
      2:
      begin
        self.ImagemAmpliada.Picture.Graphic :=
          SelectBlobFieldToJPEGImage('minerais', 'imagem3',
          EditNomeMineral.Caption, EmptyStr, EmptyStr, EmptyStr);
        Imagem_Selecionada := '3';
      end;
      3:
      begin
        self.ImagemAmpliada.Picture.Graphic :=
          SelectBlobFieldToJPEGImage('minerais', 'imagem4',
          EditNomeMineral.Caption, EmptyStr, EmptyStr, EmptyStr);
        Imagem_Selecionada := '4';
      end;
      4:
      begin
        self.ImagemAmpliada.Picture.Graphic :=
          SelectBlobFieldToJPEGImage('minerais', 'imagem5',
          EditNomeMineral.Caption, EmptyStr, EmptyStr, EmptyStr);
        Imagem_Selecionada := '5';
      end;
      5:
      begin
        self.ImagemAmpliada.Picture.Graphic :=
          SelectBlobFieldToJPEGImage('minerais', 'imagem6',
          EditNomeMineral.Caption, EmptyStr, EmptyStr, EmptyStr);
        Imagem_Selecionada := '6';
      end;
      6:
      begin
        self.ImagemAmpliada.Picture.Graphic :=
          SelectBlobFieldToJPEGImage('minerais', 'imagem7',
          EditNomeMineral.Caption, EmptyStr, EmptyStr, EmptyStr);
        Imagem_Selecionada := '7';
      end;
    end;
  end
  else
  begin
    //zerar campos da ficha do mineral, senao a imagem vai estar associada a ele
    case Section.Index of
      0:
      begin
        self.ImagemAmpliada.Picture.Graphic :=
          SelectBlobFieldToJPEGImage('mineralogia', 'mineralogiaimagem1',
            EmptyStr, EmptyStr, EmptyStr, MineralogyName);
        Imagem_Selecionada:='1';
      end;
      1:
      begin
        self.ImagemAmpliada.Picture.Graphic :=
          SelectBlobFieldToJPEGImage('mineralogia', 'mineralogiaimagem2',
            EmptyStr, EmptyStr, EmptyStr, MineralogyName);
        Imagem_Selecionada:='2';
      end;
      2:
      begin
        self.ImagemAmpliada.Picture.Graphic :=
          SelectBlobFieldToJPEGImage('mineralogia', 'mineralogiaimagem3',
            EmptyStr, EmptyStr, EmptyStr, MineralogyName);
        Imagem_Selecionada:='3';
      end;
      3:
      begin
        self.ImagemAmpliada.Picture.Graphic :=
          SelectBlobFieldToJPEGImage('mineralogia', 'mineralogiaimagem4',
            EmptyStr, EmptyStr, EmptyStr, MineralogyName);
        Imagem_Selecionada:='4';
      end;
      4:
      begin
        self.ImagemAmpliada.Picture.Graphic :=
          SelectBlobFieldToJPEGImage('mineralogia', 'mineralogiaimagem5',
            EmptyStr, EmptyStr, EmptyStr, MineralogyName);
        Imagem_Selecionada:='5';
      end;
      5:
      begin
        self.ImagemAmpliada.Picture.Graphic :=
          SelectBlobFieldToJPEGImage('mineralogia', 'mineralogiaimagem6',
            EmptyStr, EmptyStr, EmptyStr, MineralogyName);
        Imagem_Selecionada:='6';
      end;
      6:
      begin
        self.ImagemAmpliada.Picture.Graphic :=
          SelectBlobFieldToJPEGImage('mineralogia', 'mineralogiaimagem7',
            EmptyStr, EmptyStr, EmptyStr, MineralogyName);
        Imagem_Selecionada:='7';
      end;
    end;
  end;
  RefreshHeaderControl(Imagem_Selecionada);
end;

procedure TFormFichaEspecie.ListBoxMineraisClick(Sender: TObject);
var
  SelectSQL: string;
begin
  //NomeMineral é usado no editingdone do EditNomeMineral
  NomeMineral := ListboxMinerais.GetSelectedText;
  if NomeMineral <> EmptyStr then
  begin
    Mineralogy_Name.Caption:='';
    SelectSQL :=
      'SELECT nome, formula, classe, subclasse, grupo, subgrupo, ocorrencia, associacao,';
    SelectSQL := SelectSQL +
      ' distincao, alteracao, aplicacao, dureza_min, dureza_max, ';
    SelectSQL := SelectSQl +
      ' densidade_min, densidade_max, cor, traco, brilho, clivagem, fratura, magnetismo, ';
    SelectSQL := SelectSQL +
      ' luminescencia, difaneidade, sinal_optico, indice_refracao, angulo, cor_interferencia,';
    SelectSQL := SelectSQL +
      'cor_lamina, sinal_elongacao, birrefringencia, relevo, extincao,';
    SelectSQL := SelectSQL +
      'sistema, classe_cristalina, h_m, habito FROM minerais WHERE nome="' +
      ListboxMinerais.GetSelectedText + '";';
    Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(SelectSQL);

    EditFormula.Caption := Dados.TableMinerals.FieldByName['formula'];

    EditNomeMineral.Caption := Dados.TableMinerals.FieldByName['nome'];
    EditClasse.Caption := Dados.TableMinerals.FieldByName['classe'];
    EditSubClasse.Caption := Dados.TableMinerals.FieldByName['subclasse'];
    EditGrupo.Caption := Dados.TableMinerals.FieldByName['grupo'];
    EditSubGrupo.Caption := Dados.TableMinerals.FieldByName['subgrupo'];
    MemoOcorrencia.Text := Dados.TableMinerals.FieldByName['ocorrencia'];
    MemoAssociacao.Text := Dados.TableMinerals.FieldByName['associacao'];
    MemoDistincao.Text := Dados.TableMinerals.FieldByName['distincao'];
    MemoAlteracao.Text := Dados.TableMinerals.FieldByName['alteracao'];
    MemoAplicacao.Text := Dados.TableMinerals.FieldByName['aplicacao'];

    EditDurezaMin.Text := Dados.TableMinerals.FieldByName['dureza_min'];
    EditDurezaMax.Text := Dados.TableMinerals.FieldByName['dureza_max'];
    EditDensidadeMin.Text := Dados.TableMinerals.FieldByName['densidade_min'];
    EditDensidadeMax.Text := Dados.TableMinerals.FieldByName['densidade_max'];

    if (Trim(EditDurezaMin.Text) = Trim(EditDurezaMax.Text)) then
      EditDureza.Text := EditDurezaMin.Text
    else
      EditDureza.Text := EditDurezaMin.Text + ' - ' + EditDurezaMax.Text;
    if (Trim(EditDensidadeMin.Text) = Trim(EditDensidadeMax.Text)) then
      EditDensidade.Text := EditDensidadeMin.Text
    else
      EditDensidade.Text := EditDensidadeMin.Text + ' - ' + EditDensidadeMax.Text;

    MemoCor.Text := Dados.TableMinerals.FieldByName['cor'];
    MemoTraco.Text := Dados.TableMinerals.FieldByName['traco'];
    MemoBrilho.Text := Dados.TableMinerals.FieldByName['brilho'];
    MemoClivagem.Text := Dados.TableMinerals.FieldByName['clivagem'];
    MemoFratura.Text := Dados.TableMinerals.FieldByName['fratura'];
    MemoMagnetismo.Text := Dados.TableMinerals.FieldByName['magnetismo'];
    MemoLuminescencia.Text := Dados.TableMinerals.FieldByName['luminescencia'];

    MemoDiafaneidade.Text := Dados.TableMinerals.FieldByName['difaneidade'];
    MemoSinalOptico.Text := Dados.TableMinerals.FieldByName['sinal_optico'];
    MemoIndiceRefracao.Text := Dados.TableMinerals.FieldByName['indice_refracao'];
    MemoAngulo.Text := Dados.TableMinerals.FieldByName['angulo'];
    MemoInterferencia.Text := Dados.TableMinerals.FieldByName['cor_interferencia'];
    MemoCorLamina.Text := Dados.TableMinerals.FieldByName['cor_lamina'];
    MemoSinalElongacao.Text := Dados.TableMinerals.FieldByName['sinal_elongacao'];
    MemoBirrefringencia.Text := Dados.TableMinerals.FieldByName['birrefringencia'];
    MemoRelevo.Text := Dados.TableMinerals.FieldByName['relevo'];
    MemoExtincao.Text := Dados.TableMinerals.FieldByName['extincao'];

    EditSistema.Text := Dados.TableMinerals.FieldByName['sistema'];
    EditClasse_Cristalina.Text := Dados.TableMinerals.FieldByName['classe_cristalina'];
    EditH_M.Text := Dados.TableMinerals.FieldByName['h_m'];
    MemoHabito.Text := Dados.TableMinerals.FieldByName['habito'];

    Imagem_Selecionada:='1';
    RefreshImages;
  end;
end;

procedure TFormFichaEspecie.MemoAlteracaoEditingDone(Sender: TObject);
begin
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
    'UPDATE minerais SET alteracao ' + '="' + MemoAlteracao.Text +
    '" WHERE nome="' + EditNomeMineral.Text + '";');
end;

procedure TFormFichaEspecie.MemoAlteracaoKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
    'UPDATE minerais SET alteracao ' + '="' + MemoAlteracao.Text +
    '" WHERE nome="' + EditNomeMineral.Text + '";');
end;

procedure TFormFichaEspecie.MemoAnguloEditingDone(Sender: TObject);
begin
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable('UPDATE minerais SET angulo ' +
    '="' + MemoAngulo.Text + '" WHERE nome="' + EditNomeMineral.Text + '";');
end;

procedure TFormFichaEspecie.MemoAnguloKeyUp(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable('UPDATE minerais SET angulo ' +
    '="' + MemoAngulo.Text + '" WHERE nome="' + EditNomeMineral.Text + '";');
end;

procedure TFormFichaEspecie.MemoAplicacaoEditingDone(Sender: TObject);
begin
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
    'UPDATE minerais SET aplicacao ' + '="' + MemoAplicacao.Text +
    '" WHERE nome="' + EditNomeMineral.Text + '";');
end;

procedure TFormFichaEspecie.MemoAplicacaoKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
    'UPDATE minerais SET aplicacao ' + '="' + MemoAplicacao.Text +
    '" WHERE nome="' + EditNomeMineral.Text + '";');
end;

procedure TFormFichaEspecie.MemoAssociacaoEditingDone(Sender: TObject);
begin
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
    'UPDATE minerais SET associacao ' + '="' + MemoAssociacao.Text +
    '" WHERE nome="' + EditNomeMineral.Text + '";');
end;

procedure TFormFichaEspecie.MemoAssociacaoKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
    'UPDATE minerais SET associacao ' + '="' + MemoAssociacao.Text +
    '" WHERE nome="' + EditNomeMineral.Text + '";');
end;

procedure TFormFichaEspecie.MemoBirrefringenciaEditingDone(Sender: TObject);
begin
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
    'UPDATE minerais SET birrefringencia ' + '="' + MemoBirrefringencia.Text +
    '" WHERE nome="' + EditNomeMineral.Text + '";');
end;

procedure TFormFichaEspecie.MemoBirrefringenciaKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
    'UPDATE minerais SET birrefringencia ' + '="' + MemoBirrefringencia.Text +
    '" WHERE nome="' + EditNomeMineral.Text + '";');
end;

procedure TFormFichaEspecie.MemoBrilhoEditingDone(Sender: TObject);
begin
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable('UPDATE minerais SET brilho ' +
    '="' + MemoBrilho.Text + '" WHERE nome="' + EditNomeMineral.Text + '";');
end;

procedure TFormFichaEspecie.MemoBrilhoKeyUp(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable('UPDATE minerais SET brilho ' +
    '="' + MemoBrilho.Text + '" WHERE nome="' + EditNomeMineral.Text + '";');
end;

procedure TFormFichaEspecie.MemoClivagemEditingDone(Sender: TObject);
begin
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
    'UPDATE minerais SET clivagem ' + '="' + MemoClivagem.Text +
    '" WHERE nome="' + EditNomeMineral.Text + '";');
end;

procedure TFormFichaEspecie.MemoClivagemKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
    'UPDATE minerais SET clivagem ' + '="' + MemoClivagem.Text +
    '" WHERE nome="' + EditNomeMineral.Text + '";');
end;

procedure TFormFichaEspecie.MemoCorEditingDone(Sender: TObject);
begin
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable('UPDATE minerais SET cor ' +
    '="' + MemoCor.Text + '" WHERE nome="' + EditNomeMineral.Text + '";');
end;

procedure TFormFichaEspecie.MemoCorKeyUp(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable('UPDATE minerais SET cor ' +
    '="' + MemoCor.Text + '" WHERE nome="' + EditNomeMineral.Text + '";');
end;

procedure TFormFichaEspecie.MemoCorLaminaEditingDone(Sender: TObject);
begin
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
    'UPDATE minerais SET cor_lamina ' + '="' + MemoCorLamina.Text +
    '" WHERE nome="' + EditNomeMineral.Text + '";');
end;

procedure TFormFichaEspecie.MemoCorLaminaKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
    'UPDATE minerais SET cor_lamina ' + '="' + MemoCorLamina.Text +
    '" WHERE nome="' + EditNomeMineral.Text + '";');
end;

procedure TFormFichaEspecie.MemoDiafaneidadeEditingDone(Sender: TObject);
begin
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
    'UPDATE minerais SET difaneidade ' + '="' + MemoDiafaneidade.Text +
    '" WHERE nome="' + EditNomeMineral.Text + '";');
end;

procedure TFormFichaEspecie.MemoDiafaneidadeKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
    'UPDATE minerais SET difaneidade ' + '="' + MemoDiafaneidade.Text +
    '" WHERE nome="' + EditNomeMineral.Text + '";');
end;

procedure TFormFichaEspecie.MemoDistincaoEditingDone(Sender: TObject);
begin
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
    'UPDATE minerais SET distincao' + '="' + MemoDistincao.Text +
    '" WHERE nome="' + EditNomeMineral.Text + '";');
end;

procedure TFormFichaEspecie.MemoDistincaoKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
    'UPDATE minerais SET distincao' + '="' + MemoDistincao.Text +
    '" WHERE nome="' + EditNomeMineral.Text + '";');
end;

procedure TFormFichaEspecie.MemoExtincaoEditingDone(Sender: TObject);
begin
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
    'UPDATE minerais SET extincao' + '="' + MemoExtincao.Text +
    '" WHERE nome="' + EditNomeMineral.Text + '";');
end;

procedure TFormFichaEspecie.MemoExtincaoKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
    'UPDATE minerais SET extincao' + '="' + MemoExtincao.Text +
    '" WHERE nome="' + EditNomeMineral.Text + '";');
end;

procedure TFormFichaEspecie.MemoFraturaEditingDone(Sender: TObject);
begin
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
    'UPDATE minerais SET fratura ' + '="' + MemoFratura.Text +
    '" WHERE nome="' + EditNomeMineral.Text + '";');
end;

procedure TFormFichaEspecie.MemoFraturaKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
    'UPDATE minerais SET fratura ' + '="' + MemoFratura.Text +
    '" WHERE nome="' + EditNomeMineral.Text + '";');
end;

procedure TFormFichaEspecie.MemoHabitoEditingDone(Sender: TObject);
begin
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable('UPDATE minerais SET habito ' +
    '="' + MemoHabito.Text + '" WHERE nome="' + EditNomeMineral.Text + '";');
end;

procedure TFormFichaEspecie.MemoHabitoKeyUp(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable('UPDATE minerais SET habito ' +
    '="' + MemoHabito.Text + '" WHERE nome="' + EditNomeMineral.Text + '";');
end;

procedure TFormFichaEspecie.MemoIndiceRefracaoEditingDone(Sender: TObject);
begin
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
    'UPDATE minerais SET indice_refracao ' + '="' + MemoIndiceRefracao.Text +
    '" WHERE nome="' + EditNomeMineral.Text + '";');
end;

procedure TFormFichaEspecie.MemoIndiceRefracaoKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
    'UPDATE minerais SET indice_refracao ' + '="' + MemoIndiceRefracao.Text +
    '" WHERE nome="' + EditNomeMineral.Text + '";');
end;

procedure TFormFichaEspecie.MemoInterferenciaEditingDone(Sender: TObject);
begin
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
    'UPDATE minerais SET cor_interferencia ' + '="' + MemoInterferencia.Text +
    '" WHERE nome="' + EditNomeMineral.Text + '";');
end;

procedure TFormFichaEspecie.MemoInterferenciaKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
    'UPDATE minerais SET cor_interferencia ' + '="' + MemoInterferencia.Text +
    '" WHERE nome="' + EditNomeMineral.Text + '";');
end;

procedure TFormFichaEspecie.MemoLuminescenciaEditingDone(Sender: TObject);
begin
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
    'UPDATE minerais SET luminescencia ' + '="' + MemoLuminescencia.Text +
    '" WHERE nome="' + EditNomeMineral.Text + '";');
end;

procedure TFormFichaEspecie.MemoLuminescenciaKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
    'UPDATE minerais SET luminescencia ' + '="' + MemoLuminescencia.Text +
    '" WHERE nome="' + EditNomeMineral.Text + '";');
end;

procedure TFormFichaEspecie.MemoMagnetismoEditingDone(Sender: TObject);
begin
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
    'UPDATE minerais SET magnetismo ' + '="' + MemoMagnetismo.Text +
    '" WHERE nome="' + EditNomeMineral.Text + '";');
end;

procedure TFormFichaEspecie.MemoMagnetismoKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
    'UPDATE minerais SET magnetismo ' + '="' + MemoMagnetismo.Text +
    '" WHERE nome="' + EditNomeMineral.Text + '";');
end;

procedure TFormFichaEspecie.MemoOcorrenciaEditingDone(Sender: TObject);
begin
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
    'UPDATE minerais SET ocorrencia ' + '="' + MemoOcorrencia.Text +
    '" WHERE nome="' + EditNomeMineral.Text + '";');
end;

procedure TFormFichaEspecie.MemoOcorrenciaKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
    'UPDATE minerais SET ocorrencia ' + '="' + MemoOcorrencia.Text +
    '" WHERE nome="' + EditNomeMineral.Text + '";');
end;

procedure TFormFichaEspecie.MemoRelevoEditingDone(Sender: TObject);
begin
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable('UPDATE minerais SET relevo ' +
    '="' + MemoRelevo.Text + '" WHERE nome="' + EditNomeMineral.Text + '";');
end;

procedure TFormFichaEspecie.MemoRelevoKeyUp(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable('UPDATE minerais SET relevo ' +
    '="' + MemoRelevo.Text + '" WHERE nome="' + EditNomeMineral.Text + '";');
end;

procedure TFormFichaEspecie.MemoSinalElongacaoEditingDone(Sender: TObject);
begin
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
    'UPDATE minerais SET sinal_elongacao' + '="' + MemoSinalElongacao.Text +
    '" WHERE nome="' + EditNomeMineral.Text + '";');
end;

procedure TFormFichaEspecie.MemoSinalElongacaoKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
    'UPDATE minerais SET sinal_elongacao' + '="' + MemoSinalElongacao.Text +
    '" WHERE nome="' + EditNomeMineral.Text + '";');
end;

procedure TFormFichaEspecie.MemoSinalOpticoEditingDone(Sender: TObject);
begin
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
    'UPDATE minerais SET sinal_optico' + '="' + MemoSinalOptico.Text +
    '" WHERE nome="' + EditNomeMineral.Text + '";');
end;

procedure TFormFichaEspecie.MemoSinalOpticoKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
    'UPDATE minerais SET sinal_optico' + '="' + MemoSinalOptico.Text +
    '" WHERE nome="' + EditNomeMineral.Text + '";');
end;

procedure TFormFichaEspecie.MemoTracoEditingDone(Sender: TObject);
begin
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable('UPDATE minerais SET traco ' +
    '="' + MemoTraco.Text + '" WHERE nome="' + EditNomeMineral.Text + '";');
end;

procedure TFormFichaEspecie.MemoTracoKeyUp(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable('UPDATE minerais SET traco ' +
    '="' + MemoTraco.Text + '" WHERE nome="' + EditNomeMineral.Text + '";');
end;

procedure TFormFichaEspecie.MenuItemRemImage1Click(Sender: TObject);
begin
  RemoveImage('1');
end;

procedure TFormFichaEspecie.MenuItemRemImage2Click(Sender: TObject);
begin
  RemoveImage('2');
end;

procedure TFormFichaEspecie.MenuItem21Click(Sender: TObject);
begin
  RemoveImage('3');
end;

procedure TFormFichaEspecie.MenuItem22Click(Sender: TObject);
begin
  RemoveImage('4');
end;

procedure TFormFichaEspecie.MenuItem23Click(Sender: TObject);
begin
  RemoveImage('5');
end;

procedure TFormFichaEspecie.MenuItem24Click(Sender: TObject);
begin
  RemoveImage('6');
end;

procedure TFormFichaEspecie.MenuItem25Click(Sender: TObject);
begin
  RemoveImage('7');
end;

procedure TFormFichaEspecie.MenuItemBibliografiaClick(Sender: TObject);
begin
  FormBibliografia.Show;
end;

procedure TFormFichaEspecie.MenuItemCloseClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFormFichaEspecie.PageControlFichaChange(Sender: TObject);
begin
  if Dados.DatabaseMineralFileName <> EmptyStr then
  begin
    if Trim(ListboxMInerais.GetSelectedText) <> EmptyStr then
    begin
      case PageControlFicha.TabIndex of
        3:
        begin
          self.ImageCristalografia1.Picture.Graphic :=
            SelectBlobFieldToJPEGImage('minerais', 'imagem6',
            ListboxMinerais.GetSelectedText, EmptyStr, EmptyStr, EmptyStr);
          self.ImageCristalografia2.Picture.Graphic :=
            SelectBlobFieldToJPEGImage('minerais', 'imagem7',
            ListboxMinerais.GetSelectedText, EmptyStr, EmptyStr, EmptyStr);
        end;
        4:
        begin
          self.ImagemAmpliada.Picture.Graphic :=
            SelectBlobFieldToJPEGImage('minerais', 'imagem' +
            Imagem_Selecionada, ListboxMinerais.GetSelectedText,
            EmptyStr, EmptyStr, EmptyStr);
        end;
      end;
    end
    else
    begin
      //vai dar erro se nao tiver sido criado os campos mineralogiaimagem6 e 7
      self.ImagemAmpliada.Picture.Graphic :=
        SelectBlobFieldToJPEGImage('mineralogia', 'mineralogiaimagem' +
          Imagem_Selecionada, EmptyStr,
            EmptyStr, EmptyStr, MineralogyName);
    end;
  end;
end;

procedure TFormFichaEspecie.ToolButtonAddImageClick(Sender: TObject);
begin
  if Dados.DatabaseMineralFileName <> EmptyStr then
  begin
    if Dados.ChooseDatabase('mineral', Dados.DatabaseMineralFileName) then
    begin
      if (Trim(EditNomeMineral.Text) <> EmptyStr) then
        AddMineralImage('minerais',Imagem_Selecionada)
      else
        AddMineralImage('mineralogia',Imagem_Selecionada)
    end
    else ShowMessage(Lang.TheSelectedDatabaseIsNotValid);
  end
  else ShowMessage(Lang.NoDatabaseSelected);
end;

procedure TFormFichaEspecie.ToolButtonBibliografiaClick(Sender: TObject);
begin
  FormBibliografia.Show;
end;

procedure TFormFichaEspecie.ToolButtonLanguageClick(Sender: TObject);
begin
  FormLanguage.Show;
end;

procedure TFormFichaEspecie.ToolButtonRemoveImageClick(Sender: TObject);
begin
  RemoveImage(Imagem_Selecionada);
  RefreshImages;
end;

function TFormFichaEspecie.AtualizarLista: boolean;
var
  SelectSQL: string;
begin
  ListboxMinerais.Clear;
  SelectSQL :=
    'Select nome, formula, classe, subclasse, grupo, subgrupo, ocorrencia, associacao, ';
  SelectSQL := SelectSQL + ' distincao, alteracao, aplicacao, dureza_min, dureza_max, ';
  SelectSQL := SelectSQL +
    ' densidade_min, densidade_max, cor, traco, brilho, clivagem, fratura, magnetismo, ';
  SelectSQL := SelectSQl +
    ' luminescencia, difaneidade, sinal_optico, indice_refracao, angulo, cor_interferencia, ';
  SelectSQL := SelectSQL +
    ' cor_lamina, sinal_elongacao, birrefringencia, relevo, extincao, ';
  SelectSQL := SelectSQL + ' sistema, classe_cristalina, h_m, habito FROM minerais ';

  if (ComboboxClasse.Text = EmptyStr) then
  begin
    if (ComboboxSubclasse.Text = EmptyStr) then
    begin
      if (ComboboxGrupo.Text = EmptyStr) then
      begin
        if (ComboboxSubgrupo.Text = emptystr) then
        begin     //nenhum combobox selecionado   1
          SelectSQL :=
            SelectSQL + ' WHERE (dureza_min >= "' + comboboxDureza_min.Text +
            '" and dureza_max <= "' + comboboxdureza_max.Text +
            '" and densidade_min >= "' + EditFiltroDens_min.Text +
            '" and densidade_max<= "' + EditFiltroDens_Max.Text +
            '") ORDER BY ' + DefinirOrdem + ';';
        end
        else
        begin  //combobox subgrupos    2
          SelectSQL :=
            SelectSQL + ' WHERE (subgrupo = "' + ComboboxSubgrupo.Text +
            '" and dureza_min >= "' + comboboxDureza_min.Text +
            '" and dureza_max <= "' + comboboxdureza_max.Text +
            '" and densidade_min >= "' + EditFiltroDens_min.Text +
            '" and densidade_max<= "' + EditFiltroDens_Max.Text +
            '") ORDER BY' + DefinirOrdem + ';';
        end;
      end
      else
      begin
        if (ComboboxSubgrupo.Text = emptystr) then
        begin     // combobox grupos   3
          SelectSQL :=
            SelectSQL + ' WHERE (grupo = "' + ComboboxGrupo.Text +
            '" and dureza_min >= "' + comboboxDureza_min.Text +
            '" and dureza_max <= "' + comboboxdureza_max.Text +
            '" and densidade_min >= "' + EditFiltroDens_min.Text +
            '" and densidade_max<= "' + EditFiltroDens_Max.Text +
            '") ORDER BY ' + DefinirOrdem + ';';
        end
        else
        begin     //combobox BGRALabelGrupo e subgrupo   4
          SelectSQL :=
            SelectSQL + ' WHERE (grupo = "' + ComboboxGrupo.Text +
            '" and subgrupo = "' + ComboboxSubgrupo.Text +
            '" and dureza_min >= "' + comboboxDureza_min.Text +
            '" and dureza_max <= "' + comboboxdureza_max.Text +
            '" and densidade_min >= "' + EditFiltroDens_min.Text +
            '" and densidade_max<= "' + EditFiltroDens_Max.Text +
            '") ORDER BY ' + DefinirOrdem + ';';
        end;
      end;
    end
    else
    begin
      if (ComboboxGrupo.Text = emptystr) then
      begin
        if (ComboboxSubgrupo.Text = emptystr) then
        begin           //combobox subclasse 5
          SelectSQL :=
            SelectSQL + ' WHERE (subclasse = "' + ComboboxSubclasse.Text +
            '" and dureza_min >= "' + comboboxDureza_min.Text +
            '" and dureza_max <= "' + comboboxdureza_max.Text +
            '" and densidade_min >= "' + EditFiltroDens_min.Text +
            '" and densidade_max<= "' + EditFiltroDens_Max.Text +
            '") ORDER BY ' + DefinirOrdem + ';';
        end
        else
        begin  // combobox subclasse e subgrupo  6
          SelectSQL :=
            SelectSQL + ' WHERE (subclasse = "' + ComboboxSubclasse.Text +
            '" and subgrupo = "' + ComboboxSubgrupo.Text +
            '" and dureza_min >= "' + comboboxDureza_min.Text +
            '" and dureza_max <= "' + comboboxdureza_max.Text +
            '" and densidade_min >= "' + EditFiltroDens_min.Text +
            '" and densidade_max<= "' + EditFiltroDens_Max.Text +
            '") ORDER BY ' + DefinirOrdem + ';';
        end;
      end
      else
      begin
        if (ComboboxSubgrupo.Text = emptystr) then
        begin   //combobox subclasse e BGRALabelGrupo   7
          SelectSQL :=
            SelectSQL + ' WHERE (subclasse = "' + ComboboxSubclasse.Text +
            '" and grupo ="' + ComboboxGrupo.Text + '" and dureza_min >= "' +
            comboboxDureza_min.Text + '" and dureza_max <= "' +
            comboboxdureza_max.Text + '" and densidade_min >= "' +
            EditFiltroDens_min.Text + '" and densidade_max<= "' +
            EditFiltroDens_Max.Text + '") ORDER BY ' + DefinirOrdem + ';';
        end
        else
        begin   //subclasse BGRALabelGrupo subgrupo      8
          SelectSQL :=
            SelectSQL + ' WHERE (subclasse = "' + ComboboxSubclasse.Text +
            '" and grupo = "' + ComboboxGrupo.Text + '" and subgrupo = "' +
            ComboboxSubgrupo.Text + '" and dureza_min >= "' +
            comboboxDureza_min.Text + '" and dureza_max <= "' +
            comboboxdureza_max.Text + '" and densidade_min >= "' +
            EditFiltroDens_min.Text + '" and densidade_max<= "' +
            EditFiltroDens_Max.Text + '") ORDER BY ' + DefinirOrdem + ';';
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
          SelectSQL :=
            SelectSQL + ' WHERE (classe = "' + ComboboxClasse.Text +
            '" and dureza_min >= "' + comboboxDureza_min.Text +
            '" and dureza_max <= "' + comboboxdureza_max.Text +
            '" and densidade_min >= "' + EditFiltroDens_min.Text +
            '" and densidade_max<= "' + EditFiltroDens_Max.Text +
            '") ORDER BY ' + DefinirOrdem + ';';
        end
        else    //classe subgrupos    10
        begin
          SelectSQL :=
            SelectSQL + ' WHERE (classe = "' + ComboboxClasse.Text +
            '" and subgrupo = "' + ComboboxSubgrupo.Text +
            '" and dureza_min >= "' + comboboxDureza_min.Text +
            '" and dureza_max <= "' + comboboxdureza_max.Text +
            '" and densidade_min >= "' + EditFiltroDens_min.Text +
            '" and densidade_max<= "' + EditFiltroDens_Max.Text +
            '") ORDER BY ' + DefinirOrdem + ';';
        end;
      end
      else
      begin      //classe grupos    11
        if (ComboboxSubgrupo.Text = emptystr) then
        begin
          SelectSQL :=
            SelectSQL + ' WHERE (classe = "' + ComboboxClasse.Text +
            '" and grupo = "' + ComboboxGrupo.Text + '" and dureza_min >= "' +
            comboboxDureza_min.Text + '" and dureza_max <= "' +
            comboboxdureza_max.Text + '" and densidade_min >= "' +
            EditFiltroDens_min.Text + '" and densidade_max<= "' +
            EditFiltroDens_Max.Text + '") ORDER BY ' + DefinirOrdem + ';';
        end
        else    //classe BGRALabelGrupo subgrupo     12
        begin
          SelectSQL :=
            SelectSQL + ' WHERE (classe = "' + ComboboxClasse.Text +
            '" and grupo = "' + ComboboxGrupo.Text + '" and subgrupo = "' +
            ComboboxSubgrupo.Text + '" and dureza_min >= "' +
            comboboxDureza_min.Text + '" and dureza_max <= "' +
            comboboxdureza_max.Text + '" and densidade_min >= "' +
            EditFiltroDens_min.Text + '" and densidade_max<= "' +
            EditFiltroDens_Max.Text + '") ORDER BY ' + DefinirOrdem + ';';
        end;
      end;
    end
    else
    begin
      if (ComboboxGrupo.Text = emptystr) then
      begin
        if (ComboboxSubgrupo.Text = emptystr) then
        begin   //classe subclasse     13
          SelectSQL :=
            SelectSQL + ' WHERE (classe = "' + ComboboxClasse.Text +
            '" and subclasse = "' + ComboboxSubclasse.Text +
            '" and dureza_min >= "' + comboboxDureza_min.Text +
            '" and dureza_max <= "' + comboboxdureza_max.Text +
            '" and densidade_min >= "' + EditFiltroDens_min.Text +
            '" and densidade_max<= "' + EditFiltroDens_Max.Text +
            '") ORDER BY ' + DefinirOrdem + ';';
        end
        else
        begin    //classe subclasse subgrupo   14
          SelectSQL :=
            SelectSQL + ' WHERE (classe = "' + ComboboxClasse.Text +
            '" and subclasse = "' + ComboboxSubclasse.Text +
            '" and subgrupo = "' + ComboboxSubgrupo.Text +
            '" and dureza_min >= "' + comboboxDureza_min.Text +
            '" and dureza_max <= "' + comboboxdureza_max.Text +
            '" and densidade_min >= "' + EditFiltroDens_min.Text +
            '" and densidade_max<= "' + EditFiltroDens_Max.Text +
            '") ORDER BY ' + DefinirOrdem + ';';
        end;
      end
      else
      begin   //classe subclasse BGRALabelGrupo      15
        if (ComboboxSubgrupo.Text = emptystr) then
        begin
          SelectSQL :=
            SelectSQL + ' WHERE (classe = "' + ComboboxClasse.Text +
            '" and subclasse = "' + ComboboxSubclasse.Text +
            '" and grupo = "' + ComboboxGrupo.Text + '" and dureza_min >= "' +
            comboboxDureza_min.Text + '" and dureza_max <= "' +
            comboboxdureza_max.Text + '" and densidade_min >= "' +
            EditFiltroDens_min.Text + '" and densidade_max<= "' +
            EditFiltroDens_Max.Text + '") ORDER BY ' + DefinirOrdem + ';';
        end
        else    //classe subclasse BGRALabelGrupo subgrupo    16
        begin
          SelectSQL :=
            SelectSQL + ' WHERE (classe = "' + ComboboxClasse.Text +
            '" and subclasse = "' + ComboboxSubclasse.Text +
            '" and grupo = "' + ComboboxGrupo.Text + '" and subgrupo = "' +
            ComboboxSubgrupo.Text + '" and dureza_min >= "' +
            comboboxDureza_min.Text + '" and dureza_max <= "' +
            comboboxdureza_max.Text + '" and densidade_min >= "' +
            EditFiltroDens_min.Text + '" and densidade_max<= "' +
            EditFiltroDens_Max.Text + '") ORDER BY ' + DefinirOrdem + ';';
        end;
      end;
    end;
  end;

  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(SelectSQL);
  if Dados.TableMinerals.Count > 0 then
    if Dados.TableMinerals.MoveFirst then
    begin
      Num := 0;
      ProgressBar1.Max := 100;
      ProgressBar1.Position := 0;
      while (not Dados.TableMinerals.EOF) do
      begin
        if Filtro_Nome = False then
          if Filtro_Ocorrencia = False then
            if Filtro_Associacao = False then
              if Filtro_Cor = False then
                if Filtro_Brilho = False then
                  ListboxMinerais.Items.add(Dados.TableMinerals.FieldByName['nome']);
        Dados.TableMinerals.Next;
        Inc(Num);
        ProgressBar1.Position := Trunc(100 * (Num / Dados.TableMinerals.RowCount));
      end;
      ProgressBar1.Position := 0;
    end;
  if ListboxMinerais.Count=0 then
    BCLabelRegistros.Caption := 'Nenhum Registro'
  else
  if ListboxMinerais.Count = 1 then
    BCLabelRegistros.Caption := '1 Registro'
  else
    BCLabelRegistros.Caption := IntToStr(ListboxMinerais.Count) + ' Registros';
end;

function TFormFichaEspecie.Filtro_Nome: boolean;
var
  eliminar: boolean;
  I, K: integer;
  StrAux: string;
begin
  Eliminar := True;
  if (EditNome.Text = Emptystr) then
  begin
    Eliminar := False;
  end
  else
  begin
    if Dados.TableMinerals.Count > 0 then
      if (Dados.TableMinerals.FieldByName['nome'] <> EmptyStr) then
      begin
        K := (Length(EditNome.Text));
        for I := 0 to K do
        begin
          StrAux := Copy(Dados.TableMinerals.FieldByName['nome'], I, K);
          if (UpCase(StrAux) = UpCase(EditNome.Text)) then
            Eliminar := False;
        end;
      end;
  end;
  Result := Eliminar;
end;

function TFormFichaEspecie.Filtro_Ocorrencia: boolean;
var
  Eliminar: boolean;
  StrAux: string;
  I, K: integer;
begin
  Eliminar := True;
  if EditFiltroOcorrencia.Text = EmptyStr then
  begin
    Eliminar := False;
  end
  else
  begin
    if Dados.TableMinerals.Count > 0 then
    begin
      if (Dados.TableMinerals.FieldByName['ocorrencia'] <> EmptyStr) then
      begin
        K := Length(EditFiltroOcorrencia.Text);
        for I := 0 to K do
        begin
          StrAux := Copy(Dados.TableMinerals.FieldByName['ocorrencia'], I, K);
          if (UpCase(StrAux) = UpCase(EditFiltroOcorrencia.Text)) then
            Eliminar := False;
        end;
      end;
    end;
    Result := Eliminar;
  end;
end;

function TFormFichaEspecie.Filtro_Associacao: boolean;
var
  Eliminar: boolean;
  StrAux: string;
  I, K: integer;
begin
  Eliminar := True;
  if EditFiltroAssociacao.Text = EmptyStr then
  begin
    Eliminar := False;
  end
  else
  begin
    if Dados.TableMinerals.Count > 0 then
    begin
      if (Dados.TableMinerals.FieldByName['associacao'] <> EmptyStr) then
      begin
        K := Length(EditFiltroAssociacao.Text);
        for I := 0 to K do
        begin
          StrAux := Copy(Dados.TableMinerals.FieldByName['associacao'], I, K);
          if (UpCase(StrAux) = UpCase(EditFiltroAssociacao.Text)) then
            Eliminar := False;
        end;
      end;
    end;
    Result := Eliminar;
  end;
end;

function TFormFichaEspecie.Filtro_Cor: boolean;
var
  Eliminar: boolean;
  StrAux: string;
  I, K: integer;
begin
  Eliminar := True;
  if EditFiltroCor.Text = EmptyStr then
  begin
    Eliminar := False;
  end
  else
  begin
    if Dados.TableMinerals.Count > 0 then
    begin
      if (Dados.TableMinerals.FieldByName['cor'] <> EmptyStr) then
      begin
        K := Length(EditFiltroCor.Text);
        for I := 0 to K do
        begin
          StrAux := Copy(Dados.TableMinerals.FieldByName['cor'], I, K);
          if (UpCase(StrAux) = UpCase(EditFiltroCor.Text)) then
            Eliminar := False;
        end;
      end;
    end;
    Result := Eliminar;
  end;
end;

function TFormFichaEspecie.Filtro_Brilho: boolean;
var
  Eliminar: boolean;
  StrAux: string;
  I, K: integer;
begin
  Eliminar := True;
  if EditFiltroBrilho.Text = EmptyStr then
  begin
    Eliminar := False;
  end
  else
  begin
    if Dados.TableMinerals.Count > 0 then
    begin
      if (Dados.TableMinerals.FieldByName['brilho'] <> EmptyStr) then
      begin
        K := Length(EditFiltroBrilho.Text);
        for I := 0 to K do
        begin
          StrAux := Copy(Dados.TableMinerals.FieldByName['brilho'], I, K);
          if (UpCase(StrAux) = UpCase(EditFiltroBrilho.Text)) then
            Eliminar := False;
        end;
      end;
    end;
    Result := Eliminar;
  end;
end;

function TFormFichaEspecie.MineralogyName: string;
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

procedure TFormFichaEspecie.AddMineralImage(Tipo:String; Num: char);
begin
  OpenPictureDialog1.FileName := emptystr;
  if OpenPictureDialog1.Execute then
  if (OpenPictureDialog1.FileName <> emptystr) then
  begin
    if Tipo = 'minerais' then
    begin
      AddBlobFieldMineral(Dados.DatabaseMineralFileName, OpenPictureDialog1.FileName,
        'minerais', 'imagem' + Num, EditNomeMineral.Text);
    end
    else
    if Tipo = 'mineralogia' then
    begin
      AddBlobFieldMineral(Dados.DatabaseMineralFileName, OpenPictureDialog1.FileName,
        'mineralogia', 'mineralogiaimagem' + Num, MineralogyName);
    end;
    Imagem_Selecionada := Num;
    RefreshImages;
  end;
end;

procedure TFormFichaEspecie.EditingMode(Mode: boolean);
begin
  EditFormula.Enabled := Mode;
  EditNomeMineral.Enabled := Mode;
  EditClasse.Enabled := Mode;
  EditSubClasse.Enabled := Mode;
  EditGrupo.Enabled := Mode;
  EditSubGrupo.Enabled := Mode;
  MemoOcorrencia.Enabled := Mode;
  MemoAssociacao.Enabled := Mode;
  MemoDistincao.Enabled := Mode;
  MemoAlteracao.Enabled := Mode;
  MemoAplicacao.Enabled := Mode;

  EditDurezaMin.Enabled := Mode;
  EditDurezaMax.Enabled := Mode;
  EditDensidadeMin.Enabled := Mode;
  EditDensidadeMax.Enabled := Mode;

  MemoCor.Enabled := Mode;
  MemoTraco.Enabled := Mode;
  MemoBrilho.Enabled := Mode;
  MemoClivagem.Enabled := Mode;
  MemoFratura.Enabled := Mode;
  MemoMagnetismo.Enabled := Mode;
  MemoLuminescencia.Enabled := Mode;

  MemoDiafaneidade.Enabled := Mode;
  MemoSinalOptico.Enabled := Mode;
  MemoIndiceRefracao.Enabled := Mode;
  MemoAngulo.Enabled := Mode;
  MemoInterferencia.Enabled := Mode;
  MemoCorLamina.Enabled := Mode;
  MemoSinalElongacao.Enabled := Mode;
  MemoBirrefringencia.Enabled := Mode;
  MemoRelevo.Enabled := Mode;
  MemoExtincao.Enabled := Mode;

  EditSistema.Enabled := Mode;
  EditClasse_Cristalina.Enabled := Mode;
  EditH_M.Enabled := Mode;
  MemoHabito.Enabled := Mode;
end;

procedure TFormFichaEspecie.ChangeLanguage;
begin
  //self.Caption:=Lang.Minerals;
    ToolButtonDatabase.Hint:=Lang.Database;
    ToolButtonHelp.Hint:=Lang.Help;
    MenuItem1.Caption:=Lang.StrFile;
    MenuItem2.Caption:=Lang.Edit;
    MenuItem3.Caption:=Lang.Exhibit;
    MenuItemClose.Caption:=Lang.Close;
    MenuItem5.Caption:=Lang.ShowFilter;
    MenuItem6.Caption:=Lang.ShowImages;
    MenuItemConfiguracao.Caption:=Lang.Configuration;
    MenuItemPrint.Caption:=Lang.Print;
    MenuItemAddImage.Caption:=Lang.Add;
    MenuItemRemoveImage.Caption:=Lang.Remove;
    MenuItemAddImage1.Caption:=Lang.Image+' 1';
    MenuItemAddImage2.Caption:=Lang.Image+' 2';
    MenuItem14.Caption:=Lang.Image+' 3';
    MenuItem15.Caption:=Lang.Image+' 4';
    MenuItem16.Caption:=Lang.Image+' 5';
    MenuItem17.Caption:=Lang.Image+' 6';
    MenuItem18.Caption:=Lang.Image+' 7';
    MenuItemRemImage1.Caption:=Lang.Image+' 1';
    MenuItemRemImage2.Caption:=Lang.Image+' 2';
    MenuItem21.Caption:=Lang.Image+' 3';
    MenuItem22.Caption:=Lang.Image+' 4';
    MenuItem23.Caption:=Lang.Image+' 5';
    MenuItem24.Caption:=Lang.Image+' 6';
    MenuItem25.Caption:=Lang.Image+' 7';
    MenuItemBibliografia.Caption:=Lang.Bibliography;

    ToolButtonAdd.Hint:=Lang.Add;
    ToolButtonRemove.Hint:=Lang.Remove;
    ToolButtonPrint.Hint:=Lang.Print;
    ToolButtonShowFilter.Hint:=Lang.ShowFilter;
    ToolButtonShowImages.Hint:=Lang.ShowImages;

    BCLabelOrder.Caption:=Lang.Order;
    RadioButton1.Caption:=Lang.Alphabetical;
    RadioButton2.Caption:=Lang.Hardness;
    RadioButton3.Caption:=Lang.Density;
    BCLabelMinerals.Caption:=Lang.Minerals;
    //colocar strings da contagem de registros

    BCLabelName.Caption:=Lang.Name;
    BCLabelClass.Caption:=Lang.MineralClass;
    BCLabelSubClass.Caption:=Lang.Subclass;
    BCLabelGroup.Caption:=Lang.Group;
    BCLabelSubgroup.Caption:=Lang.Subgroup;
    BCLabelHardness.Caption:=Lang.Hardness;
    BCLabelDensity.Caption:=Lang.Density;
    BCLabelOcorrencia.Caption:=Lang.Occurrence;
    BCLabelAssociacao.Caption:=Lang.Association;
    BCLabelCor.Caption:=Lang.Color;
    Label33.Caption:=Lang.Minimum;
    Label34.Caption:=Lang.Maximum;
    Label35.Caption:=Lang.Minimum;
    Label36.Caption:=Lang.Maximum;

    TabSheetInf_Gerais.Caption:=Lang.GeneralInformation;
    TabSheetProp_fisicas.Caption:=Lang.PhysicalProperties;
    TabSheetOticas.Caption:=Lang.OpticalProperties;
    TabSheetCristalografia.Caption:=Lang.Crystallography;
    TabSheetImagem.Caption:=Lang.Image;

    LabelNome.Caption:=Lang.Name;
    LabelComposicao.Caption:=Lang.Composition;
    LabelClasse.Caption:=Lang.MineralClass;
    LabelSubClasse.Caption:=Lang.Subclass;
    LabelGrupo.Caption:=Lang.Group;
    LabelSubgrupo.Caption:=Lang.Subgroup;
    LabelOcorrencia.Caption:=Lang.Occurrence;
    LabelAssociacao.Caption:=Lang.Association;
    LabelDistincao.Caption:=Lang.Distinction;
    LabelAlteracao.Caption:=Lang.Alteration;
    LabelAplicacao.Caption:=Lang.Usage;

    GroupboxDureza.Caption:=Lang.Edit;
    GroupboxDensidade.Caption:=Lang.Edit;
    LabelHardness.Caption:=Lang.Hardness;
    LabelDensity.Caption:=Lang.Density;
    LabelCor.Caption:=Lang.Color;
    LabelTraco.Caption:=Lang.Streak;
    LabelBrilho.Caption:=Lang.Luster;
    LabelClivagem.Caption:=Lang.Cleavage;
    LabelFratura.Caption:=Lang.Fracture;
    LabelMagnetismo.Caption:=Lang.Magnetism;
    LabelLuminescencia.Caption:=Lang.Luminescence;

    LabelDiafaneidade.Caption:=Lang.Diaphanousness;
    LabelSinal_Optico.Caption:=Lang.OpticalSignal;
    LabelIndice_Refracao.Caption:=Lang.RefractiveIndex;
    LabelAngulo_2V.Caption:=Lang.Angle2V;
    LabelCor_Interferencia.Caption:=Lang.InterferenceColor;
    LabelCor_Lamina.Caption:=Lang.BladeColor;
    LabelSinal_Elongacao.Caption:=Lang.SignElongation;
    LabelBirrefringencia.Caption:=Lang.Birefringence;
    LabelRelevo.Caption:=Lang.Relief;
    LabelSistema_Cristalino.Caption:=Lang.CrystallineSystem;
    LabelClasse_Cristalina.Caption:=Lang.CrystalineClass;
    LabelSimbologia.Caption:=Lang.Symbology;
    LabelHabito.Caption:=Lang.Habit;

    ToolbuttonAddImage.Hint:=Lang.AddImage;
    ToolButtonRemoveImage.Hint:=Lang.RemoveImage;
end;

procedure TFormFichaEspecie.Image1OnClick(Sender: TObject);
begin
  Imagem_Selecionada := '1';
  self.ImagemAmpliada.Picture.Graphic := Image1.Picture.Graphic;
  RefreshHeaderControl(Imagem_Selecionada);
end;

procedure TFormFichaEspecie.Image2OnClick(Sender: TObject);
begin
  Imagem_Selecionada := '2';
  self.ImagemAmpliada.Picture.Graphic := Image2.Picture.Graphic;
  RefreshHeaderControl(Imagem_Selecionada);
end;

procedure TFormFichaEspecie.Image3OnClick(Sender: TObject);
begin
  Imagem_Selecionada := '3';
  self.ImagemAmpliada.Picture.Graphic := Image3.Picture.Graphic;
  RefreshHeaderControl(Imagem_Selecionada);
end;

procedure TFormFichaEspecie.Image4OnClick(Sender: TObject);
begin
  Imagem_Selecionada := '4';
  self.ImagemAmpliada.Picture.Graphic := Image4.Picture.Graphic;
  RefreshHeaderControl(Imagem_Selecionada);
end;

procedure TFormFichaEspecie.Image5OnClick(Sender: TObject);
begin
  Imagem_Selecionada := '5';
  self.ImagemAmpliada.Picture.Graphic := Image5.Picture.Graphic;
  RefreshHeaderControl(Imagem_Selecionada);
end;

procedure TFormFichaEspecie.Image6OnClick(Sender: TObject);
begin
  Imagem_Selecionada := '6';
  self.ImagemAmpliada.Picture.Graphic := Image6.Picture.Graphic;
  RefreshHeaderControl(Imagem_Selecionada);
end;

procedure TFormFichaEspecie.Image7OnClick(Sender: TObject);
begin
  Imagem_Selecionada := '7';
  self.ImagemAmpliada.Picture.Graphic := Image7.Picture.Graphic;
  RefreshHeaderControl(Imagem_Selecionada);
end;

function TFormFichaEspecie.DefinirOrdem: string;
begin
  if RadioButton1.Checked then
    Result := ' nome ASC'
  else
  if RadioButton2.Checked then
    Result := '(1/(dureza_max+1))'
  else
  if RadioButton3.Checked then
    Result := '(1/(densidade_max+1))';
end;

procedure TFormFichaEspecie.Preenche_Classes;
begin
  ComboBoxClasse.Items.Clear;
  ComboBoxClasse.Items.add(emptystr);
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
    'SELECT DISTINCT classe FROM minerais ORDER BY classe ASC');
  if (Dados.TableMinerals.Count > 0) then
    if Dados.TableMinerals.MoveFirst then
    begin
      while (not Dados.TableMinerals.EOF) do
      begin
        if Trim(Dados.TableMinerals.FieldByName['classe']) <> EmptyStr then
          ComboBoxClasse.Items.Add(Dados.TableMinerals.FieldByName['classe']);
        Dados.TableMinerals.Next;
      end;
    end;
end;

procedure TFormFichaEspecie.Preenche_Subclasses;
begin
  ComboBoxSubClasse.Items.Clear;
  ComboBoxSubClasse.Items.Add(EmptyStr);
  if (ComboBoxClasse.Text = emptystr) then
  begin
    Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
      'SELECT DISTINCT subclasse FROM minerais ORDER BY subclasse ASC');
  end
  else
  begin
    Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
      'SELECT DISTINCT subclasse FROM minerais WHERE( classe = "' +
      ComboBoxClasse.Text + '") ORDER BY subclasse ASC');
  end;
  if (Dados.TableMinerals.Count > 0) then
    if Dados.TableMinerals.MoveFirst then
    begin
      while (not Dados.TableMinerals.EOF) do
      begin
        if Trim(Dados.TableMinerals.FieldByName['subclasse']) <> EmptyStr then
          ComboBoxSubClasse.Items.Add(Dados.TableMinerals.FieldByName['subclasse']);
        Dados.TableMinerals.Next;
      end;
    end;
end;

procedure TFormFichaEspecie.Preenche_Grupos;
begin
  ComboBoxGrupo.Items.Clear;
  ComboBoxGrupo.Items.add(EmptyStr);
  if (ComboBoxClasse.Text = emptystr) then
  begin
    if (ComboBoxSubClasse.Text = emptystr) then
    begin
      Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
        'SELECT DISTINCT grupo FROM minerais ORDER BY grupo ASC');
    end
    else
    begin
      Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
        'SELECT DISTINCT grupo FROM minerais WHERE (subclasse = "' +
        ComboBoxSubClasse.Text + '")ORDER BY grupo ASC');
    end;
  end
  else
  begin
    if (ComboBoxSubClasse.Text = EmptyStr) then
    begin
      Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
        'SELECT DISTINCT grupo from minerais WHERE (classe = "' +
        ComboBoxClasse.Text + '") ORDER BY grupo ASC');
    end
    else
    begin
      Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
        'SELECT DISTINCT grupo FROM minerais WHERE( classe = "' +
        ComboBoxClasse.Text + '" and subclasse = "' + ComboBoxSubClasse.Text +
        '")ORDER BY grupo ASC');
    end;
  end;

  if (Dados.TableMinerals.Count > 0) then
    if Dados.TableMinerals.MoveFirst then
    begin
      while (not Dados.TableMinerals.EOF) do
      begin
        if Trim(Dados.TableMinerals.FieldByName['grupo']) <> EmptyStr then
          ComboBoxGrupo.Items.Add(Dados.TableMinerals.FieldByName['grupo']);
        Dados.TableMinerals.Next;
      end;
    end;
end;

procedure TFormFichaEspecie.Preenche_SubGrupos;
begin
  ComboboxSubgrupo.Items.Clear;
  ComboBoxSubgrupo.Items.add(EmptyStr);
  if ComboBoxClasse.Text = emptystr then
  begin
    if (ComboBoxSubClasse.Text = emptystr) then
    begin
      if (ComboBoxGrupo.Text = emptystr) then
      begin
        Dados.TableMinerals :=
          Dados.DatabaseMinerals.GetTable(
          'SELECT DISTINCT subgrupo FROM minerais ORDER BY subgrupo ASC');
      end
      else
      begin
        Dados.TableMinerals :=
          Dados.DatabaseMinerals.GetTable(
          'SELECT DISTINCT subgrupo FROM minerais WHERE(grupo = "' +
          ComboBoxGrupo.Text + '") ORDER BY subgrupo ASC');
      end;
    end
    else
    begin
      if (ComboBoxGrupo.Text = emptystr) then
      begin
        Dados.TableMinerals :=
          Dados.DatabaseMinerals.GetTable(
          'SELECT DISTINCT subgrupo FROM minerais WHERE(subclasse = "' +
          ComboBoxSubClasse.Text + '") ORDER BY subgrupo ASC');
      end
      else
      begin
        Dados.TableMinerals :=
          Dados.DatabaseMinerals.GetTable(
          'SELECT DISTINCT subgrupo FROM minerais WHERE(subclasse = "' +
          ComboBoxSubclasse.Text + '" and grupo = "' + ComboBoxGrupo.Text +
          '") ORDER BY subgrupo ASC');
      end;
    end;
  end
  else
  begin
    if (ComboBoxSubClasse.Text = emptystr) then
    begin
      if (ComboBoxGrupo.Text = emptystr) then
      begin
        Dados.TableMinerals :=
          Dados.DatabaseMinerals.GetTable(
          'SELECT DISTINCT subgrupo FROM minerais WHERE(classe = "' +
          ComboBoxClasse.Text + '") ORDER BY subgrupo ASC');
      end
      else
      begin
        Dados.TableMinerals :=
          Dados.DatabaseMinerals.GetTable(
          'SELECT DISTINCT subgrupo FROM minerais WHERE(classe= "' +
          ComboBoxClasse.Text + '" and grupo= "' + ComboBoxGrupo.Text +
          '") ORDER BY subgrupo ASC');
      end;
    end
    else
    begin
      if (ComboBoxGrupo.Text = emptystr) then
      begin
        Dados.TableMinerals :=
          Dados.DatabaseMinerals.GetTable(
          'SELECT DISTINCT subgrupo FROM minerais WHERE(classe = "' +
          ComboBoxClasse.Text + '" and subclasse = "' + ComboBoxSubClasse.Text +
          '") ORDER BY subgrupo ASC');
      end
      else
      begin
        Dados.TableMinerals :=
          Dados.DatabaseMinerals.GetTable(
          'SELECT DISTINCT subgrupo FROM minerais WHERE(classe = "' +
          ComboBoxClasse.Text + '" and subclasse = "' + ComboBoxSubClasse.Text +
          '" and grupo = "' + ComboBoxGrupo.Text + '")ORDER BY subgrupo ASC');
      end;
    end;
  end;

  if (Dados.TableMinerals.Count > 0) then
    if Dados.TableMinerals.MoveFirst then
    begin
      while (not Dados.TableMinerals.EOF) do
      begin
        if Trim(Dados.TableMinerals.FieldByName['subgrupo']) <> EmptyStr then
          ComboBoxSubgrupo.Items.Add(Dados.TableMinerals.FieldByName['subgrupo']);
        Dados.TableMinerals.Next;
      end;
    end;
end;

procedure TFormFichaEspecie.RefreshImages;
var
  MS: TMemoryStream;
  I, ImagesNumber: integer;
begin
  if PageControlFicha.TabIndex = 4 then
    self.ImagemAmpliada.Picture.Graphic :=
      SelectBlobFieldToJPEGImage('minerais', 'imagem1',
      ListboxMinerais.GetSelectedText, EmptyStr, EmptyStr, EmptyStr);
  if PageControlFIcha.TabIndex = 3 then
  begin
    self.ImageCristalografia1.Picture.Graphic :=
      SelectBlobFieldToJPEGImage('minerais', 'imagem6',
      ListboxMinerais.GetSelectedText, EmptyStr, EmptyStr, EmptyStr);
    self.ImageCristalografia2.Picture.Graphic :=
      SelectBlobFieldToJPEGImage('minerais', 'imagem7',
      ListboxMinerais.GetSelectedText, EmptyStr, EmptyStr, EmptyStr);
  end;
  if ScrollBox8.Visible then
  begin
    ImagesNumber := -1;

    ScrollBox8.UpdateScrollbars;
    if (ListBoxMinerais.GetSelectedText <> EmptyStr) then
    begin
      //if (SelectBlobFieldToJPEGImage('minerais', 'imagem1',
      //ListboxMinerais.GetSelectedText, EmptyStr, EmptyStr, EmptyStr) <> nil)
      Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
        'SELECT imagem1, ' +
        'imagem2, imagem3, imagem4, imagem5, imagem6, imagem7 FROM minerais ' +
        ' WHERE nome = "' + EditNomeMineral.Text + '" ;');
      Memo1.append('_____________');
      for I := 1 to 7 do
      begin
        if Dados.TableMinerals.RowCount > 0 then
        begin
          MS := Dados.TableMinerals.FieldAsBlob(
            Dados.TableMinerals.FieldIndex['imagem' + IntToStr(I)]);
          if MS <> nil then
          begin
            Image[I].ToCreate := True;
            if I < 3 then Memo1.Append('Imagem'+IntToStr(i)+ ' diferente de nil');
          end
          else
          begin
            Image[I].ToCreate := False;
            if I < 3 then Memo1.Append('Imagem'+IntToStr(i)+ ' = nil');
          end;
        end
        else
        begin
          Image[I].ToCreate := False;
          Memo1.Append('RowCount < 0 ');
        end;
      end;
      if Image[1].ToCreate then
      begin
        Inc(ImagesNumber);
        if Image[1].Created then
        begin
          Memo1.Append('Imagem 1 modificada');
          Image1.Picture.Graphic :=
            SelectBlobFieldToJPEGImage('minerais', 'imagem1',
            ListboxMinerais.GetSelectedText, EmptyStr, EmptyStr, EmptyStr)
        end
        else
        begin
          Image1 := TImage.Create(nil);
          with Image1 do
          begin
            Parent := ScrollBox8;
            Left := ImagesLeft;
            Top := Image1Top;
            Width := ImagesWidth;
            Height := ImagesHeight;
            Proportional := True;
            Center := True;
            AntialiasingMode := amOn;
            OnClick := @Image1OnClick;
            Picture.Graphic :=
              SelectBlobFieldToJPEGImage('minerais', 'imagem1',
              ListboxMinerais.GetSelectedText, EmptyStr, EmptyStr, EmptyStr);
            Image[1].Created := True;
            Memo1.Append('Imagem 1 criada');
          end;
        end;
        Memo1.Append('ImagesNumber: '+Inttostr(ImagesNumber));
      end
      else
      if Image[1].Created then
      begin
        Image1.Picture.Clear;
        Image1.Destroy;
        Image[1].Created := False;
        Memo1.Append('Imagem1 destruida');
      end else Memo1.Append('Imagem1 ja estava destruida');

      if Image[2].ToCreate then
      begin
        Inc(ImagesNumber);
        if Image[2].Created then
        begin
          Memo1.Append('Imagem 2 modificada');
          Image2.Picture.Graphic :=
            SelectBlobFieldToJPEGImage('minerais', 'imagem2',
            ListboxMinerais.GetSelectedText, EmptyStr, EmptyStr, EmptyStr)
        end
        else
        begin
          Image2 := TImage.Create(nil);
          with Image2 do
          begin
            Parent := ScrollBox8;
            Left := ImagesLeft;
            Top := Image1Top + (ImagesNumber * SeparadorImagens);
            Width := ImagesWidth;
            Height := ImagesHeight;
            Proportional := True;
            Center := True;
            AntialiasingMode := amOn;
            OnClick := @Image2OnClick;
            Picture.Graphic :=
              SelectBlobFieldToJPEGImage('minerais', 'imagem2',
              ListboxMinerais.GetSelectedText, EmptyStr, EmptyStr, EmptyStr);
            Image[2].Created := True;
            Memo1.Append('Imagem 2 criada');
          end;
        end;
        Memo1.Append('ImagesNumber: '+Inttostr(ImagesNumber));
      end
      else
      if Image[2].Created then
      begin
        Image2.Picture.Clear;
        Image2.Destroy;
        Image[2].Created := False;
        Memo1.append('imagem2 destruida');
      end else Memo1.Append('Imagem2 ja estava destruida');

      if Image[3].ToCreate then
      begin
        Inc(ImagesNumber);
        if Image[3].Created then
          Image3.Picture.Graphic :=
            SelectBlobFieldToJPEGImage('minerais', 'imagem3',
            ListboxMinerais.GetSelectedText, EmptyStr, EmptyStr, EmptyStr)
        else
        begin
          Image3 := TImage.Create(nil);
          with Image3 do
          begin
            Parent := ScrollBox8;
            Left := ImagesLeft;
            Top := Image1Top + (ImagesNumber * SeparadorImagens);
            Width := ImagesWidth;
            Height := ImagesHeight;
            Proportional := True;
            Center := True;
            AntialiasingMode := amOn;
            OnClick := @Image3OnClick;
            Picture.Graphic :=
              SelectBlobFieldToJPEGImage('minerais', 'imagem3',
              ListboxMinerais.GetSelectedText, EmptyStr, EmptyStr, EmptyStr);
            Image[3].Created := True;
          end;
        end;
      end
      else
      if Image[3].Created then
      begin
        Image3.Picture.Clear;
        Image3.Destroy;
        Image[3].Created := False;
      end;

      if Image[4].ToCreate then
      begin
        Inc(ImagesNumber);
        if Image[4].Created then
          Image4.Picture.Graphic :=
            SelectBlobFieldToJPEGImage('minerais', 'imagem4',
            ListboxMinerais.GetSelectedText, EmptyStr, EmptyStr, EmptyStr)
        else
        begin
          Image4 := TImage.Create(nil);
          with Image4 do
          begin
            Parent := ScrollBox8;
            Left := ImagesLeft;
            Top := Image1Top + (ImagesNumber * SeparadorImagens);
            Width := ImagesWidth;
            Height := ImagesHeight;
            Proportional := True;
            Center := True;
            AntialiasingMode := amOn;
            OnClick := @Image4OnClick;
            Picture.Graphic :=
              SelectBlobFieldToJPEGImage('minerais', 'imagem4',
              ListboxMinerais.GetSelectedText, EmptyStr, EmptyStr, EmptyStr);
            Image[4].Created := True;
          end;
        end;
      end
      else
      if Image[4].Created then
      begin
        Image4.Picture.Clear;
        Image4.Destroy;
        Image[4].Created := False;
      end;

      if Image[5].ToCreate then
      begin
        Inc(ImagesNumber);
        if Image[5].Created then
          Image5.Picture.Graphic :=
            SelectBlobFieldToJPEGImage('minerais', 'imagem5',
            ListboxMinerais.GetSelectedText, EmptyStr, EmptyStr, EmptyStr)
        else
        begin
          Image5 := TImage.Create(nil);
          with Image5 do
          begin
            Parent := ScrollBox8;
            Left := ImagesLeft;
            Top := Image1Top + (ImagesNumber * SeparadorImagens);
            Width := ImagesWidth;
            Height := ImagesHeight;
            Proportional := True;
            Center := True;
            AntialiasingMode := amOn;
            OnClick := @Image5OnClick;
            Picture.Graphic :=
              SelectBlobFieldToJPEGImage('minerais', 'imagem5',
              ListboxMinerais.GetSelectedText, EmptyStr, EmptyStr, EmptyStr);
            Image[5].Created := True;
          end;
        end;
      end
      else
      if Image[5].Created then
      begin
        Image5.Picture.Clear;
        Image5.Destroy;
        Image[5].Created := False;
      end;

      if Image[6].ToCreate then
      begin
        Inc(ImagesNumber);
        if Image[6].Created then
          Image6.Picture.Graphic :=
            SelectBlobFieldToJPEGImage('minerais', 'imagem6',
            ListboxMinerais.GetSelectedText, EmptyStr, EmptyStr, EmptyStr)
        else
        begin
          Image6 := TImage.Create(nil);
          with Image6 do
          begin
            Parent := ScrollBox8;
            Left := ImagesLeft;
            Top := Image1Top + (ImagesNumber * SeparadorImagens);
            Width := ImagesWidth;
            Height := ImagesHeight;
            Proportional := True;
            Center := True;
            AntialiasingMode := amOn;
            OnClick := @Image6OnClick;
            Picture.Graphic :=
              SelectBlobFieldToJPEGImage('minerais', 'imagem6',
              ListboxMinerais.GetSelectedText, EmptyStr, EmptyStr, EmptyStr);
            Image[6].Created := True;
          end;
        end;
      end
      else
      if Image[6].Created then
      begin
        Image6.Picture.Clear;
        Image6.Destroy;
        Image[6].Created := False;
      end;

      if Image[7].ToCreate then
      begin
        Inc(ImagesNumber);
        if Image[7].Created then
          Image7.Picture.Graphic :=
            SelectBlobFieldToJPEGImage('minerais', 'imagem7',
            ListboxMinerais.GetSelectedText, EmptyStr, EmptyStr, EmptyStr)
        else
        begin
          Image7 := TImage.Create(nil);
          with Image7 do
          begin
            Parent := ScrollBox8;
            Left := ImagesLeft;
            Top := Image1Top + (ImagesNumber * SeparadorImagens);
            Width := ImagesWidth;
            Height := ImagesHeight;
            Proportional := True;
            Center := True;
            AntialiasingMode := amOn;
            OnClick := @Image7OnClick;
            Picture.Graphic :=
              SelectBlobFieldToJPEGImage('minerais', 'imagem7',
              ListboxMinerais.GetSelectedText, EmptyStr, EmptyStr, EmptyStr);
            Image[7].Created := True;
          end;
        end;
      end
      else
      if Image[7].Created then
      begin
        Image7.Picture.Clear;
        Image7.Destroy;
        Image[7].Created := False;
      end;

    end
    else
    begin
      ClearFields;
      Dados.TableMinerals := Dados.DatabaseMinerals.GetTable('SELECT * ' +
        'FROM mineralogia WHERE campo = "' + MineralogyName + '" ;');
      for I := 1 to 7 do
      begin
        if Dados.TableMinerals.RowCount > 0 then
        begin
          MS := Dados.TableMinerals.FieldAsBlob(
            Dados.TableMinerals.FieldIndex['mineralogiaimagem' + IntToStr(I)]);
          if MS <> nil then
          begin
            Image[I].ToCreate := True;
          end
          else
          begin
            Image[I].ToCreate := False;
          end;
        end
        else
        begin
          Image[I].ToCreate := False;
        end;
      end;
      if Image[1].ToCreate then
      begin
        Inc(ImagesNumber);
        if Image[1].Created then
          Image1.Picture.Graphic :=
            SelectBlobFieldToJPEGImage('mineralogia', 'mineralogiaimagem1',
            EmptyStr, EmptyStr, EmptyStr, MineralogyName)
        else
        begin
          Image1 := TImage.Create(nil);
          with Image1 do
          begin
            Parent := ScrollBox8;
            Left := ImagesLeft;
            Top := Image1Top;
            Width := ImagesWidth;
            Height := ImagesHeight;
            Proportional := True;
            Center := True;
            AntialiasingMode := amOn;
            OnClick := @Image1OnClick;
            Picture.Graphic :=
              SelectBlobFieldToJPEGImage('mineralogia', 'mineralogiaimagem1',
              EmptyStr, EmptyStr, EmptyStr, MineralogyName);
            Image[1].Created := True;
          end;
        end;
      end
      else
      if Image[1].Created then
      begin
        Image1.Picture.Clear;
        Image1.Destroy;
        Image[1].Created := False;
      end;

      if Image[2].ToCreate then
      begin
        Inc(ImagesNumber);
        if Image[2].Created then
          Image2.Picture.Graphic :=
            SelectBlobFieldToJPEGImage('mineralogia', 'mineralogiaimagem2',
            EmptyStr, EmptyStr, EmptyStr, MineralogyName)
        else
        begin
          Image2 := TImage.Create(nil);
          with Image2 do
          begin
            Parent := ScrollBox8;
            Left := ImagesLeft;
            Top := Image1Top + (ImagesNumber * SeparadorImagens);
            Width := ImagesWidth;
            Height := ImagesHeight;
            Proportional := True;
            Center := True;
            AntialiasingMode := amOn;
            OnClick := @Image2OnClick;
            Picture.Graphic :=
              SelectBlobFieldToJPEGImage('mineralogia', 'mineralogiaimagem2',
              EmptyStr, EmptyStr, EmptyStr, MineralogyName);
            Image[2].Created := True;
          end;
        end;
      end
      else
      if Image[2].Created then
      begin
        Image2.Picture.Clear;
        Image2.Destroy;
        Image[2].Created := False;
      end;

      if Image[3].ToCreate then
      begin
        Inc(ImagesNumber);
        if Image[3].Created then
          Image3.Picture.Graphic :=
            SelectBlobFieldToJPEGImage('mineralogia', 'mineralogiaimagem3',
            EmptyStr, EmptyStr, EmptyStr, MineralogyName)
        else
        begin
          Image3 := TImage.Create(nil);
          with Image3 do
          begin
            Parent := ScrollBox8;
            Left := ImagesLeft;
            Top := Image1Top + (ImagesNumber * SeparadorImagens);
            Width := ImagesWidth;
            Height := ImagesHeight;
            Proportional := True;
            Center := True;
            AntialiasingMode := amOn;
            OnClick := @Image3OnClick;
            Picture.Graphic :=
              SelectBlobFieldToJPEGImage('mineralogia', 'mineralogiaimagem3',
              EmptyStr, EmptyStr, EmptyStr, MineralogyName);
            Image[3].Created := True;
          end;
        end;
      end
      else
      if Image[3].Created then
      begin
        Image3.Picture.Clear;
        Image3.Destroy;
        Image[3].Created := False;
      end;

      if Image[4].ToCreate then
      begin
        Inc(ImagesNumber);
        if Image[4].Created then
          Image4.Picture.Graphic :=
            SelectBlobFieldToJPEGImage('mineralogia', 'mineralogiaimagem4',
            EmptyStr, EmptyStr, EmptyStr, MineralogyName)
        else
        begin
          Image4 := TImage.Create(nil);
          with Image4 do
          begin
            Parent := ScrollBox8;
            Left := ImagesLeft;
            Top := Image1Top + (ImagesNumber * SeparadorImagens);
            Width := ImagesWidth;
            Height := ImagesHeight;
            Proportional := True;
            Center := True;
            AntialiasingMode := amOn;
            OnClick := @Image4OnClick;
            Picture.Graphic :=
              SelectBlobFieldToJPEGImage('mineralogia', 'mineralogiaimagem4',
              EmptyStr, EmptyStr, EmptyStr, MineralogyName);
            Image[4].Created := True;
          end;
        end;
      end
      else
      if Image[4].Created then
      begin
        Image4.Picture.Clear;
        Image4.Destroy;
        Image[4].Created := False;
      end;
      if Image[5].ToCreate then
      begin
        Inc(ImagesNumber);
        if Image[5].Created then
          Image5.Picture.Graphic :=
            SelectBlobFieldToJPEGImage('mineralogia', 'mineralogiaimagem5',
            EmptyStr, EmptyStr, EmptyStr, MineralogyName)
        else
        begin
          Image5 := TImage.Create(nil);
          with Image5 do
          begin
            Parent := ScrollBox8;
            Left := ImagesLeft;
            Top := Image1Top + (ImagesNumber * SeparadorImagens);
            Width := ImagesWidth;
            Height := ImagesHeight;
            Proportional := True;
            Center := True;
            AntialiasingMode := amOn;
            OnClick := @Image5OnClick;
            Picture.Graphic :=
              SelectBlobFieldToJPEGImage('mineralogia', 'mineralogiaimagem5',
              EmptyStr, EmptyStr, EmptyStr, MineralogyName);
            Image[5].Created := True;
          end;
        end;
      end
      else
      if Image[5].Created then
      begin
        Image5.Picture.Clear;
        Image5.Destroy;
        Image[5].Created := False;
      end;

      if Image[6].ToCreate then
      begin
        Inc(ImagesNumber);
        if Image[6].Created then
          Image6.Picture.Graphic :=
            SelectBlobFieldToJPEGImage('mineralogia', 'mineralogiaimagem6',
            EmptyStr, EmptyStr, EmptyStr, MineralogyName)
        else
        begin
          Image6 := TImage.Create(nil);
          with Image6 do
          begin
            Parent := ScrollBox8;
            Left := ImagesLeft;
            Top := Image1Top + (ImagesNumber * SeparadorImagens);
            Width := ImagesWidth;
            Height := ImagesHeight;
            Proportional := True;
            Center := True;
            AntialiasingMode := amOn;
            OnClick := @Image6OnClick;
            Picture.Graphic :=
              SelectBlobFieldToJPEGImage('mineralogia', 'mineralogiaimagem6',
              EmptyStr, EmptyStr, EmptyStr, MineralogyName);
            Image[6].Created := True;
          end;
        end;
      end
      else
      if Image[6].Created then
      begin
        Image6.Picture.Clear;
        Image6.Destroy;
        Image[6].Created := False;
      end;

      if Image[7].ToCreate then
      begin
        Inc(ImagesNumber);
        if Image[7].Created then
          Image7.Picture.Graphic :=
            SelectBlobFieldToJPEGImage('mineralogia', 'mineralogiaimagem7',
            EmptyStr, EmptyStr, EmptyStr, MineralogyName)
        else
        begin
          Image7 := TImage.Create(nil);
          with Image7 do
          begin
            Parent := ScrollBox8;
            Left := ImagesLeft;
            Top := Image1Top + (ImagesNumber * SeparadorImagens);
            Width := ImagesWidth;
            Height := ImagesHeight;
            Proportional := True;
            Center := True;
            AntialiasingMode := amOn;
            OnClick := @Image7OnClick;
            Picture.Graphic :=
              SelectBlobFieldToJPEGImage('mineralogia', 'mineralogiaimagem7',
              EmptyStr, EmptyStr, EmptyStr, MineralogyName);
            Image[7].Created := True;
          end;
        end;
      end
      else
      if Image[7].Created then
      begin
        Image7.Picture.Clear;
        Image7.Destroy;
        Image[7].Created := False;
      end;
    end;
  end;
  RefreshHeaderControl(Imagem_Selecionada);
end;

procedure TFormFichaEspecie.RefreshHeaderControl(num: char);
begin
  {if (ListboxMinerais.GetSelectedText <> EmptyStr) then
  begin
    self.ImagemAmpliada.Picture.Graphic :=
      SelectBlobFieldToJPEGImage('minerais', 'imagem' + Num,
      ListboxMinerais.GetSelectedText, EmptyStr, EmptyStr, EmptyStr);
  end
  else
  begin
    self.ImagemAmpliada.Picture.Graphic :=
      SelectBlobFieldToJPEGImage('mineralogia', 'mineralogiaimagem' +
      Num, EmptyStr, EmptyStr, EmptyStr, MineralogyName);
  end;    }
  HeaderControl1.Sections.Items[0].ImageIndex:=1;
  HeaderControl1.Sections.Items[1].ImageIndex:=2;
  HeaderControl1.Sections.Items[2].ImageIndex:=3;
  HeaderControl1.Sections.Items[3].ImageIndex:=4;
  HeaderControl1.Sections.Items[4].ImageIndex:=5;
  HeaderControl1.Sections.Items[5].ImageIndex:=6;
  HeaderControl1.Sections.Items[6].ImageIndex:=7;
  Case Num of
    '1':
    begin
      HeaderControl1.Sections.Items[0].ImageIndex:=0;
    end;
    '2':
    begin
      HeaderControl1.Sections.Items[1].ImageIndex:=0;
    end;
    '3':
    begin
      HeaderControl1.Sections.Items[2].ImageIndex:=0;
    end;
    '4':
    begin
      HeaderControl1.Sections.Items[3].ImageIndex:=0;
    end;
    '5':
    begin
      HeaderControl1.Sections.Items[4].ImageIndex:=0;
    end;
    '6':
    begin
      HeaderControl1.Sections.Items[5].ImageIndex:=0;
    end;
    '7':
    begin
      HeaderControl1.Sections.Items[6].ImageIndex:=0;
    end;
  end;
end;

procedure TFormFichaEspecie.RefreshHardDens;
begin
  EditDureza.Text:=EditDurezaMin.Text+' - '+EditDurezaMax.Text;
  EditDensidade.Text:=EditDensidadeMin.Text+' - '+EditDensidadeMax.Text;
end;

procedure TFormFichaEspecie.RemoveImage(ImagemSelecionada: Char);
begin
  if Dados.DatabaseMineralFileName <> EmptyStr then
  begin
    if Dados.ChooseDatabase('mineral', Dados.DatabaseMineralFileName) then
    begin
      if (Trim(EditNomeMineral.Text) <> EmptyStr) then
      begin
        ClearBlobField('minerais', 'imagem' + ImagemSelecionada,
          ListboxMinerais.GetSelectedText, EmptyStr, EmptyStr, EmptyStr);
      end
      else
      begin
        ClearBlobField('mineralogia', 'mineralogiaimagem' + Imagem_Selecionada,
          EmptyStr, EmptyStr, EmptyStr, MineralogyName);
      end;
      RefreshImages;
    end
    else ShowMessage(Lang.TheSelectedDatabaseIsNotValid);
  end
  else ShowMessage(Lang.NoDatabaseSelected);
  Imagem_Selecionada := '1';
end;

procedure TFormFichaEspecie.ClearFields;
begin
  EditNomeMineral.Text:='';
  EditFormula.Text:='';
  EditClasse.Text:='';
  EditSubClasse.Text:='';
  EditGrupo.Text:='';
  EditSubgrupo.Text:='';
  MemoOcorrencia.Text:='';
  MemoAssociacao.Text:='';
  MemoDistincao.Text:='';
  MemoAlteracao.Text:='';
  MemoAplicacao.Text:='';
  EditDureza.Text:='';
  EditDensidade.Text:='';
  EditDurezaMin.Text:='';
  EditDurezaMax.Text:='';
  EditDensidadeMin.Text:='';
  EditDensidadeMax.Text:='';
  MemoCor.Text:='';
  MemoTraco.Text:='';
  MemoBrilho.Text:='';
  MemoClivagem.Text:='';
  MemoFratura.Text:='';
  MemoMagnetismo.Text:='';
  MemoLuminescencia.Text:='';
  MemoDiafaneidade.Text:='';
  MemoSinalOptico.Text:='';
  MemoIndiceRefracao.Text:='';
  MemoAngulo.Text:='';
  MemoInterferencia.Text:='';
  MemoCorLamina.Text:='';
  MemoSinalElongacao.Text:='';
  MemoBirrefringencia.Text:='';
  MemoRelevo.Text:='';
  MemoRelevo.Text:='';
  MemoExtincao.Text:='';
  EditSistema.Text:='';
  EditClasse_Cristalina.Text:='';
  EditH_M.Text:='';
  MemoHabito.Text:='';
end;

procedure TFormFichaEspecie.ConfigDatabase(config:TIniFile);
var Aux: String;
begin
  Aux:=Trim(Config.ReadString('Database','Mineral',EmptyStr));
  if Aux <> EmptyStr then
  begin
    if FileExists(Aux) then
    begin
      if Dados.ChooseDatabase('mineral', Aux) then
      begin
        Dados.DatabaseMineralFileName:=Aux;
        //Edit1.Text:=Aux
      end
      else
      begin
        Dados.DatabaseMineralFileName:=EmptyStr;
        Config.WriteString('Database', 'Mineral', EmptyStr);
        //Edit1.Text:=EmptyStr;
      end;
    end
    else
    begin
      Config.WriteString('Database', 'Mineral', EmptyStr);
      Dados.DatabaseMineralFileName:=EmptyStr;
      //Edit1.Text:=EmptyStr;
    end;
  end
  else
  begin
    Config.WriteString('Database', 'Mineral', EmptyStr);
    Dados.DatabaseMineralFileName:=EmptyStr;
    //Edit1.Text:=EmptyStr;
  end;
end;

procedure TFormFichaEspecie.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  //FormFichaEspecie.Free;
  Application.Terminate;
end;

procedure TFormFichaEspecie.ComboBoxGrupoChange(Sender: TObject);
begin
  Preenche_SubGrupos;
  AtualizarLista;
  Mineralogy_Name.Caption:=MineralogyName;
  RefreshImages;
end;

procedure TFormFichaEspecie.ComboBoxSubclasseChange(Sender: TObject);
begin
  Preenche_Grupos;
  Preenche_SubGrupos;
  AtualizarLista;
  Mineralogy_Name.Caption:=MineralogyName;
  RefreshImages;
end;

procedure TFormFichaEspecie.ComboBoxSubgrupoChange(Sender: TObject);
begin
  AtualizarLista;
  Mineralogy_Name.Caption:=MineralogyName;
  RefreshImages;
end;

procedure TFormFichaEspecie.EditClasse_CristalinaEditingDone(Sender: TObject);
begin
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
    'UPDATE minerais SET classe_cristalina ' + '="' + EditClasse_Cristalina.Text +
    '" WHERE nome="' + EditNomeMineral.Text + '";');
end;

procedure TFormFichaEspecie.EditClasse_CristalinaKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
    'UPDATE minerais SET classe_cristalina ' + '="' + EditClasse_Cristalina.Text +
    '" WHERE nome="' + EditNomeMineral.Text + '";');
end;

procedure TFormFichaEspecie.EditFiltroAssociacaoEditingDone(Sender: TObject);
begin
  if Dados.DatabaseMineralFileName <> EmptyStr then
  begin
    if (EditFiltroAssociacao.Text <> Associacao) then
      AtualizarLista;
    Associacao := EditFiltroAssociacao.Text;
  end;
end;

procedure TFormFichaEspecie.EditFiltroBrilhoEditingDone(Sender: TObject);
begin
  if Dados.DatabaseMineralFileName <> EmptyStr then
  begin
    if (EditFiltroBrilho.Text <> Brilho) then
      AtualizarLista;
    Brilho := EditFiltroBrilho.Text;
  end;
end;

procedure TFormFichaEspecie.EditClasseEditingDone(Sender: TObject);
begin
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable('UPDATE minerais SET classe ' +
    '="' + EditClasse.Text + '" WHERE nome="' + EditNomeMineral.Text + '";');
  Preenche_Classes;
end;

procedure TFormFichaEspecie.EditClasseKeyUp(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable('UPDATE minerais SET classe ' +
    '="' + EditClasse.Text + '" WHERE nome="' + EditNomeMineral.Text + '";');
  Preenche_Classes;
end;

procedure TFormFichaEspecie.EditFiltroCorEditingDone(Sender: TObject);
begin
  if Dados.DatabaseMineralFileName <> EmptyStr then
  begin
    if (EditFiltroCor.Text <> Cor) then
      AtualizarLista;
    Cor := EditFiltroCor.Text;
  end;
end;

procedure TFormFichaEspecie.EditDensidadeClick(Sender: TObject);
begin
  if (GroupBoxDensidade.Visible) then
    GroupBoxDensidade.Visible := False
  else
    GroupBoxDensidade.Visible := True;
end;

procedure TFormFichaEspecie.EditDensidadeMaxEditingDone(Sender: TObject);
var str, Last:String;
begin
  str:= StringReplace(EditDensidadeMax.Text, ',','.',[rfReplaceAll]);
  if Last <> str then
  begin
    Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
      'UPDATE minerais SET densidade_max ' + '="' + str +
      '" WHERE nome="' + EditNomeMineral.Text + '";');
    RefreshHardDens;
  end;
  Last:=str;
end;

procedure TFormFichaEspecie.EditDensidadeMaxKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
var str:string;
begin
  str:=StringReplace(EditDensidadeMax.text, ',', '.', [rfReplaceAll]);
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
    'UPDATE minerais SET densidade_max ' + '="' + str +
    '" WHERE nome="' + EditNomeMineral.Text + '";');
end;

procedure TFormFichaEspecie.EditDensidadeMinEditingDone(Sender: TObject);
var str, Last:String;
begin
  str:=StringReplace(EditDensidadeMin.Text, ',', '.', [rfReplaceAll]);
  if str <> Last then
  begin
    Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
      'UPDATE minerais SET densidade_min ' + '="' + str +
      '" WHERE nome="' + EditNomeMineral.Text + '";');
      RefreshHardDens;
  end;
  Last:=str;
end;

procedure TFormFichaEspecie.EditDensidadeMinKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
var str:String;
begin
  str:=StringReplace(EditDensidadeMin.Text, ',','.', [rfReplaceAll]);
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
    'UPDATE minerais SET densidade_min ' + '="' + str +
    '" WHERE nome="' + EditNomeMineral.Text + '";');
end;

procedure TFormFichaEspecie.EditFiltroDens_MaxEditingDone(Sender: TObject);
begin
  if (EditFiltroDens_Max.Text <> Den_Min) then
  begin
    Den_Max := StringReplace(EditFiltroDens_Max.Text, ',', '.', []);
    EditFiltroDens_Max.Text := Den_Max;
    AtualizarLista;
  end;
end;

procedure TFormFichaEspecie.EditFiltroDens_minEditingDone(Sender: TObject);
begin
  if (EditFiltroDens_min.Text <> Den_Min) then
  begin
    Den_Min := StringReplace(EditFiltroDens_min.Text, ',', '.', []);
    EditFiltroDens_min.Text := Den_Min;
    AtualizarLista;
  end;
end;

procedure TFormFichaEspecie.EditDurezaClick(Sender: TObject);
begin
  if (GroupBoxDureza.Visible) then
    GroupBoxDureza.Visible := False
  else
    GroupBoxDureza.Visible := True;
end;

procedure TFormFichaEspecie.EditDurezaMaxEditingDone(Sender: TObject);
var str, Last:String;
begin
  str:= StringReplace(EditDUrezaMax.Text, ',', '.', [rfReplaceAll]);
  if (Last <> str) then
  begin
    Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
      'UPDATE minerais SET dureza_max ' + '="' + str +
      '" WHERE nome="' + EditNomeMineral.Text + '";');
    RefreshHardDens;
  end;
  Last:=str;
end;

procedure TFormFichaEspecie.EditDurezaMaxKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
var str:String;
begin
  str:= StringReplace(EditDUrezaMax.Text, ',', '.', [rfReplaceAll]);
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
    'UPDATE minerais SET dureza_max ' + '="' + str +
    '" WHERE nome="' + EditNomeMineral.Text + '";');
end;

procedure TFormFichaEspecie.EditDurezaMinEditingDone(Sender: TObject);
var str, Last:String;
begin
  str:= StringReplace(EditDurezaMin.Text, ',', '.', [rfReplaceAll]);
  if Last <> str then
  begin
    Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
      'UPDATE minerais SET dureza_min ' + '="' + str +
      '" WHERE nome="' + EditNomeMineral.Text + '";');
      RefreshHardDens;
  end;
  Last:= str;
end;

procedure TFormFichaEspecie.EditDurezaMinKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
var str:String;
begin
  str:= StringReplace(EditDurezaMin.Text, ',','.',[rfReplaceAll]);
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
    'UPDATE minerais SET dureza_min ' + '="' + str +
    '" WHERE nome="' + EditNomeMineral.Text + '";');
end;

procedure TFormFichaEspecie.EditFormulaEditingDone(Sender: TObject);
begin
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
    'UPDATE minerais SET formula ' + '="' + EditFormula.Text +
    '" WHERE nome="' + EditNomeMineral.Text + '";');
end;

procedure TFormFichaEspecie.EditFormulaKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
    'UPDATE minerais SET formula ' + '="' + EditFormula.Text +
    '" WHERE nome="' + EditNomeMineral.Text + '";');
end;

procedure TFormFichaEspecie.EditGrupoEditingDone(Sender: TObject);
begin
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable('UPDATE minerais SET grupo ' +
    '="' + EditGrupo.Text + '" WHERE nome="' + EditNomeMineral.Text + '";');
  Preenche_Grupos;
end;

procedure TFormFichaEspecie.EditGrupoKeyUp(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
    'UPDATE minerais SET grupo ' + '="' + EditGrupo.Text + '" WHERE nome="' +
    EditNomeMineral.Text + '";');
end;

procedure TFormFichaEspecie.EditH_MEditingDone(Sender: TObject);
begin
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable('UPDATE minerais SET h_m ' +
    '="' + EditH_M.Text + '" WHERE nome="' + EditNomeMineral.Text + '";');
end;

procedure TFormFichaEspecie.EditH_MKeyUp(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable('UPDATE minerais SET h_m ' +
    '="' + EditH_M.Text + '" WHERE nome="' + EditNomeMineral.Text + '";');
end;

procedure TFormFichaEspecie.EditNomeEditingDone(Sender: TObject);
begin
  if Dados.DatabaseMineralFileName <> EmptyStr then
  begin
    if (UltimaPesquisa <> EditNome.Text) then
    begin
      AtualizarLista;
      UltimaPesquisa := EditNome.Text;
    end;
  end;
end;

procedure TFormFichaEspecie.EditFiltroOcorrenciaEditingDone(Sender: TObject);
begin
  if Dados.DatabaseMineralFileName <> EmptyStr then
  begin
    if (EditFiltroOcorrencia.Text <> Ocorrencia) then
      AtualizarLista;
    Ocorrencia := EditFiltroOcorrencia.Text;
  end;
end;

procedure TFormFichaEspecie.EditNomeMineralEditingDone(Sender: TObject);
var
  Aux: integer;
begin
  if Trim(NomeMineral) <> EmptyStr then
  begin
    Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
      'SELECT nome FROM minerais WHERE nome="' + NomeMineral + '";');
    Aux := ListboxMinerais.Items.IndexOf(NomeMineral);
    if EditNomeMineral.Text <> NomeMineral then
    begin
      if Dados.TableMinerals.Count > 0 then
      begin
        ShowMessage(Lang.ThereIsAlreadyARecordWithThatName);
      end
      else
      begin
        if Dados.TableMinerals.MoveFirst then
        begin
          Dados.UpdateField('minerais', 'nome', EditNomeMineral.Text,
            Dados.TableMinerals.FieldByName['nome'], EmptyStr, EmptyStr, EmptyStr);
        end;
      end;
    end;
    ListboxMinerais.Items.Delete(Aux);
    ListboxMinerais.Selected[ListboxMinerais.Items.Add(EditNomeMineral.Text)] := True;
  end;
  {
  if (Dados.TableMinerals.FieldByName['nome'] <> ListBoxMinerais.GetSelectedText) then
  begin
    velho := ListboxMinerais.Items.IndexOf(ListboxMinerais.getselectedtext);
    novo := ListboxMinerais.Items.Add(Dados.TableMinerals.FieldByName['nome']);
    ListboxMinerais.items.Exchange(novo, velho);
    ListboxMinerais.Items.Delete(novo);
    Dados.UpdateField('minerais', 'nome', EditNomeMineral.Text,
      Dados.TableMinerals.FieldByName['nome'], EmptyStr, EmptyStr, EmptyStr);
  end;}
end;

procedure TFormFichaEspecie.EditNomeMineralKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  //nothing to do
end;

procedure TFormFichaEspecie.EditSistemaEditingDone(Sender: TObject);
begin
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
    'UPDATE minerais SET sistema ' + '="' + EditSistema.Text +
    '" WHERE nome="' + EditNomeMineral.Text + '";');
end;

procedure TFormFichaEspecie.EditSistemaKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
    'UPDATE minerais SET sistema ' + '="' + EditSistema.Text +
    '" WHERE nome="' + EditNomeMineral.Text + '";');
end;

procedure TFormFichaEspecie.EditSubClasseEditingDone(Sender: TObject);
begin
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
    'UPDATE minerais SET subclasse ' + '="' + EditSubclasse.Text +
    '" WHERE nome="' + EditNomeMineral.Text + '";');
  Preenche_Subclasses;
end;

procedure TFormFichaEspecie.EditSubClasseKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
    'UPDATE minerais SET subclasse ' + '="' + EditSubclasse.Text +
    '" WHERE nome="' + EditNomeMineral.Text + '";');
end;

procedure TFormFichaEspecie.EditSubGrupoEditingDone(Sender: TObject);
begin
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
    'UPDATE minerais SET subgrupo ' + '="' + EditSubgrupo.Text +
    '" WHERE nome="' + EditNomeMineral.Text + '";');
  Preenche_Subgrupos;
end;

procedure TFormFichaEspecie.EditSubGrupoKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
    'UPDATE minerais SET subgrupo ' + '="' + EditSubgrupo.Text +
    '" WHERE nome="' + EditNomeMineral.Text + '";');
end;

procedure TFormFichaEspecie.ComboBoxClasseChange(Sender: TObject);
begin
  Preenche_SubClasses;
  Preenche_Grupos;
  Preenche_SubGrupos;
  AtualizarLista;
  Mineralogy_Name.Caption:=MineralogyName;
  RefreshImages;
end;

procedure TFormFichaEspecie.ActionAddImage1Execute(Sender: TObject);
begin
  if Dados.DatabaseMineralFileName <> EmptyStr then
  begin
    if EditNomeMineral.Text <> EmptyStr then
    begin
      AddMineralImage('minerais','1');
    end
    else
    begin
      AddMineralImage('mineralogia','1');
    end;
  end;
end;

procedure TFormFichaEspecie.ActionAddExecute(Sender: TObject);
begin
  if Dados.DatabaseMineralFileName <> EmptyStr then
  begin
    if FileExists(Dados.DatabaseMineralFileName) then
    begin
      if Dados.ChooseDatabase('mineral', Dados.DatabaseMineralFileName) then
        FormAddMineral.Show
      else
        ShowMessage(Lang.TheSelectedDatabaseIsNotValid);
    end
    else
      ShowMessage(Lang.TheSelectedDatabaseIsNotValid);
  end
  else
    ShowMessage(Lang.NoDatabaseSelected);
end;

procedure TFormFichaEspecie.ActionAddImage2Execute(Sender: TObject);
begin
  if Dados.DatabaseMineralFileName <> EmptyStr then
  begin
    if EditNomeMineral.Text <> EmptyStr then
    begin
      AddMineralImage('minerais','2');
    end
    else
    begin
      AddMineralImage('mineralogia','2');
    end;
  end;
end;

procedure TFormFichaEspecie.ActionAddImage3Execute(Sender: TObject);
begin
  if Dados.DatabaseMineralFileName <> EmptyStr then
  begin
    if EditNomeMineral.Text <> EmptyStr then
    begin
      AddMineralImage('minerais','3');
    end
    else
    begin
      AddMineralImage('mineralogia','3');
    end;
  end;
end;

procedure TFormFichaEspecie.ActionAddImage4Execute(Sender: TObject);
begin
  if Dados.DatabaseMineralFileName <> EmptyStr then
  begin
    if EditNomeMineral.Text <> EmptyStr then
    begin
      AddMineralImage('minerais','4');
    end
    else
    begin
      AddMineralImage('mineralogia','4');
    end;
  end;
end;

procedure TFormFichaEspecie.ActionAddImage5Execute(Sender: TObject);
begin
  if Dados.DatabaseMineralFileName <> EmptyStr then
  begin
    if EditNomeMineral.Text <> EmptyStr then
    begin
      AddMineralImage('minerais','5');
    end
    else
    begin
      AddMineralImage('mineralogia','5');
    end;
  end;
end;

procedure TFormFichaEspecie.ActionAddImage6Execute(Sender: TObject);
begin
  if Dados.DatabaseMineralFileName <> EmptyStr then
  begin
    if EditNomeMineral.Text <> EmptyStr then
    begin
      AddMineralImage('minerais','6');
    end
    else
    begin
      AddMineralImage('mineralogia','6');
    end;
  end;
end;

procedure TFormFichaEspecie.ActionAddImage7Execute(Sender: TObject);
begin
  if Dados.DatabaseMineralFileName <> EmptyStr then
  begin
    if EditNomeMineral.Text <> EmptyStr then
    begin
      AddMineralImage('minerais','7');
    end
    else
    begin
      AddMineralImage('mineralogia','7');
    end;
  end;
end;

procedure TFormFichaEspecie.ActionFilterVisibleExecute(Sender: TObject);
begin
  if ScrollBox2.Visible then
    ScrollBox2.Visible := False
  else
    ScrollBox2.Visible := True;
end;

procedure TFormFichaEspecie.ActionFormPrintExecute(Sender: TObject);
begin
  {impressão em breve..}
  {if Dados.DatabaseMineralFileName <> EmptyStr then
  begin
    if FileExists(Dados.DatabaseMineralFileName) then
    begin
      if Dados.ChooseDatabase('mineral', Dados.DatabaseMineralFileName) then
      begin
        FormImpressao.Show;
      end
      else ShowMessage(Lang.TheSelectedDatabaseIsNotValid);
    end
    else ShowMessage(Lang.TheSelectedDatabaseIsNotValid);
  end
  else ShowMessage(Lang.NoDatabaseSelected);}
end;

procedure TFormFichaEspecie.ActionImagesVisibleExecute(Sender: TObject);
begin
  if ScrollBox8.Visible then
    ScrollBox8.Visible := False
  else
    ScrollBox8.Visible := True;
end;

procedure TFormFichaEspecie.ActionMenuConfExecute(Sender: TObject);
begin
  FormConfigurations.Show;
end;

procedure TFormFichaEspecie.ActionMenuHelpExecute(Sender: TObject);
begin
  FormAjuda.Show;
end;

procedure TFormFichaEspecie.ActionOpenDatabaseFormExecute(Sender: TObject);
begin
  FormSelectDatabase.Show;
end;

procedure TFormFichaEspecie.ActionRefreshListExecute(Sender: TObject);
begin
  if Dados.DatabaseMineralFileName <> EmptyStr then
    if FileExists(Dados.DatabaseMineralFileName) then
      if Dados.ChooseDatabase('mineral', Dados.DatabaseMineralFileName) then
        AtualizarLista;
end;

procedure TFormFichaEspecie.ActionRemoveMineralExecute(Sender: TObject);
begin
  if Dados.DatabaseMineralFileName <> EmptyStr then
  begin
    if FileExists(Dados.DatabaseMineralFileName) then
    begin
      if Dados.ChooseDatabase('mineral', Dados.DatabaseMineralFileName) then
        FormRemoveMineral.Show
      else
        ShowMessage(Lang.TheSelectedDatabaseIsNotValid);
    end
    else ShowMessage(Lang.TheSelectedDatabaseIsNotValid);
  end
  else
  ShowMessage(Lang.NoDatabaseSelected);
end;

end.
