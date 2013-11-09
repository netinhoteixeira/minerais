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
  BGRAPanel, BGRALabel, RichMemo, TAGraph, TASeries, TADbSource, uFormImpressao,
  uSelecionaBD, SQLite3tablemod, uBibliografia, UnitAjuda, IniFiles, unitImagem,
  unitPlanilha, unitequipamentos, unitrruff_id, unitfichaamostra;

type

  { TFormPrincipal }

  TFormPrincipal = class(TForm)
    ActionImage4Click: TAction;
    ActionQuimicaDblClick: TAction;
    ActionImage4DblClick: TAction;
    ActionImage5Click: TAction;
    ActionImage5DblClick: TAction;
    ActionImage6Click: TAction;
    ActionImage6DblClick: TAction;
    ActionImage7Click: TAction;
    ActionImage7DblClick: TAction;
    ActionImageAmostraDblClick: TAction;
    ActionImage3DblClick: TAction;
    ActionImage3Click: TAction;
    ActionImage2DblClick: TAction;
    ActionImage2Click: TAction;
    ActionImage1DblClick: TAction;
    ActionImage1Click: TAction;
    ActionAdd: TAction;
    ActionListImage: TActionList;
    ActionSelectDatabase: TAction;
    ActionListboxDigito: TAction;
    ActionComboboxAdicionaAmostra: TAction;
    ActionComboboxChangeEquipment: TAction;
    ActionFormEquipments: TAction;
    ActionChangeEquipment: TAction;
    ActionComboboxSubgrupo: TAction;
    ActionComboboxGrupo: TAction;
    ActionComboboxSubclasse: TAction;
    ActionComboboxClasse: TAction;
    ActionVarreduraComprimentoOnda: TAction;
    ActionRamanDirecaoLaser: TAction;
    ActionPreencheLista: TAction;
    ActionListCombobox: TActionList;
    ActionRemoveData: TAction;
    ActionCheckData: TAction;
    ActionAddData: TAction;
    ActionAdicionarImagemRruff: TAction;
    ActionListButton: TActionList;
    ActionListboxRruffDoubleClick: TAction;
    ActionListboxRruffClick: TAction;
    ActionListboxMineraisDoubleClick: TAction;
    ActionListboxMineraisOnClick: TAction;
    ActionListListbox: TActionList;
    BGRALabelCor: TBGRALabel;
    BGRALabelBrilho: TBGRALabel;
    BGRALabelEspecies: TBGRALabel;
    BGRALabelId_Rruff: TBGRALabel;
    BGRALabelClasse: TBGRALabel;
    BGRALabelSubclasse: TBGRALabel;
    BGRALabelGrupo: TBGRALabel;
    BGRALabelSubgrupo: TBGRALabel;
    BGRALabelDureza: TBGRALabel;
    BGRALabelDensidade: TBGRALabel;
    BGRALabelOcorrencia: TBGRALabel;
    BGRALabelAssociacao: TBGRALabel;
    BGRAPanelRruff_id: TBGRAPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtnAdicionarDados: TBitBtn;
    BitBtnAdicionarImagem: TBitBtn;
    BitBtnInstrumentos: TBitBtn;
    BitBtnRemoverImagem: TBitBtn;
    BitBtnVerDados: TBitBtn;
    BitBtnVisualizarTelaCheia: TBitBtn;
    BitBtnZerarDados: TBitBtn;
    ChartDifracao: TChart;
    ChartInfravermelho: TChart;
    ChartInfravermelhoLineSeries1: TLineSeries;
    ChartRaman: TChart;
    ChartVarredura: TChart;
    ChartVarreduraLineSeries1: TLineSeries;
    ComboBoxClasse: TComboBox;
    ComboBoxDifracaoDigito: TComboBox;
    ComboBoxDirecaoLaser: TComboBox;
    ComboBoxDureza_max: TComboBox;
    ComboBoxDureza_min: TComboBox;
    ComboBoxEquipamentoInfravermelho: TComboBox;
    ComboBoxEquipamentoRaman: TComboBox;
    ComboBoxEquipamentoVarredura: TComboBox;
    ComboBoxGrupo: TComboBox;
    ComboBoxInfravermelhoDigito: TComboBox;
    ComboBoxQuimicaDigito: TComboBox;
    ComboBoxRamanDigito: TComboBox;
    ComboBoxSubclasse: TComboBox;
    ComboBoxSubgrupo: TComboBox;
    ComboBoxVarreduraDigito: TComboBox;
    ComboBoxVarreduraOnda: TComboBox;
    DBEditDensidade_Max: TDBEdit;
    DBEditDensidade_Min: TDBEdit;
    DBEditDureza_Max: TDBEdit;
    DBEditDureza_Min: TDBEdit;
    DBMemoAlteracao: TDBMemo;
    DBMemoAngulo: TDBMemo;
    DBMemoAplicacao: TDBMemo;
    DBMemoAssociacao: TDBMemo;
    DBMemoBirrefringencia: TDBMemo;
    DBMemoBrilho: TDBMemo;
    DBMemoClasse: TDBMemo;
    DBMemoClasse_Cristalina: TDBMemo;
    DBMemoClivagem: TDBMemo;
    DBMemoCor: TDBMemo;
    DBMemoCor_interferencia: TDBMemo;
    DBMemoCor_Lamina: TDBMemo;
    DBMemoDifaneidade: TDBMemo;
    DBMemoDistincao: TDBMemo;
    DBMemoExtincao: TDBMemo;
    DBMemoFormula: TDBMemo;
    DBMemoFratura: TDBMemo;
    DBMemoGrupo: TDBMemo;
    DBMemoHabito: TDBMemo;
    DBMemoH_M: TDBMemo;
    DBMemoIndice_Refracao: TDBMemo;
    DBMemoLuminescencia: TDBMemo;
    DBMemoMagnetismo: TDBMemo;
    DBMemoNome: TDBMemo;
    DBMemoOCorrencia: TDBMemo;
    DBMemoRelevo: TDBMemo;
    DBMemoSinal_Elongacao: TDBMemo;
    DBMemoSinal_Optico: TDBMemo;
    DBMemoSistema: TDBMemo;
    DBMemoSubclasse: TDBMemo;
    DBMemoSubgrupo: TDBMemo;
    DBMemoTraco: TDBMemo;
    EditCor: TEdit;
    EditBrilho: TEdit;
    EditNome: TEdit;
    EditRruff_Id: TEdit;
    EditAssociacao: TEdit;
    EditDensidade: TEdit;
    EditDensidade_Max: TEdit;
    EditDensidade_min: TEdit;
    EditDureza: TEdit;
    EditOcorrencia: TEdit;
    GroupBox1: TGroupBox;
    GroupBox10: TGroupBox;
    GroupBox11: TGroupBox;
    GroupBox12: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    GroupBox7: TGroupBox;
    GroupBox8: TGroupBox;
    GroupBox9: TGroupBox;
    GroupBoxCristalografia: TGroupBox;
    GroupBoxCristalografia1: TGroupBox;
    GroupBoxCristalografia2: TGroupBox;
    GroupBoxDadosDifracao: TGroupBox;
    GroupBoxDensidade: TGroupBox;
    GroupBoxDifracao: TGroupBox;
    GroupBoxDureza: TGroupBox;
    GroupBoxGraficoInfravermelho: TGroupBox;
    GroupBoxGraficoRaman: TGroupBox;
    GroupBoxGraficoVarredura: TGroupBox;
    GroupBoxImagem2: TGroupBox;
    GroupBoxImagem3: TGroupBox;
    GroupBoxImagem4: TGroupBox;
    GroupBoxImagem5: TGroupBox;
    GroupBoxImagem1: TGroupBox;
    GroupBoxImagemAmpliada: TGroupBox;
    GroupBoxImagemQuimica: TGroupBox;
    GroupBoxInf_Gerais: TGroupBox;
    GroupBoxOpticas: TGroupBox;
    GroupBoxProp_Fisicas: TGroupBox;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    ImageAmostra: TImage;
    ImageAmpliada: TImage;
    ImageCristalografia1: TImage;
    ImageCristalografia2: TImage;
    ImageQuimica: TImage;
    Label1: TLabel;
    Label10: TLabel;
    Label1Especie: TLabel;
    Label2: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label3: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    LabelA: TLabel;
    LabelAlpha: TLabel;
    LabelAlteracao: TLabel;
    LabelAngulo_2V: TLabel;
    LabelAplicacao: TLabel;
    LabelAssociacao: TLabel;
    LabelB: TLabel;
    LabelBeta: TLabel;
    LabelBirrefringencia: TLabel;
    LabelBrilho: TLabel;
    LabelC: TLabel;
    LabelClasse: TLabel;
    LabelClasse_Cristalina: TLabel;
    LabelClivagem: TLabel;
    LabelComprimentodeOnda: TLabel;
    LabelConfiguracaoInstrumento: TLabel;
    LabelCor: TLabel;
    LabelCor_Interferencia: TLabel;
    LabelCor_Lamina: TLabel;
    LabelDescricao2: TLabel;
    LabelDescricao3: TLabel;
    LabelDescricaoBroadScan: TLabel;
    LabelDescricaoIV: TLabel;
    LabelDifaneidade: TLabel;
    LabelDistincao: TLabel;
    LabelEquipamentoRaman: TLabel;
    LabelExtincao: TLabel;
    LabelFonte: TLabel;
    LabelFratura: TLabel;
    LabelGamma: TLabel;
    LabelGrupo: TLabel;
    LabelHabito: TLabel;
    LabelId_Quimica: TLabel;
    LabelId_Quimica1: TLabel;
    LabelId_Quimica2: TLabel;
    LabelId_Quimica3: TLabel;
    LabelId_Quimica4: TLabel;
    LabelIndice_Refracao: TLabel;
    LabelInstrumentoIV: TLabel;
    LabelLocalidade: TLabel;
    LabelLuminescencia: TLabel;
    LabelMagnetismo: TLabel;
    LabelNome: TLabel;
    LabelOcorrencia: TLabel;
    LabelOrientacao: TLabel;
    LabelPinId: TLabel;
    LabelProprietario: TLabel;
    LabelQuimicaIdeal: TLabel;
    LabelQuimicaMedida: TLabel;
    LabelRelevo: TLabel;
    LabelResolucao: TLabel;
    LabelSimbologia: TLabel;
    LabelSInal_Elongacao: TLabel;
    LabelSinal_optico: TLabel;
    LabelSistemaCristalino: TLabel;
    LabelSistema_Cristalino: TLabel;
    LabelSubClasse: TLabel;
    LabelSubGrupo: TLabel;
    LabelTraco: TLabel;
    LabelVolume: TLabel;
    ListBoxRruff_id: TListBox;
    ListBoxMinerais: TListBox;
    MemoA: TMemo;
    MemoAlpha: TMemo;
    MemoAmostraDescricao: TMemo;
    MemoAmostraEspecie: TMemo;
    MemoAmostraQuimica: TMemo;
    MemoAmostraRruff_id: TMemo;
    MemoB: TMemo;
    MemoBeta: TMemo;
    MemoC: TMemo;
    MemoFonte: TMemo;
    MemoGamma: TMemo;
    MemoInfravermelhoDescricao: TMemo;
    MemoInfravermelhoResolucao: TMemo;
    MemoInfravermelhoRruff_id: TMemo;
    MemoLocalidade: TMemo;
    MemoOrientacao: TMemo;
    MemoPin_id: TMemo;
    Memoproprietario: TMemo;
    MemoQuimicaDescricao: TMemo;
    MemoQuimicaMedida: TMemo;
    MemoQuimicaRruff_id: TMemo;
    MemoRamanDescricao: TMemo;
    MemoRamanRruff_id: TMemo;
    MemoRruff_id: TMemo;
    MemoSistemaCristalino: TMemo;
    MemoSituacao: TMemo;
    MemoVarreduraDescricao: TMemo;
    MemoVarreduraRruff_id: TMemo;
    MemoVolume: TMemo;
    MenuItemImagePanel: TMenuItem;
    MenuItemPanelFiltro: TMenuItem;
    MenuItemExcluir2: TMenuItem;
    MenuItemAdicionar2: TMenuItem;
    MenuItemNovaAmostra: TMenuItem;
    MenuItemExlcuirAmostra: TMenuItem;
    MenuItemEspecies: TMenuItem;
    MenuItemInstrumentos: TMenuItem;
    MenuItemAdicionarAmostra: TMenuItem;
    MenuItemRemoverAmostra: TMenuItem;
    MenuItemAmostras: TMenuItem;
    MenuItemAlfabetica: TMenuItem;
    MenuItemAdicionar: TMenuItem;
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
    BGRAPanelEspecies: TBGRAPanel;
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
    OpenDialog1: TOpenDialog;
    OpenPictureDialog1: TOpenPictureDialog;
    PageControlFicha: TPageControl;
    PageControlRruff: TPageControl;
    PanelControle: TPanel;
    PanelFichas: TPanel;
    PanelRRUFF: TPanel;
    PanelFicha: TPanel;
    PopupMenuImage: TPopupMenu;
    PopupMenuEditNome: TPopupMenu;
    PopupMenuRruff: TPopupMenu;
    PopupMenuListbox: TPopupMenu;
    ProgressBar1: TProgressBar;
    RichMemoFormula: TRichMemo;
    StatusBar1: TStatusBar;
    TabSheetCristalografia: TTabSheet;
    TabSheetImagem: TTabSheet;
    TabSheetInf_Gerais: TTabSheet;
    TabSheetOticas: TTabSheet;
    TabSheetProp_Fisicas: TTabSheet;
    TabSheetRruffDescricao: TTabSheet;
    TabSheetRruffDifracao: TTabSheet;
    TabSheetRruffInfra: TTabSheet;
    TabSheetRruffQuimica: TTabSheet;
    TabSheetRruffRaman: TTabSheet;
    TabSheetRruffVarredura: TTabSheet;
    procedure ActionAddExecute(Sender: TObject);
    procedure ActionComboboxChangeEquipmentExecute(Sender: TObject);
    procedure ActionComboboxClasseExecute(Sender: TObject);
    procedure ActionComboboxGrupoExecute(Sender: TObject);
    procedure ActionComboboxOnChangeExecute(Sender: TObject);
    procedure ActionComboboxRamanDigitoExecute(Sender: TObject);
    procedure ActionComboboxSubclasseExecute(Sender: TObject);
    procedure ActionComboboxSubgrupoExecute(Sender: TObject);
    procedure ActionFormEquipmentsExecute(Sender: TObject);
    procedure ActionImage1ClickExecute(Sender: TObject);
    procedure ActionImage1DblClickExecute(Sender: TObject);
    procedure ActionImage2ClickExecute(Sender: TObject);
    procedure ActionImage2DblClickExecute(Sender: TObject);
    procedure ActionImage3ClickExecute(Sender: TObject);
    procedure ActionImage3DblClickExecute(Sender: TObject);
    procedure ActionImage4ClickExecute(Sender: TObject);
    procedure ActionImage4DblClickExecute(Sender: TObject);
    procedure ActionImage5ClickExecute(Sender: TObject);
    procedure ActionImage5DblClickExecute(Sender: TObject);
    procedure ActionImage6ClickExecute(Sender: TObject);
    procedure ActionImage6DblClickExecute(Sender: TObject);
    procedure ActionImage7ClickExecute(Sender: TObject);
    procedure ActionImage7DblClickExecute(Sender: TObject);
    procedure ActionImageAmostraDblClickExecute(Sender: TObject);
    procedure ActionListboxDigitoExecute(Sender: TObject);
    procedure ActionImageQuimicaDblClickExecute(Sender: TObject);
    procedure ActionRamanDirecaoLaserExecute(Sender: TObject);
    procedure ActionAddDataExecute(Sender: TObject);
    procedure ActionAdicionarImagemRruffExecute(Sender: TObject);
    procedure ActionCheckDataExecute(Sender: TObject);
    procedure ActionListboxMineraisDoubleClickExecute(Sender: TObject);
    procedure ActionListboxMineraisOnClickExecute(Sender: TObject);
    procedure ActionListboxRruffClickExecute(Sender: TObject);
    procedure ActionListboxRruffDoubleClickExecute(Sender: TObject);
    procedure ActionPreencheListaExecute(Sender: TObject);
    procedure ActionRemoveDataExecute(Sender: TObject);
    procedure ActionSelectDatabaseExecute(Sender: TObject);
    procedure ActionVarreduraComprimentoOndaExecute(Sender: TObject);
    procedure BitBtnRemImagemClick(Sender: TObject);
    procedure ComboBoxInfravermelhoDigitoChange(Sender: TObject);
    procedure DBEditDensidade_MaxEditingDone(Sender: TObject);
    procedure DBEditDensidade_MaxKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure DBEditDensidade_MinEditingDone(Sender: TObject);
    procedure DBEditDensidade_MinKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure DBEditDureza_MaxEditingDone(Sender: TObject);
    procedure DBEditDureza_MaxKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure DBEditDureza_MinEditingDone(Sender: TObject);
    procedure DBEditDureza_MinKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure DBMemoAlteracaoEditingDone(Sender: TObject);
    procedure DBMemoAlteracaoKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure DBMemoAnguloEditingDone(Sender: TObject);
    procedure DBMemoAnguloKeyUp(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure DBMemoAplicacaoEditingDone(Sender: TObject);
    procedure DBMemoAplicacaoKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure DBMemoAssociacaoEditingDone(Sender: TObject);
    procedure DBMemoAssociacaoKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure DBMemoBirrefringenciaEditingDone(Sender: TObject);
    procedure DBMemoBirrefringenciaKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure DBMemoBrilhoEditingDone(Sender: TObject);
    procedure DBMemoBrilhoKeyUp(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure DBMemoClasseEditingDone(Sender: TObject);
    procedure DBMemoClasseKeyUp(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure DBMemoClasse_CristalinaEditingDone(Sender: TObject);
    procedure DBMemoClasse_CristalinaKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure DBMemoClivagemEditingDone(Sender: TObject);
    procedure DBMemoClivagemKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure DBMemoCorEditingDone(Sender: TObject);
    procedure DBMemoCorKeyUp(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure DBMemoCor_interferenciaEditingDone(Sender: TObject);
    procedure DBMemoCor_interferenciaKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure DBMemoCor_LaminaEditingDone(Sender: TObject);
    procedure DBMemoCor_LaminaKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure DBMemoDifaneidadeEditingDone(Sender: TObject);
    procedure DBMemoDifaneidadeKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure DBMemoDistincaoEditingDone(Sender: TObject);
    procedure DBMemoDistincaoKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure DBMemoExtincaoEditingDone(Sender: TObject);
    procedure DBMemoExtincaoKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure DBMemoFormulaEditingDone(Sender: TObject);
    procedure DBMemoFormulaKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure DBMemoFraturaEditingDone(Sender: TObject);
    procedure DBMemoFraturaKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure DBMemoGrupoEditingDone(Sender: TObject);
    procedure DBMemoGrupoKeyUp(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure DBMemoHabitoEditingDone(Sender: TObject);
    procedure DBMemoHabitoKeyUp(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure DBMemoH_MEditingDone(Sender: TObject);
    procedure DBMemoH_MKeyPress(Sender: TObject; var Key: char);
    procedure DBMemoH_MKeyUp(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure DBMemoIndice_RefracaoEditingDone(Sender: TObject);
    procedure DBMemoIndice_RefracaoKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure DBMemoLuminescenciaEditingDone(Sender: TObject);
    procedure DBMemoLuminescenciaKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure DBMemoMagnetismoEditingDone(Sender: TObject);
    procedure DBMemoMagnetismoKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure DBMemoNomeEditingDone(Sender: TObject);
    procedure DBMemoNomeKeyUp(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure DBMemoOCorrenciaEditingDone(Sender: TObject);
    procedure DBMemoOCorrenciaKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure DBMemoRelevoEditingDone(Sender: TObject);
    procedure DBMemoRelevoKeyUp(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure DBMemoSinal_ElongacaoEditingDone(Sender: TObject);
    procedure DBMemoSinal_ElongacaoKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure DBMemoSinal_OpticoEditingDone(Sender: TObject);
    procedure DBMemoSinal_OpticoKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure DBMemoSistemaCristalinoEditingDone(Sender: TObject);
    procedure DBMemoSistemaCristalinoKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure DBMemoSistemaEditingDone(Sender: TObject);
    procedure DBMemoSistemaKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure DBMemoSubclasseEditingDone(Sender: TObject);
    procedure DBMemoSubclasseKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure DBMemoSubgrupoEditingDone(Sender: TObject);
    procedure DBMemoSubgrupoKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure DBMemoTracoEditingDone(Sender: TObject);
    procedure DBMemoTracoKeyUp(Sender: TObject; var Key: word; Shift: TShiftState);
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
    procedure MemoAEditingDone(Sender: TObject);
    procedure MemoAKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure MemoAlphaEditingDone(Sender: TObject);
    procedure MemoAlphaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState
      );
    procedure MemoBEditingDone(Sender: TObject);
    procedure MemoBetaEditingDone(Sender: TObject);
    procedure MemoBetaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure MemoBKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure MemoCEditingDone(Sender: TObject);
    procedure MemoCKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure MemoGammaEditingDone(Sender: TObject);
    procedure MemoGammaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState
      );
    procedure MemoInfravermelhoResolucaoEditingDone(Sender: TObject);
    procedure MemoInfravermelhoResolucaoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MemoSistemaCristalinoEditingDone(Sender: TObject);
    procedure MemoSistemaCristalinoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MemoVolumeEditingDone(Sender: TObject);
    procedure MemoVolumeKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState
      );
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItemImagePanelClick(Sender: TObject);
    procedure MenuItemPanelFiltroClick(Sender: TObject);
    procedure MenuItemAdicionar2Click(Sender: TObject);
    procedure MenuItemAdicionarAmostraClick(Sender: TObject);
    procedure MenuItemAdicionarClick(Sender: TObject);
    procedure MenuItemAlfabeticaClick(Sender: TObject);
    procedure MenuItemDensidadeClick(Sender: TObject);
    procedure MenuItemDurezaCick(Sender: TObject);
    procedure MenuItemEspeciesClick(Sender: TObject);
    procedure MenuItemExcluiClick(Sender: TObject);
    procedure MenuItemExcluir2Click(Sender: TObject);
    procedure MenuItemAmostrasClick(Sender: TObject);
    procedure MenuItemInstrumentosClick(Sender: TObject);
    procedure MenuItemNovaAmostraClick(Sender: TObject);
    procedure MenuItemRemoverAmostraClick(Sender: TObject);
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
    procedure PageControlFichaChange(Sender: TObject);
    procedure PageControlRruffChange(Sender: TObject);
  private
    procedure Preenche_Lista;
    procedure Preenche_Classes;
    procedure Preenche_SubClasses;
    procedure Preenche_Grupos;
    procedure Preenche_SubGrupos;
    function Filtro_Nome: boolean;
    function Filtro_Ocorrencia: boolean;
    function Filtro_Associacao: boolean;
    function Filtro_Cor:Boolean;
    function Filtro_Brilho:Boolean;
    function Nome_Didatico: string;
    procedure AtualizaRichMemo;
    procedure LimpaRichMemo;
    procedure Barra_Status;
    procedure EditaDD;
    procedure LimpaDD;
    procedure Adiciona_Imagem(num: char);
    procedure AtualizaImagem;
    procedure SelecionaImagem(num: char);
    procedure ProcuraMineral;
    procedure MemoryStreamParaImagem;
    procedure AdicionaMineral;
    procedure RetiraDaLista;
    procedure ExcluiMineral;
    procedure MudarFonte;   //UpdateMemos
    procedure UpdateCampos(BancoDados, Especie, Campo: string; objeto: TDBMemo);
    procedure UpdateRruff(BancoDados, Especie, Campo: string; objeto: TMemo);
    procedure UpdateEdits(Especie: string; Campo: string; objeto: TDBEdit);
    procedure ModoEdicao;
    function DefinirOrdem: string;
    procedure Ordem(MenuItemChecked: string);
    procedure PreencheAmostras;
    procedure AtualizaComboboxRruff(Combobox:TCombobox; Campo:String);
    { private declarations }
  public
    { public declarations }
  end;

const
  Minerais: string = 'minerais';
  Mineralogia: string = 'mineralogia';
  Rruff: string = 'rruff';
  EspectroRAMAN: string = 'RAMAN';
  AmplaVarredura: string = 'Ampla Varredura com Artefatos Espectrais';

  lista_formatos: string = 'All Files| *.jpg; *.jpeg;';
  grande: integer = 13;
  normal: integer = 9;

  TodosOsDados: string = 'Todos os Dados';
  Depolarizado: string = 'Não polarizado';
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

  ms: TMemoryStream;
  pic: TJPEGImage;

  sldb: TSQLiteDatabase;
  sltb: TSQLiteTable;
  sltb2: TSQLiteTable;
  //slst: Tsqlitestmt;  //nao usada

  Config: TIniFile;

  //variaveis usadas para nao preencher a lista desnecessariamente://transformar em variáveis locais
  den_min, den_max, ocorrencia, associacao: string;
  //Usado pelo RichMemo
  fonte, fontenormal, fonte2: TFontParams;

  DatasetFileName: string;

  FormFichaEspecie:TForm;

implementation

uses udatamodule, unitgraficos, unitfichaespecie;

{$R *.lfm}

{ TFormPrincipal }

procedure TFormPrincipal.ComboBoxInfravermelhoDigitoChange(Sender: TObject);
begin

end;

procedure TFormPrincipal.DBEditDensidade_MaxEditingDone(Sender: TObject);
begin
  UpDateEdits(Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
    'densidade_max', DBEditDensidade_max);
end;

procedure TFormPrincipal.DBEditDensidade_MaxKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  UpDateEdits(Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
    'densidade_max', DBEditDensidade_max);
end;

procedure TFormPrincipal.DBEditDensidade_MinEditingDone(Sender: TObject);
begin
  UpDateEdits(Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
    'densidade_min', DBEditDensidade_min);
end;

procedure TFormPrincipal.DBEditDensidade_MinKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  UpDateEdits(Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
    'densidade_min', DBEditDensidade_min);
end;

procedure TFormPrincipal.DBEditDureza_MaxEditingDone(Sender: TObject);
begin
  UpDateEdits(Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
    'dureza_max', DBEditDureza_max);
end;

procedure TFormPrincipal.DBEditDureza_MaxKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  UpDateEdits(Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
    'dureza_max', DBEditDureza_max);
end;

procedure TFormPrincipal.DBEditDureza_MinEditingDone(Sender: TObject);
begin
  UpDateEdits(Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
    'dureza_min', DBEditDureza_min);
end;

procedure TFormPrincipal.DBEditDureza_MinKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  UpDateEdits(Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
    'dureza_min', DBEditDureza_min);
end;

procedure TFormPrincipal.DBMemoAlteracaoEditingDone(Sender: TObject);
begin
  UpDateCampos(Minerais, Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
    'alteracao', DBMemoAlteracao);
end;

procedure TFormPrincipal.DBMemoAlteracaoKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  UpDateCampos(Minerais, Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
    'alteracao', DBMemoAlteracao);
end;

procedure TFormPrincipal.DBMemoAnguloEditingDone(Sender: TObject);
begin
  UpDateCampos(minerais, Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
    'angulo', DBMemoAngulo);
end;

procedure TFormPrincipal.DBMemoAnguloKeyUp(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin
  UpDateCampos(Minerais, Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
    'angulo', DBMemoAngulo);
end;

procedure TFormPrincipal.DBMemoAplicacaoEditingDone(Sender: TObject);
begin
  UpDateCampos(Minerais, Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
    'Aplicacao', DBMemoAplicacao);
end;

procedure TFormPrincipal.DBMemoAplicacaoKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  UpDateCampos(Minerais, Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
    'Aplicacao', DBMemoAplicacao);
end;

procedure TFormPrincipal.DBMemoAssociacaoEditingDone(Sender: TObject);
begin
  UpDateCampos(Minerais, Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
    'associacao', DBMemoAssociacao);
end;

procedure TFormPrincipal.DBMemoAssociacaoKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  UpDateCampos(Minerais, Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
    'associacao', DBMemoAssociacao);
end;

procedure TFormPrincipal.DBMemoBirrefringenciaEditingDone(Sender: TObject);
begin
  UpDateCampos(Minerais, Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
    'birrefringencia', DBMemoBirrefringencia);
end;

procedure TFormPrincipal.DBMemoBirrefringenciaKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  UpDateCampos(Minerais, Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
    'birrefringencia', DBMemoBirrefringencia);
end;

procedure TFormPrincipal.DBMemoBrilhoEditingDone(Sender: TObject);
begin
  UpDateCampos(Minerais, Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
    'brilho', DBMemoBrilho);
end;

procedure TFormPrincipal.DBMemoBrilhoKeyUp(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin
  UpDateCampos(Minerais, Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
    'brilho', DBMemoBrilho);
end;

procedure TFormPrincipal.DBMemoClasseEditingDone(Sender: TObject);
begin
  UpDateCampos(Minerais, Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
    'classe', DBMemoClasse);
end;

procedure TFormPrincipal.DBMemoClasseKeyUp(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin
  UpDateCampos(Minerais, Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
    'classe', DBMemoClasse);
end;

procedure TFormPrincipal.DBMemoClasse_CristalinaEditingDone(Sender: TObject);
begin
  UpDateCampos(Minerais, Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
    'classe_cristalina', DBMemoClasse_Cristalina);
end;

procedure TFormPrincipal.DBMemoClasse_CristalinaKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  UpDateCampos(Minerais, Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
    'classe_cristalina', DBMemoClasse_Cristalina);
end;

procedure TFormPrincipal.DBMemoClivagemEditingDone(Sender: TObject);
begin
  UpDateCampos(Minerais, Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
    'clivagem', DBMemoClivagem);
end;

procedure TFormPrincipal.DBMemoClivagemKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  UpDateCampos(Minerais, Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
    'clivagem', DBMemoClivagem);
end;

procedure TFormPrincipal.DBMemoCorEditingDone(Sender: TObject);
begin
  UpDateCampos(Minerais, Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
    'cor', DBMemoCor);
end;

procedure TFormPrincipal.DBMemoCorKeyUp(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin
  UpDateCampos(Minerais, Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
    'cor', DBMemoCor);
end;

procedure TFormPrincipal.DBMemoCor_interferenciaEditingDone(Sender: TObject);
begin
  UpDateCampos(Minerais, Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
    'cor_interferencia', DBMemoCor_Interferencia);
end;

procedure TFormPrincipal.DBMemoCor_interferenciaKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  UpDateCampos(Minerais, Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
    'cor_interferencia', DBMemoCor_Interferencia);
end;

procedure TFormPrincipal.DBMemoCor_LaminaEditingDone(Sender: TObject);
begin
  UpDateCampos(Minerais, Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
    'cor_lamina', DBMemoCor_lamina);
end;

procedure TFormPrincipal.DBMemoCor_LaminaKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  UpDateCampos(Minerais, Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
    'cor_lamina', DBMemoCor_lamina);
end;

procedure TFormPrincipal.DBMemoDifaneidadeEditingDone(Sender: TObject);
begin
  UpDateCampos(Minerais, Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
    'difaneidade', DBMemoDifaneidade);
end;

procedure TFormPrincipal.DBMemoDifaneidadeKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  UpDateCampos(Minerais, Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
    'difaneidade', DBMemoDifaneidade);
end;

procedure TFormPrincipal.DBMemoDistincaoEditingDone(Sender: TObject);
begin
  UpDateCampos(Minerais, Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
    'distincao', DBMemoDistincao);
end;

procedure TFormPrincipal.DBMemoDistincaoKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  UpDateCampos(Minerais, Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
    'distincao', DBMemoDistincao);
end;

procedure TFormPrincipal.DBMemoExtincaoEditingDone(Sender: TObject);
begin
  UpDateCampos(Minerais, Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
    'extincao', DBMemoExtincao);
end;

procedure TFormPrincipal.DBMemoExtincaoKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  UpDateCampos(Minerais, Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
    'extincao', DBMemoExtincao);
end;

procedure TFormPrincipal.DBMemoFormulaEditingDone(Sender: TObject);
begin
  UpDateCampos(Minerais, Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
    'formula', DBMemoFormula);
end;

procedure TFormPrincipal.DBMemoFormulaKeyUp(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin
  UpDateCampos(Minerais, Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
    'formula', DBMemoFormula);
end;

procedure TFormPrincipal.DBMemoFraturaEditingDone(Sender: TObject);
begin
  UpDateCampos(Minerais, Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
    'fratura', DBMemoFratura);
end;

procedure TFormPrincipal.DBMemoFraturaKeyUp(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin
  UpDateCampos(Minerais, Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
    'fratura', DBMemoFratura);
end;

procedure TFormPrincipal.DBMemoGrupoEditingDone(Sender: TObject);
begin
  UpDateCampos(Minerais, Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
    'grupo', DBMemoGrupo);
end;

procedure TFormPrincipal.DBMemoGrupoKeyUp(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin
  if (Key = 13) then
  begin
    sltb := sldb.GetTable('UPDATE minerais SET grupo = "' +
      Copy(DBMemoGrupo.Text, 0, Length(DBMemoGrupo.Text)) + '" WHERE nome = "' +
      DBMemoNome.Text + '";');
    Preenche_Grupos;
  end
  else
    UpDateCampos(Minerais, Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
      'grupo', DBMemoGrupo);
end;

procedure TFormPrincipal.DBMemoHabitoEditingDone(Sender: TObject);
begin
  UpDateCampos(Minerais, Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
    'habito', DBMemoHabito);
end;

procedure TFormPrincipal.DBMemoHabitoKeyUp(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin
  UpDateCampos(Minerais, Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
    'habito', DBMemoHabito);
end;

procedure TFormPrincipal.DBMemoH_MEditingDone(Sender: TObject);
begin
  UpDateCampos(Minerais, Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
    'habito', DBMemoHabito);
end;

procedure TFormPrincipal.DBMemoH_MKeyPress(Sender: TObject; var Key: char);
begin
  UpDateCampos(Minerais, Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
    'h_m', DBMemoH_M);
end;

procedure TFormPrincipal.DBMemoH_MKeyUp(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin
  UpDateCampos(Minerais, Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
    'h_m', DBMemoH_M);
end;

procedure TFormPrincipal.DBMemoIndice_RefracaoEditingDone(Sender: TObject);
begin
  UpDateCampos(Minerais, Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
    'indice_refracao', DBMemoIndice_Refracao);
end;

procedure TFormPrincipal.DBMemoIndice_RefracaoKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  UpDateCampos(Minerais, Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
    'indice_refracao', DBMemoIndice_Refracao);
end;

procedure TFormPrincipal.DBMemoLuminescenciaEditingDone(Sender: TObject);
begin
  UpDateCampos(Minerais, Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
    'luminescencia', DBMemoLuminescencia);
end;

procedure TFormPrincipal.DBMemoLuminescenciaKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  UpDateCampos(Minerais, Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
    'luminescencia', DBMemoLuminescencia);
end;

procedure TFormPrincipal.DBMemoMagnetismoEditingDone(Sender: TObject);
begin
  UpDateCampos(Minerais, Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
    'magnetismo', DBMemoMagnetismo);
end;

procedure TFormPrincipal.DBMemoMagnetismoKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  UpDateCampos(Minerais, Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
    'magnetismo', DBMemoMagnetismo);
end;

procedure TFormPrincipal.BitBtnRemImagemClick(Sender: TObject);
begin
  if ListboxMinerais.GetSelectedText <> EmptyStr then
  begin
    RemoveImagem('Imagem', 'minerais', StrToInt(Imagem_Selecionada), '');
  end
  else
  begin
    RemoveImagem('MineralogiaImagem', 'mineralogia', StrToInt(Imagem_Selecionada), '');
  end;
  Imagem_Selecionada := '1';
  AtualizaImagem;
end;

procedure TFormPrincipal.ActionListboxMineraisOnClickExecute(Sender: TObject);
begin
    limparichmemo;
    ProcuraMineral;
    if MenuItemAmostras.Checked then
      PreencheAmostras;
    Dados.Sqlite3DatasetAmostras.Close;
    ChartVarredura.ClearSeries;
    ChartInfravermelho.ClearSeries;
    ChartDifracao.ClearSeries;
end;

procedure TFormPrincipal.ActionListboxRruffClickExecute(Sender: TObject);
begin
  if ListboxRruff_id.GetSelectedText <> EmptyStr then
  begin
    ComboboxQuimicaDigito.Items.Clear;
    Dados.sltb:=Dados.sldb.GetTable('SELECT DISTINCT digito_quimica FROM '+
      'rruff WHERE rruff_id="'+ListboxRruff_id.GetSelectedText+
        '" ORDER BY digito_quimica ;');
    if Dados.sltb.MoveFirst then
    While not Dados.sltb.EOF do
      begin
        ComboboxQuimicaDigito.Items.Append(Dados.sltb.FieldByName['digito_quimica']);
        Dados.sltb.Next;
      end;
    ComboboxQuimicaDigito.Items.Append(AdicionarAmostra);

    ComboboxRamanDigito.Items.Clear;
    Dados.sltb:=Dados.sldb.GetTable('SELECT DISTINCT digito_raman FROM '+
      'raman WHERE rruff_id="'+ListboxRruff_id.GetSelectedText+
        '" ORDER BY digito_raman ;');
    if Dados.sltb.MoveFirst then
    While not Dados.sltb.EOF do
      begin
        ComboboxRamanDigito.Items.Append(Dados.sltb.FieldByName['digito_raman']);
        Dados.sltb.Next;
      end;
    ComboboxRamanDigito.Items.Append(AdicionarAmostra);

    ComboboxVarreduraDigito.Items.Clear;
    Dados.sltb:=Dados.sldb.GetTable('SELECT DISTINCT digito_varredura FROM '+
      'varredura WHERE rruff_id="'+ListboxRruff_id.GetSelectedText+
        '" ORDER BY digito_varredura ;');
    if Dados.sltb.MoveFirst then
    While not Dados.sltb.EOF do
      begin
        ComboboxVarreduraDigito.Items.Append(Dados.sltb.FieldByName
          ['digito_varredura']);
        Dados.sltb.Next;
      end;
    ComboboxVarreduraDigito.Items.Append(AdicionarAmostra);

    ComboboxInfravermelhoDigito.Items.Clear;
    Dados.sltb:=Dados.sldb.GetTable('SELECT DISTINCT digito_infravermelho FROM '+
      'infravermelho WHERE rruff_id="'+ListboxRruff_id.GetSelectedText+
        '" ORDER BY digito_infravermelho ;');
    if Dados.sltb.MoveFirst then
            While not Dados.sltb.EOF do
      begin
        ComboboxInfravermelhoDigito.Items.Append(Dados.sltb.FieldByName
          ['digito_infravermelho']);
        Dados.sltb.Next;
      end;
    ComboboxInfravermelhoDigito.Items.Append(AdicionarAmostra);

    ComboboxDifracaoDigito.Items.Clear;
    Dados.sltb:=Dados.sldb.GetTable('SELECT DISTINCT digito_difracao FROM '+
      'difracao WHERE rruff_id="'+ListboxRruff_id.GetSelectedText+
        '" ORDER BY digito_difracao ;');
    if Dados.sltb.MoveFirst then
    While not Dados.sltb.EOF do
      begin
        ComboboxDifracaoDigito.Items.Append(Dados.sltb.FieldByName
          ['digito_difracao']);
        Dados.sltb.Next;
      end;
     ComboboxDifracaoDigito.Items.Append(AdicionarAmostra);
    ///////
    ComboboxQuimicaDigito.ItemIndex:=0;
    ComboboxRamanDigito.ItemIndex:=0;
    ComboboxVarreduraDigito.ItemIndex:=0;
    ComboboxInfravermelhoDigito.ItemIndex:=0;
    ComboboxDifracaoDigito.ItemIndex:=0;
  ////////////
  Dados.sltb:= Dados.sldb.GetTable('SELECT * FROM rruff WHERE especie ="'+
    ListboxMinerais.GetSelectedText+'" AND rruff_id="'+
      ListboxRruff_id.GetSelectedText+'" AND digito_quimica="'+
        ComboboxQuimicaDigito.Text+'";');
  MemoAmostraEspecie.Text:=Dados.sltb.FieldByName['especie'];
  MemoAmostraRruff_id.Text:=Dados.sltb.FieldByName['rruff_id'];
  MemoAmostraQuimica.Text:=Dados.sltb.FieldByName['quimicaideal'];
  MemoLocalidade.Text:=Dados.sltb.FieldByName['localidade'];
  MemoFonte.Text:=Dados.sltb.FieldByName['fonte'];
  MemoProprietario.Text:=Dados.sltb.FieldByName['proprietario'];
  MemoAmostraDescricao.Text:=Dados.sltb.FieldByName['descricao_amostra'];
  MemoSituacao.Text:=Dados.sltb.FieldByName['situacao'];

  MemoQuimicaRruff_id.Text:=Dados.sltb.FieldByName['rruff_id'];
  MemoQuimicaDescricao.Text:=Dados.sltb.FieldByName['descricao_quimica'];
  MemoQuimicaMedida.Text:=Dados.sltb.FieldByName['quimicamedida'];

  self.ImageAmostra.Picture.Graphic:=
    SelecionaImagensRruff(Dados.sltb.FieldByName['especie'],
      dados.sltb.FieldByName['rruff_id'],'', 'amostra');

  self.ImageQuimica.Picture.Graphic:=
    SelecionaImagensRruff(Dados.sltb.FieldByName['especie'],
      dados.sltb.FieldByName['rruff_id'],dados.sltb.
        FieldByName['digito_quimica'] ,'quimica');

  Dados.sltb:= Dados.sldb.GetTable('SELECT * FROM raman WHERE especie ="'+
    ListboxMinerais.GetSelectedText+'" AND rruff_id="'+
      ListboxRruff_id.GetSelectedText+'" AND digito_raman="0";');

  MemoRamanRruff_id.Text:=Dados.sltb.FieldByName['rruff_id'];
  MemoRamanDescricao.Text:=Dados.sltb.FieldByName['descricao_raman'];
  MemoPin_id.Text:=Dados.sltb.FieldByName['pin_id'];
  MemoOrientacao.Text:=Dados.sltb.FieldByName['orientacao'];
  ComboboxEquipamentoRaman.Text:=Dados.sltb.FieldByName['equipamento']; ;

  ChartRaman.ClearSeries;
    if ComboboxDirecaoLaser.Text = TodosOsDados then
    begin
      ChartRaman.AddSeries(PlotarGrafico(
        Dados.DeterminaArquivo(ListboxMinerais.GetSelectedText,
          ListboxRruff_id.GetSelectedText, ComboboxRamanDigito.Text,
            EspectroRAMAN, ComboboxEquipamentoRaman.Text, Angulo0), 'Azul'));

      ChartRaman.AddSeries(PlotarGrafico(
        Dados.DeterminaArquivo(ListboxMinerais.GetSelectedText,
          ListboxRruff_id.GetSelectedText, ComboboxRamanDigito.Text,
            EspectroRAMAN, ComboboxEquipamentoRaman.Text, Angulo45), 'Verde'));

      ChartRaman.AddSeries(PlotarGrafico(
        Dados.DeterminaArquivo(ListboxMinerais.GetSelectedText,
          ListboxRruff_id.GetSelectedText, ComboboxRamanDigito.Text,
            EspectroRAMAN, ComboboxEquipamentoRaman.Text, Angulo90), 'Vermelho'));

      ChartRaman.AddSeries(PlotarGrafico(
        Dados.DeterminaArquivo(ListboxMinerais.GetSelectedText,
          ListboxRruff_id.GetSelectedText, ComboboxRamanDigito.Text,
            EspectroRAMAN, ComboboxEquipamentoRaman.Text, Depolarizado), ''));

    end
    else
    begin
      if ComboboxDirecaoLaser.Text = Angulo0 then
        ChartRaman.AddSeries(PlotarGrafico(
        Dados.DeterminaArquivo(ListboxMinerais.GetSelectedText,
          ListboxRruff_id.GetSelectedText, ComboboxRamanDigito.Text,
            EspectroRAMAN, ComboboxEquipamentoRaman.Text,
              ComboboxDirecaoLaser.Text), 'Azul'))
      else
      if ComboboxDirecaoLaser.Text = Angulo45 then
        ChartRaman.AddSeries(PlotarGrafico(
        Dados.DeterminaArquivo(ListboxMinerais.GetSelectedText,
          ListboxRruff_id.GetSelectedText, ComboboxRamanDigito.Text,
            EspectroRAMAN, ComboboxEquipamentoRaman.Text,
              ComboboxDirecaoLaser.Text), 'Verde'))
      else
      if ComboboxDirecaoLaser.Text = Angulo90 then
        ChartRaman.AddSeries(PlotarGrafico(
        Dados.DeterminaArquivo(ListboxMinerais.GetSelectedText,
          ListboxRruff_id.GetSelectedText, ComboboxRamanDigito.Text,
            EspectroRAMAN, ComboboxEquipamentoRaman.Text,
              ComboboxDirecaoLaser.Text), 'Vermelho'))
      else
      ChartRaman.AddSeries(PlotarGrafico(
        Dados.DeterminaArquivo(ListboxMinerais.GetSelectedText,
          ListboxRruff_id.GetSelectedText, ComboboxRamanDigito.Text,
            EspectroRAMAN, ComboboxEquipamentoRaman.Text,
              ComboboxDirecaoLaser.Text), ''));
    end;

  Dados.sltb:= Dados.sldb.GetTable('SELECT * FROM varredura WHERE especie ="'+
    ListboxMinerais.GetSelectedText+'" AND rruff_id="'+
      ListboxRruff_id.GetSelectedText+'" AND digito_varredura="0";');
  MemoVarreduraRruff_id.Text:= Dados.sltb.FieldByName['rruff_id'];
  MemoVarreduraDescricao.Text:= Dados.sltb.FieldByName['descricao_varredura'];
  ComboboxEquipamentoVarredura.Text:=Dados.sltb.FieldByName['equipamento']; ;

  ChartVarredura.AddSeries(PlotarGrafico(
        Dados.DeterminaArquivo(ListboxMinerais.GetSelectedText,
          ListboxRruff_id.GetSelectedText, ComboboxVarreduraDigito.Text,
           'Ampla Varredura', ComboboxEquipamentoVarredura.Text, ComboboxVarreduraOnda.Text),''));


  Dados.sltb:= Dados.sldb.GetTable('SELECT * FROM infravermelho WHERE especie ="'+
    ListboxMinerais.GetSelectedText+'" AND rruff_id="'+
      ListboxRruff_id.GetSelectedText+'" AND digito_infravermelho="0";');
  MemoInfravermelhoRruff_id.Text:=Dados.sltb.FieldByName['rruff_id'];
  MemoInfravermelhoDescricao.Text:=
    Dados.sltb.FieldByName['descricao_infravermelho'];;
  MemoInfravermelhoResolucao.Text:=Dados.sltb.FieldByName['resolucao'];
  ComboboxEquipamentoInfravermelho.Text:=Dados.sltb.FieldByName['equipamento']; ;

  ChartInfravermelho.AddSeries(PlotarGrafico(
        Dados.DeterminaArquivo(ListboxMinerais.GetSelectedText,
          ListboxRruff_id.GetSelectedText, ComboboxInfravermelhoDigito.Text,
            'Espectro Infravermelho', ComboboxEquipamentoInfravermelho.Text,''),''));

  Dados.sltb:= Dados.sldb.GetTable('SELECT * FROM difracao WHERE especie ="'+
    ListboxMinerais.GetSelectedText+'" AND rruff_id="'+
      ListboxRruff_id.GetSelectedText+'" AND digito_difracao="0";');
  MemoRruff_id.Text:=Dados.sltb.FieldByName['rruff_id'];
  MemoA.Text:=Dados.sltb.FieldByName['a'];
  MemoB.Text:=Dados.sltb.FieldByName['b'];
  MemoC.Text:=Dados.sltb.FieldByName['c'];
  MemoAlpha.Text:=Dados.sltb.FieldByName['alpha'];
  MemoBeta.Text:=Dados.sltb.FieldByName['beta'];
  MemoGamma.Text:=Dados.sltb.FieldByName['gamma'];
  MemoVolume.Text:=Dados.sltb.FieldByName['volume'];
  MemoSistemaCristalino.Text:=Dados.sltb.FieldByName['sistema_cristalino'];

  ChartDifracao.AddSeries(PlotarGrafico(Dados.DeterminaArquivo(
    ListboxMinerais.GetSelectedText, ListboxRruff_id.GetSelectedText,
      ComboboxDifracaoDigito.Text, 'Difracao', '', ''),''));
  end;
end;

procedure TFormPrincipal.ActionListboxRruffDoubleClickExecute(Sender: TObject);
begin
  if ListboxRruff_id.GetSelectedText <> EmptyStr then
  begin
    FormFichaAmostra:=TFormFichaAmostra.Create(nil);
    FormFichaAmostra.Especie:=ListboxMinerais.GetSelectedText;
    FormFichaAmostra.Rruff_id:=ListboxRruff_id.GetSelectedText;
    with FormFichaAmostra do
    begin
      Indice:=PageControlRruff.TabIndex;
      Caption:=ListboxMinerais.GetSelectedText+' - '+ListboxRruff_id.GetSelectedText;
      Show;
    end;
  end
  else
  ShowMessage('Selecione uma amostra da lista para ver a ficha.');
end;

procedure TFormPrincipal.ActionPreencheListaExecute(Sender: TObject);
begin
  Preenche_Lista;
end;

procedure TFormPrincipal.ActionRemoveDataExecute(Sender: TObject);
begin
  if PageControlRruff.ActivePageIndex = 3 then
  begin
    RemoveImagem('arquivo_varredura', 'varredura', 0, ListboxRruff_id.GetSelectedText);
    ChartVarredura.ClearSeries;
  end
  else
  if PageControlRruff.ActivePageIndex = 4 then
  begin
    RemoveImagem('infravermelho', 'rruff', 0, ListboxRruff_id.GetSelectedText);
    ChartInfravermelho.ClearSeries;
  end;
end;

procedure TFormPrincipal.ActionSelectDatabaseExecute(Sender: TObject);
begin
  if (FormSelecionaBD.ListBoxSeleciona.GetSelectedText <> EmptyStr) then
  begin
    if Dados.determinaBD(FormSelecionaBD.ListBoxSeleciona.GetSelectedText) then
    begin
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
    FormSelecionaBd.Visible := False;
    FormPrincipal.Show;
    end
    else
    ShowMessage('O banco de dados selecionado não é compatível.');
  end;
end;

procedure TFormPrincipal.ActionVarreduraComprimentoOndaExecute(Sender: TObject);
begin
   if ListboxRruff_id.GetSelectedText <> EmptyStr then
  begin
    AtualizaComboboxRruff(ComboboxEquipamentoVarredura,'');
      ChartVarredura.ClearSeries;
      ChartVarredura.AddSeries(PlotarGrafico(Dados.DeterminaArquivo(
        ListboxMinerais.GetSelectedText, ListboxRruff_id.GetSelectedText,
          ComboboxVarreduraDigito.Text
          , 'Ampla Varredura', ComboboxEquipamentoVarredura.Text,
            ComboboxVarreduraOnda.Text),''));
  end;
end;

procedure TFormPrincipal.ActionListboxMineraisDoubleClickExecute(Sender: TObject
  );
begin
  if ListboxMinerais.GetSelectedText <> EmptyStr then
  begin
    FormFichaEspecie:=TFormFichaEspecie.Create(nil);
   // FormFichaEspecie.Indice:=PageControlFicha.TabIndex;
    with FormFichaEspecie do
    begin
      Caption:=ListboxMinerais.GetSelectedText;
      Show;
    end;
  end;
end;

procedure TFormPrincipal.ActionAdicionarImagemRruffExecute(Sender: TObject);
//var FindNil:Boolean; I:Integer;
begin
  //Abrir Form para inserção de imagens

  {if (not PanelRruff.Visible) then
  begin
    if ListBoxMinerais.GetSelectedText <> EmptyStr then
    begin
      Case PageControlFicha.TabIndex of
        0..2,4:begin
            I:=0;
            while not FindNil do
            begin
              Inc(I);
              if i=6 then FindNil = True;
              Dados.sltb:=Dados.sldb.GetTable('SELECT imagem'+IntToStr(I)+
                ' FROM minerais WHERE nome="'+ListboxMinerais.GetSelectedText+
                  '" ;');
              MS := sltb.FieldAsBlob(sltb.FieldIndex['imagem'IntToStr(I)]);
              if MS = nil then
              begin
                Adiciona_Imagem(IntToStr(I));
                FindNil:=True;
              end;
            end;
          end;
        3:begin
            I:=5;
            while not FindNil do
            begin
              Inc(I);
              if i=8 then FindNil = True;
              Dados.sltb:=Dados.sldb.GetTable('SELECT imagem'+IntToStr(I)+
                ' FROM minerais WHERE nome="'+ListboxMinerais.GetSelectedText+
                  '" ;');
              MS := sltb.FieldAsBlob(sltb.FieldIndex['imagem'IntToStr(I)]);
              if MS = nil then
              begin
                Adiciona_Imagem(IntToStr(I));
                FindNil:=True;
              end;
            end;
        end;
      end;
    end
    else
    begin
      ///adicionar images didaticas
    end;
  end
  else
  begin
    if ListboxRruff_id.GetSelectedText <> EmptyStr then
    begin
      OpenPictureDialog1.FileName := EmptyStr;
      if OpenPictureDialog1.Execute then
      begin
        if OpenPictureDialog1.FileName <> EmptyStr then
        begin
          if PageControlRruff.ActivePageIndex = 0 then
          begin
            self.ImageAmostra.Picture.Graphic :=
              AdicionaImagemRruff(ListboxMinerais.GetSelectedText,
                ListboxRruff_id.GetSelectedText,'', OpenPictureDialog1.FileName,
                  'Amostra');
          end
          else
          if PageControlRruff.ActivePageIndex = 1 then
          begin
            self.ImageAmostra.Picture.Graphic :=
              AdicionaImagemRruff(ListboxMinerais.GetSelectedText,
                ListboxRruff_id.GetSelectedText, ComboboxQuimicaDigito.Text
                  ,OpenPictureDialog1.FileName, 'Quimica');
          end;
        end;
      end;
    end
    else
    ShowMessage('Escolha uma amostra para adicionar imagem.');
  end;   }
end;

procedure TFormPrincipal.ActionCheckDataExecute(Sender: TObject);
begin
  if PageControlRruff.ActivePageIndex <> 0 then
  begin
     FormPlanilha:=TFormPlanilha.Create(nil);
     with FormPlanilha do
     begin
       Caption:=ListboxMinerais.GetSelectedText+' - '+ListboxRruff_id.GetSelectedText;
     end;
    if PageControlRruff.ActivePageIndex = 1 then
    begin
      FormPlanilha.ArquivoPlanilha(ListboxMinerais.GetSelectedText,
        ListboxRruff_id.GetSelectedText, ComboboxQuimicaDigito.Text,'Microssonda',
          '', '');
    end
    else
    if PageControlRruff.ActivePageIndex = 2 then
    begin
      FormPlanilha.ArquivoPlanilha(ListboxMinerais.GetSelectedText,
        ListboxRruff_id.GetSelectedText, ComboboxRamanDigito.Text,'RAMAN',
          COmboboxEquipamentoRaman.Text, ComboboxDirecaoLaser.Text);
    end
    else
    if PageControlRruff.ActivePageIndex = 3 then
    begin
      FormPlanilha.ArquivoPlanilha(ListboxMinerais.GetSelectedText,
        ListboxRruff_id.GetSelectedText, ComboboxVarreduraDigito.Text,'Ampla Varredura',
         ComboboxEquipamentoVarredura.Text, ComboboxVarreduraOnda.Text);
    end
    else
    if PageControlRruff.ActivePageIndex = 4 then
    begin
      FormPlanilha.ArquivoPlanilha(ListboxMinerais.GetSelectedText,
        ListboxRruff_id.GetSelectedText, ComboboxInfravermelhoDigito.Text,
          'Espectro Infravermelho', ComboboxEquipamentoInfravermelho.Text, '');
    end
    else
    if PageControlRruff.ActivePageIndex = 5 then
    begin
      FormPlanilha.ArquivoPlanilha(ListboxMinerais.GetSelectedText,
        ListboxRruff_id.GetSelectedText, ComboboxDifracaoDigito.Text,'Difracao',
         '', '');
    end;
    FormPlanilha.Show;
  end;
end;

procedure TFormPrincipal.ActionAddDataExecute(Sender: TObject);
begin
   if ListboxRruff_id.GetSelectedText <> EmptyStr then
  begin
    if OpenDialog1.Execute then
    begin
      if OpenDialog1.FileName <> EmptyStr then
      begin
        if PageCOntrolRruff.ActivePageIndex = 1 then
        begin
          Dados.SalvaArquivo(ListboxMinerais.GetSelectedText,
            ListboxRruff_id.GetSelectedText, '','Microssonda', '',
              '', Opendialog1.FileName);
        end;
        if PageControlRruff.ActivePageIndex = 2 then
        begin
          if ComboboxDirecaoLaser.Text <> 'Todos os Dados' then
          begin
            Dados.SalvaArquivo(ListboxMinerais.GetSelectedText,
              ListboxRruff_id.GetSelectedText, ComboboxRamanDigito.Text,
                'RAMAN', ComboboxEquipamentoRaman.Text,
                  ComboboxDirecaoLaser.Text, Opendialog1.FileName);

            ChartRaman.AddSeries(PlotarGrafico(Dados.DeterminaArquivo(
              ListboxMinerais.GetSelectedText, ListboxRruff_id.GetSelectedText,
                ComboboxRamanDigito.Text, EspectroRAMAN,
                  ComboboxEquipamentoRaman.Text,
                    ComboboxDirecaoLaser.Text),''));
          end
          else ShowMessage('Escolha a Direção de Polarização do Laser.');
        end
        else
        if PageControlRruff.ActivePageIndex = 3 then
        begin
          Dados.SalvaArquivo(ListboxMinerais.GetSelectedText,
            ListboxRruff_id.GetSelectedText, ComboboxVarreduraDigito.Text,
              'Ampla Varredura', ComboboxEquipamentoVarredura.Text,
               ComboboxVarreduraOnda.Text, Opendialog1.FileName);
          ChartVarredura.AddSeries(PlotarGrafico( Dados.DeterminaArquivo(
            ListboxMinerais.GetSelectedText, ListboxRruff_id.GetSelectedText,
              ComboboxVarreduraDigito.Text, 'Ampla Varredura',
                ComboboxEquipamentoVarredura.Text, ComboboxVarreduraOnda.Text),''));
        end
        else
        if PageControlRruff.ActivePageIndex = 4 then
        begin
          Dados.SalvaArquivo(ListboxMinerais.GetSelectedText,
          ListboxRruff_id.GetSelectedText, ComboboxInfravermelhoDigito.Text,
           'Espectro Infravermelho',
             ComboboxEquipamentoInfravermelho.Text, '', Opendialog1.FileName);
          ChartInfravermelho.AddSeries(PlotarGrafico(
            Dados.DeterminaArquivo(ListboxMinerais.GetSelectedText,
             ListboxRruff_id.GetSelectedText, ComboboxInfravermelhoDigito.Text,
              'Espectro Infravermelho', ComboboxEquipamentoInfravermelho.Text, ''),''));
        end
        else
        if PageControlRruff.ActivePageIndex  = 5 then
        begin
          Dados.SalvaArquivo(ListboxMinerais.GetSelectedText,
            ListboxRruff_id.GetSelectedText, COmboboxDifracaoDigito.Text,
             'Difracao', '', '', Opendialog1.FileName);
          ChartDifracao.AddSeries(PlotarGrafico(Dados.DeterminaArquivo(
            ListboxMinerais.GetSelectedText, ListboxRruff_id.GetSelectedText,
              ComboboxDifracaoDigito.Text, 'Difracao', '', ''),''));
        end;
      end;
    end;
  end
  else
  ShowMessage('Escolha uma amostra para inserir dados.');
end;

procedure TFormPrincipal.ActionRamanDirecaoLaserExecute(Sender: TObject);
begin
   if ListboxRruff_id.GetSelectedText <> EmptyStr then
  begin
    ChartRaman.ClearSeries;
    if ComboboxDirecaoLaser.Text = TodosOsDados then
    begin
      ChartRaman.AddSeries(PlotarGrafico(
        Dados.DeterminaArquivo(ListboxMinerais.GetSelectedText,
          ListboxRruff_id.GetSelectedText, ComboboxRamanDigito.Text,
            EspectroRAMAN, ComboboxEquipamentoRaman.Text, Angulo0), 'Azul'));

      ChartRaman.AddSeries(PlotarGrafico(
        Dados.DeterminaArquivo(ListboxMinerais.GetSelectedText,
          ListboxRruff_id.GetSelectedText, ComboboxRamanDigito.Text,
            EspectroRAMAN, ComboboxEquipamentoRaman.Text, Angulo45), 'Verde'));

      ChartRaman.AddSeries(PlotarGrafico(
        Dados.DeterminaArquivo(ListboxMinerais.GetSelectedText,
          ListboxRruff_id.GetSelectedText, ComboboxRamanDigito.Text,
            EspectroRAMAN, ComboboxEquipamentoRaman.Text, Angulo90), 'Vermelho'));

      ChartRaman.AddSeries(PlotarGrafico(
        Dados.DeterminaArquivo(ListboxMinerais.GetSelectedText,
          ListboxRruff_id.GetSelectedText, ComboboxRamanDigito.Text,
            EspectroRAMAN, ComboboxEquipamentoRaman.Text, Depolarizado), ''));

    end
    else
    begin
      if ComboboxDirecaoLaser.Text = Angulo0 then
        ChartRaman.AddSeries(PlotarGrafico(
        Dados.DeterminaArquivo(ListboxMinerais.GetSelectedText,
          ListboxRruff_id.GetSelectedText, ComboboxRamanDigito.Text,
            EspectroRAMAN, ComboboxEquipamentoRaman.Text,
              ComboboxDirecaoLaser.Text), 'Azul'))
      else
      if ComboboxDirecaoLaser.Text = Angulo45 then
        ChartRaman.AddSeries(PlotarGrafico(
        Dados.DeterminaArquivo(ListboxMinerais.GetSelectedText,
          ListboxRruff_id.GetSelectedText, ComboboxRamanDigito.Text,
            EspectroRAMAN, ComboboxEquipamentoRaman.Text,
              ComboboxDirecaoLaser.Text), 'Verde'))
      else
      if ComboboxDirecaoLaser.Text = Angulo90 then
        ChartRaman.AddSeries(PlotarGrafico(
        Dados.DeterminaArquivo(ListboxMinerais.GetSelectedText,
          ListboxRruff_id.GetSelectedText, ComboboxRamanDigito.Text,
            EspectroRAMAN, ComboboxEquipamentoRaman.Text,
              ComboboxDirecaoLaser.Text), 'Vermelho'))
      else
      ChartRaman.AddSeries(PlotarGrafico(
        Dados.DeterminaArquivo(ListboxMinerais.GetSelectedText,
          ListboxRruff_id.GetSelectedText, ComboboxRamanDigito.Text,
            EspectroRAMAN, ComboboxEquipamentoRaman.Text,
              ComboboxDirecaoLaser.Text), ''));
    end;
  end;
end;

procedure TFormPrincipal.ActionComboboxClasseExecute(Sender: TObject);
begin
  Preenche_SubClasses;
  Preenche_Grupos;
  Preenche_SubGrupos;
  Preenche_Lista;
end;

procedure TFormPrincipal.ActionComboboxChangeEquipmentExecute(Sender: TObject);
begin
  if ListboxRruff_id.GetSelectedText <> EmptyStr then
  begin
    Case PageControlRruff.TabIndex of
    2:begin
      Dados.sldb.ExecSQL('UPDATE raman SET equipamento="'+
        ComboboxEquipamentoRaman.Text+'" WHERE (especie="'+ListboxMinerais.
          GetSelectedText+'" AND rruff_id="'+ ListboxRruff_id.GetSelectedText+
            '" AND digito_raman="'+ ComboboxRamanDigito.Text+'" AND '+
              'direcao="'+Dados.RetornaIndiceDirecaoLaser(
                ComboboxDirecaoLaser.Text)+'");');
    end;
    3:begin
      Dados.sldb.ExecSQL('UPDATE varredura SET equipamento="'+
        ComboboxEquipamentoVarredura.Text+'" WHERE (especie="'+ListboxMinerais.
          GetSelectedText+'" AND rruff_id="'+ ListboxRruff_id.GetSelectedText+
            '" AND digito_varredura="'+ ComboboxVarreduraDigito.Text+'" AND '+
              'comprimento_onda="'+Dados.RetornaIndiceDirecaoLaser(
                ComboboxVarreduraOnda.Text)+'");');
    end;
    4:begin
      Dados.sldb.ExecSQL('UPDATE infravermelho SET equipamento="'+
        ComboboxEquipamentoInfravermelho.Text+'" WHERE (especie="'+ListboxMinerais.
          GetSelectedText+'" AND rruff_id="'+ ListboxRruff_id.GetSelectedText+
            '" AND digito_infravermelho="'+ ComboboxInfravermelhoDigito.Text+'" );');
    end;
    end;
  end;
end;

procedure TFormPrincipal.ActionAddExecute(Sender: TObject);
begin

  Dados.AdicionaAmostra(ListboxMinerais.GetSelectedText, EditRruff_id.Text);
end;

procedure TFormPrincipal.ActionComboboxGrupoExecute(Sender: TObject);
begin
  Preenche_SubGrupos;
  Preenche_Lista;
end;

procedure TFormPrincipal.ActionComboboxOnChangeExecute(Sender: TObject);
  procedure OpenFormRruff;
  begin
    FormAdicionaRruff.EditNome.Text:=ListboxMinerais.GetSelectedText;
    FormAdicionaRruff.EditRruff_id.Text:=ListboxRruff_id.GetSelectedText;
    FormAdicionaRruff.EditAmostras.Text:='';

    FormAdicionaRruff.ListBox1.Clear;
    Dados.sltb:=Dados.sldb.GetTable('SELECT digito_quimica FROM rruff WHERE '+
      'digito_quimica != "0";');
    Dados.sltb.MoveFirst;
    While not Dados.sltb.EOF do
    begin
      FormAdicionaRruff.ListBox1.Items.Add(
        FormAdicionaRruff.EditRruff_id.Text+' - '+ Dados.sltb.FieldByName
          ['digito_quimica']);
      Dados.sltb.Next;
    end;

    Dados.sltb:=Dados.sldb.GetTable('SELECT digito_raman FROM raman WHERE '+
      'digito_raman != "0";');
    Dados.sltb.MoveFirst;
    While not Dados.sltb.EOF do
    begin
      FormAdicionaRruff.ListBox1.Items.Add(
        FormAdicionaRruff.EditRruff_id.Text+' - '+ Dados.sltb.FieldByName
          ['digito_raman']);
      Dados.sltb.Next;
    end;

    Dados.sltb:=Dados.sldb.GetTable('SELECT digito_varredura FROM varredura '+
      'WHERE digito_varredura !="0";');
    Dados.sltb.MoveFirst;
    While not Dados.sltb.EOF do
    begin
      FormAdicionaRruff.ListBox1.Items.Add(
        FormAdicionaRruff.EditRruff_id.Text+' - '+ Dados.sltb.FieldByName
          ['digito_varredura']);
      Dados.sltb.Next;
    end;

    Dados.sltb:=Dados.sldb.GetTable('SELECT digito_infravermelho FROM infravermelho '+
      'WHERE digito_infravermelho !="0";');
    Dados.sltb.MoveFirst;
    While not Dados.sltb.EOF do
    begin
      FormAdicionaRruff.ListBox1.Items.Add(
        FormAdicionaRruff.EditRruff_id.Text+' - '+ Dados.sltb.FieldByName
          ['digito_infravermelho']);
      Dados.sltb.Next;
    end;

    Dados.sltb:=Dados.sldb.GetTable('SELECT digito_difracao FROM difracao '+
      'WHERE digito_difracao != "0";');
    Dados.sltb.MoveFirst;
    While not Dados.sltb.EOF do
    begin
      FormAdicionaRruff.ListBox1.Items.Add(
        FormAdicionaRruff.EditRruff_id.Text+' - '+ Dados.sltb.FieldByName
          ['digito_difracao']);
      Dados.sltb.Next;
    end;

    FormAdicionaRruff.LocalAmostra:=PageControlRruff.TabIndex;
    FormAdicionaRruff.DirecaoLaser:=ComboboxDirecaoLaser.Text;
    FormAdicionaRruff.ComprimentoOnda:=ComboboxVarreduraOnda.Text;
    FormAdicionaRruff.Show;
  end;

begin
  Case PageControlRruff.TabIndex of
  1:begin
      if ComboboxQuimicaDigito.Text = AdicionarAmostra then OpenFormRruff
      else
      begin
        Dados.sltb:= Dados.sldb.GetTable('SELECT * FROM rruff WHERE especie ="'+
          ListboxMinerais.GetSelectedText+'" AND rruff_id="'+
            ListboxRruff_id.GetSelectedText+'" AND digito_quimica="'+
              ComboboxQuimicaDigito.Text+'";');
        self.ImageQuimica.Picture.Graphic:=
          SelecionaImagensRruff(Dados.sltb.FieldByName['especie'],
            dados.sltb.FieldByName['rruff_id'],dados.sltb.
              FieldByName['digito_quimica'] ,'Quimica');
      end;
    end;
  2:begin
      if ComboboxRamanDigito.Text = AdicionarAmostra then OpenFormRruff
      else
      if Trim(ComboboxRamanDigito.Text) = '0' then
      begin
        ComboboxDirecaoLaser.Items.Clear;
        ComboboxDirecaoLaser.Items.Append(Angulo0);
        ComboboxDirecaoLaser.Items.Append(Angulo45);
        ComboboxDirecaoLaser.Items.Append(Angulo90);
        ComboboxDirecaoLaser.Items.Append(Depolarizado);
        ComboboxDirecaoLaser.ItemIndex:=ComboboxDirecaoLaser.Items.
          Add(TodosOsDados);

        ChartRaman.AddSeries(PlotarGrafico(
        Dados.DeterminaArquivo(ListboxMinerais.GetSelectedText,
          ListboxRruff_id.GetSelectedText, ComboboxRamanDigito.Text,
            EspectroRAMAN, ComboboxEquipamentoRaman.Text, Angulo0), 'Azul'));

      ChartRaman.AddSeries(PlotarGrafico(
        Dados.DeterminaArquivo(ListboxMinerais.GetSelectedText,
          ListboxRruff_id.GetSelectedText, ComboboxRamanDigito.Text,
            EspectroRAMAN, ComboboxEquipamentoRaman.Text, Angulo45), 'Verde'));

      ChartRaman.AddSeries(PlotarGrafico(
        Dados.DeterminaArquivo(ListboxMinerais.GetSelectedText,
          ListboxRruff_id.GetSelectedText, ComboboxRamanDigito.Text,
            EspectroRAMAN, ComboboxEquipamentoRaman.Text, Angulo90), 'Vermelho'));

      ChartRaman.AddSeries(PlotarGrafico(
        Dados.DeterminaArquivo(ListboxMinerais.GetSelectedText,
          ListboxRruff_id.GetSelectedText, ComboboxRamanDigito.Text,
            EspectroRAMAN, ComboboxEquipamentoRaman.Text, Depolarizado), ''));
      end
      else
      begin
        ComboboxDirecaoLaser.Items.Clear;
        ComboboxDirecaoLaser.Items.Append(Onda532);
        ComboboxDirecaoLaser.Items.Append(Onda580);
        ComboboxDirecaoLaser.Items.Append(Onda732);
        ComboboxDirecaoLaser.ItemIndex:=ComboboxDirecaoLaser.Items.
          Add(TodosOsDados);

        ChartRaman.AddSeries(PlotarGrafico(
        Dados.DeterminaArquivo(ListboxMinerais.GetSelectedText,
          ListboxRruff_id.GetSelectedText, ComboboxRamanDigito.Text,
            EspectroRAMAN, ComboboxEquipamentoRaman.Text, Onda532), 'Azul'));

      ChartRaman.AddSeries(PlotarGrafico(
        Dados.DeterminaArquivo(ListboxMinerais.GetSelectedText,
          ListboxRruff_id.GetSelectedText, ComboboxRamanDigito.Text,
            EspectroRAMAN, ComboboxEquipamentoRaman.Text, Onda580), 'Verde'));

      ChartRaman.AddSeries(PlotarGrafico(
        Dados.DeterminaArquivo(ListboxMinerais.GetSelectedText,
          ListboxRruff_id.GetSelectedText, ComboboxRamanDigito.Text,
            EspectroRAMAN, ComboboxEquipamentoRaman.Text, Onda732), 'Vermelho'));
      end;
    end;
  3:begin
      if ComboboxVarreduraDigito.Text = AdicionarAmostra then OpenFormRruff
      else
      begin
        ChartVarredura.AddSeries(PlotarGrafico(
          Dados.DeterminaArquivo(ListboxMinerais.GetSelectedText,
            ListboxRruff_id.GetSelectedText, ComboboxVarreduraDigito.Text,
             'Ampla Varredura', ComboboxEquipamentoVarredura.Text,
               ComboboxVarreduraOnda.Text),''));
      end;
  end;
  4:begin
      if ComboboxInfravermelhoDigito.Text = AdicionarAmostra then OpenFormRruff
      else
      begin
        ChartInfravermelho.AddSeries(PlotarGrafico(
          Dados.DeterminaArquivo(ListboxMinerais.GetSelectedText,
            ListboxRruff_id.GetSelectedText, ComboboxInfravermelhoDigito.Text,
              'Espectro Infravermelho', ComboboxEquipamentoInfravermelho.Text,
                ''),''));
      end;
    end;
  5:begin
      if ComboboxDifracaoDigito.Text = AdicionarAmostra then OpenFormRruff
      else
      begin
        ChartDifracao.AddSeries(PlotarGrafico(Dados.DeterminaArquivo(
          ListboxMinerais.GetSelectedText, ListboxRruff_id.GetSelectedText,
            ComboboxDifracaoDigito.Text, 'Difracao', '', ''),''));
      end;
    end;
end;
end;

procedure TFormPrincipal.ActionComboboxRamanDigitoExecute(Sender: TObject);
begin

end;

procedure TFormPrincipal.ActionComboboxSubclasseExecute(Sender: TObject);
begin
  Preenche_Grupos;
  Preenche_SubGrupos;
  Preenche_Lista;
end;

procedure TFormPrincipal.ActionComboboxSubgrupoExecute(Sender: TObject);
begin
  Preenche_Lista;
end;

procedure TFormPrincipal.ActionFormEquipmentsExecute(Sender: TObject);
begin

end;

procedure TFormPrincipal.ActionImage1ClickExecute(Sender: TObject);
begin
  SelecionaImagem('1');
end;

procedure TFormPrincipal.ActionImage1DblClickExecute(Sender: TObject);
begin
  Adiciona_Imagem('1');
end;

procedure TFormPrincipal.ActionImage2ClickExecute(Sender: TObject);
begin
  SelecionaImagem('2');
end;

procedure TFormPrincipal.ActionImage2DblClickExecute(Sender: TObject);
begin
  Adiciona_Imagem('2');
end;

procedure TFormPrincipal.ActionImage3ClickExecute(Sender: TObject);
begin
  SelecionaImagem('3');
end;

procedure TFormPrincipal.ActionImage3DblClickExecute(Sender: TObject);
begin
  Adiciona_Imagem('3');
end;

procedure TFormPrincipal.ActionImage4ClickExecute(Sender: TObject);
begin
  SelecionaImagem('4');
end;

procedure TFormPrincipal.ActionImage4DblClickExecute(Sender: TObject);
begin
  Adiciona_Imagem('4');
end;

procedure TFormPrincipal.ActionImage5ClickExecute(Sender: TObject);
begin
  SelecionaImagem('5');
end;

procedure TFormPrincipal.ActionImage5DblClickExecute(Sender: TObject);
begin
  Adiciona_Imagem('5');
end;

procedure TFormPrincipal.ActionImage6ClickExecute(Sender: TObject);
begin
  SelecionaImagem('6');
end;

procedure TFormPrincipal.ActionImage6DblClickExecute(Sender: TObject);
begin
  Adiciona_Imagem('6');
end;

procedure TFormPrincipal.ActionImage7ClickExecute(Sender: TObject);
begin
  SelecionaImagem('7');
end;

procedure TFormPrincipal.ActionImage7DblClickExecute(Sender: TObject);
begin
  Adiciona_Imagem('7');
end;

procedure TFormPrincipal.ActionImageAmostraDblClickExecute(Sender: TObject);
begin
 if ListboxRruff_id.GetSelectedText <> EmptyStr then
  begin
    OpenPictureDialog1.FileName := EmptyStr;
    if OpenPictureDialog1.Execute then
    begin
      if OpenPictureDialog1.FileName <> EmptyStr then
      begin
        self.ImageAmostra.Picture.Graphic :=
          AdicionaImagemRruff(ListboxMinerais.GetSelectedText,
          ListboxRruff_id.GetSelectedText, ''
            ,OpenPictureDialog1.FileName, 'amostra');
      end;
    end;
  end
  else
  ShowMessage('Escolha uma amostra paa adicionar uma imagem.');
end;

procedure TFormPrincipal.ActionListboxDigitoExecute(Sender: TObject);
var Aux:String; Aux2:Integer;
begin
  Aux:=FormAdicionaRruff.ListBox1.GetSelectedText;
  Aux:=StringReplace(Aux, FormAdicionaRruff.EditRruff_id.Text, '',[rfReplaceAll]);
  Aux:=StringReplace(Aux, '-', '',[rfReplaceAll]);
  Case FormAdicionaRruff.LocalAmostra of
    1:begin
      ComboboxQuimicaDigito.ItemIndex:=ComboboxQuimicaDigito.Items.Add(Aux);
      Dados.sltb:=Dados.sldb.GetTable('SELECT especie, rruff_id, digito_quimica '+
        'FROM rruff WHERE especie="'+ListboxMinerais.GetSelectedText+'" AND '+
          'rruff_id="'+ListboxRruff_id.GetSelectedText+'" AND digito_quimica='+
            '"'+ComboboxQuimicaDigito.Text+'";');
      if Dados.sltb.RowCount = 0 then
      Dados.sldb.ExecSQL('INSERT INTO rruff (especie, rruff_id, digito_quimica) VALUES '+
        '("'+ListboxMinerais.GetSelectedText+'", "'+ListBoxRruff_id.
          GetSelectedText+'", "'+ComboboxQuimicaDigito.Text+'");')
      else
      ShowMessage('Já existe uma amostra com essas especificações');
    end;
    2:begin
      ComboboxRamanDigito.ItemIndex:=ComboboxRamanDigito.Items.Add(Aux);
      Dados.sltb:=Dados.sldb.GetTable('SELECT especie, rruff_id, digito_raman '+
        'FROM raman WHERE especie="'+ListboxMinerais.GetSelectedText+'" AND '+
          'rruff_id="'+ListboxRruff_id.GetSelectedText+'" AND digito_raman='+
            '"'+ComboboxRamanDigito.Text+'";');
      if Dados.sltb.RowCount = 0 then
      Dados.sldb.ExecSQL('INSERT INTO raman (especie, rruff_id, digito_raman) VALUES '+
        '("'+ListboxMinerais.GetSelectedText+'", "'+ListBoxRruff_id.
          GetSelectedText+'", "'+ComboboxRamanDigito.Text+'");')
      else
      ShowMessage('Já existe uma amostra com essas especificações');
    end;
    3:begin
      ComboboxVarreduraDigito.ItemIndex:=ComboboxVarreduraDigito.Items.Add(Aux);
      Dados.sltb:=Dados.sldb.GetTable('SELECT especie, rruff_id, digito_varredura '+
        'FROM varredura WHERE especie="'+ListboxMinerais.GetSelectedText+'" AND '+
          'rruff_id="'+ListboxRruff_id.GetSelectedText+'" AND digito_varredura='+
            '"'+ComboboxVarreduraDigito.Text+'";');
      if Dados.sltb.RowCount = 0 then
      Dados.sldb.ExecSQL('INSERT INTO varredura (especie, rruff_id, '+
        'digito_varredura) VALUES ("'+ListboxMinerais.GetSelectedText+'", "'
          +ListBoxRruff_id.GetSelectedText+'", "'+ComboboxVarreduraDigito.Text+'");')
      else
      ShowMessage('Já existe uma amostra com essas especificações');
    end;
    4:begin
      ComboboxInfravermelhoDigito.ItemIndex:=ComboboxInfravermelhoDigito.Items.
        Add(Aux);
      Dados.sltb:=Dados.sldb.GetTable('SELECT especie, rruff_id, digito_infravermelho '+
        'FROM infravermelho WHERE especie="'+ListboxMinerais.GetSelectedText+'" AND '+
          'rruff_id="'+ListboxRruff_id.GetSelectedText+'" AND digito_infravermelho='+
            '"'+ComboboxInfravermelhoDigito.Text+'";');
      if Dados.sltb.RowCount = 0 then
      Dados.sldb.ExecSQL('INSERT INTO infravermelho (especie, rruff_id, '+
        'digito_infravermelho) VALUES ("'+ListboxMinerais.GetSelectedText
           +'", "'+ListBoxRruff_id.GetSelectedText+'", "'+
             ComboboxInfravermelhoDigito.Text+'");')
      else
      ShowMessage('Já existe uma amostra com essas especificações');
    end;
    5:begin
      ComboboxDifracaoDigito.ItemIndex:=ComboboxDifracaoDigito.Items.
        Add(Aux);
      Dados.sltb:=Dados.sldb.GetTable('SELECT especie, rruff_id, digito_difracao '+
        'FROM difracao WHERE especie="'+ListboxMinerais.GetSelectedText+'" AND '+
          'rruff_id="'+ListboxRruff_id.GetSelectedText+'" AND digito_difracao='+
            '"'+ComboboxDifracaoDigito.Text+'";');
      if Dados.sltb.RowCount = 0 then
      Dados.sldb.ExecSQL('INSERT INTO difracao (especie, rruff_id, '+
        'digito_difracao) VALUES ("'+ListboxMinerais.GetSelectedText+'", "'+
          ListBoxRruff_id.GetSelectedText+'", "'+ComboboxDifracaoDigito.Text+'");')
      else
      ShowMessage('Já existe uma amostra com essas especificações');
    end;
  end;
  FormAdicionaRruff.Close;
end;

procedure TFormPrincipal.ActionImageQuimicaDblClickExecute(Sender: TObject);
begin
  if ListboxRruff_id.GetSelectedText <> EmptyStr then
  begin
    OpenPictureDialog1.FileName := EmptyStr;
    if OpenPictureDialog1.Execute then
    begin
      if OpenPictureDialog1.FileName <> EmptyStr then
      begin
        self.ImageQuimica.Picture.Graphic :=
          AdicionaImagemRruff(ListboxMinerais.GetSelectedText,
          ListboxRruff_id.GetSelectedText, ComboboxQuimicaDigito.Text
            ,OpenPictureDialog1.FileName, 'quimica');
      end;
    end;
  end
  else
  ShowMessage('Escolha uma amostra para adicionar uma imagem.');
end;

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
end;

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
end;

procedure TFormPrincipal.DBMemoOCorrenciaEditingDone(Sender: TObject);
begin
  UpDateCampos(Minerais, Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
    'ocorrencia', DBMemoOcorrencia);
end;

procedure TFormPrincipal.DBMemoOCorrenciaKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  UpDateCampos(Minerais, Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
    'ocorrencia', DBMemoOcorrencia);
end;

procedure TFormPrincipal.DBMemoRelevoEditingDone(Sender: TObject);
begin
  UpDateCampos(Minerais, Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
    'relevo', DBMemoRelevo);
end;

procedure TFormPrincipal.DBMemoRelevoKeyUp(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin
  UpDateCampos(Minerais, Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
    'relevo', DBMemoRelevo);
end;

procedure TFormPrincipal.DBMemoSinal_ElongacaoEditingDone(Sender: TObject);
begin
  UpDateCampos(Minerais, Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
    'sinal_elongacao', DBMemoSinal_Elongacao);
end;

procedure TFormPrincipal.DBMemoSinal_ElongacaoKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  UpDateCampos(Minerais, Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
    'sinal_elongacao', DBMemoSinal_Elongacao);
end;

procedure TFormPrincipal.DBMemoSinal_OpticoEditingDone(Sender: TObject);
begin
  UpDateCampos(Minerais, Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
    'sinal_optico', DBMemoSinal_Optico);
end;

procedure TFormPrincipal.DBMemoSinal_OpticoKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  UpDateCampos(Minerais, Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
    'sinal_optico', DBMemoSinal_Optico);
end;

procedure TFormPrincipal.DBMemoSistemaCristalinoEditingDone(Sender: TObject);
begin

end;

procedure TFormPrincipal.DBMemoSistemaCristalinoKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin

end;

procedure TFormPrincipal.DBMemoSistemaEditingDone(Sender: TObject);
begin
  UpDateCampos(Minerais, Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
    'sistema', DBMemoSistema);
end;

procedure TFormPrincipal.DBMemoSistemaKeyUp(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin
  UpDateCampos(Minerais, Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
    'sistema', DBMemoSistema);
end;

procedure TFormPrincipal.DBMemoSubclasseEditingDone(Sender: TObject);
begin
  UpDateCampos(Minerais, Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
    'subclasse', DBMemoSubClasse);
end;

procedure TFormPrincipal.DBMemoSubclasseKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  if (Key = 13) then
  begin
    sltb := sldb.GetTable('UPDATE minerais SET subclasse = "' + Copy(
      DBMemoSubClasse.Text, 0, Length(DBMemoSubClasse.Text) - 1) +
      '" WHERE nome = "' + DBMemoNome.Text + '";');
    Preenche_SubClasses;
  end
  else
    UpDateCampos(Minerais, Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
      'subclasse', DBMemoSubClasse);
end;

procedure TFormPrincipal.DBMemoSubgrupoEditingDone(Sender: TObject);
begin
  UpDateCampos(Minerais, Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
    'subgrupo', DBMemoSubGrupo);
end;

procedure TFormPrincipal.DBMemoSubgrupoKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  if (Key = 13) then
  begin
    sltb := sldb.GetTable('UPDATE minerais SET subgrupo = "' + Copy(
      DBMemoSubGrupo.Text, 0, Length(DBMemoSubGrupo.Text)) +
      '" WHERE nome = "' + DBMemoNome.Text + '";');
    Preenche_SubGrupos;
  end
  else
    UpDateCampos(Minerais, Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
      'subgrupo', DBMemoSubGrupo);
end;

procedure TFormPrincipal.DBMemoTracoEditingDone(Sender: TObject);
begin
  UpDateCampos(Minerais, Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
    'traco', DBMemoTraco);
end;

procedure TFormPrincipal.DBMemoTracoKeyUp(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin
  UpDateCampos(Minerais, Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString,
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
    Den_Max := StringReplace(EditDensidade_Max.Text, ',', '.', []);
    EditDensidade_Max.Text := Den_Max;
    Preenche_Lista;
  end;
end;

procedure TFormPrincipal.EditDensidade_minEditingDone(Sender: TObject);
begin
  if (EditDensidade_Min.Text <> Den_Min) then
  begin
    Den_Min := StringReplace(EditDensidade_Min.Text, ',', '.', []);
    EditDensidade_Min.Text := Den_Min;
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
  BancoDados, Diretorio, Ordenamento: string;
begin
  Fonte.Style := [fsitalic];
  Fonte2.Style := [];
  FonteNormal.style := [fsbold];
  //fonte.Color := 1;
  //fonte2.Color := 1;
  //FonteNormal.Color := 1;

  Tipo := EmptyStr;
  Imagem_Selecionada := '1';
  limpaDD;
  LimpaRichMemo;
  Application.CreateForm(TFormSelecionaBD, FormSelecionaBD);
  Diretorio := GetCurrentDir + '\Data\config.ini';
  Config := TIniFile.Create(Diretorio);
  BancoDados := Config.ReadString('Configuracoes', 'BD', '');
  if Config.ReadString('Configuracoes', 'Comprimento', '') <> EmptyStr then
    FormPrincipal.Width := StrToInt(Config.ReadString('Configuracoes', 'Comprimento', ''));
  if Config.ReadString('Configuracoes', 'Altura', '') <> EmptyStr then
    FormPrincipal.Height := StrToInt(Config.ReadString('Configuracoes', 'Altura', ''));

  Ordenamento := Config.ReadString('Configuracoes', 'Ordem', 'Alfabetica');
  if Upcase(Trim(Ordenamento)) = Upcase('Densidade') then
    MenuItemDensidade.Checked := True
  else
  if Upcase(Trim(Ordenamento)) = Upcase('Dureza') then
    MenuItemDureza.Checked := True
  else
  if Upcase(Trim(Ordenamento)) = Upcase('Alfabetica') then
    MenuItemAlfabetica.Checked := True;

  if Config.ReadString('Configuracoes', 'Fonte', '') = 'Grande' then
    MenuItemGrande.Checked := True
  else
    MenuItemNormal.Checked := True;
  if Config.ReadBool('Configuracoes', 'PainelFiltro', False) then
  begin
    BGRAPanelFiltro.Visible := True;
    MenuItemPanelFiltro.Checked := True;
  end;
  if Config.ReadBool('Configuracoes', 'PainelImagem', True) then
  begin
    MenuItemImagePanel.Checked := True;
    BGRAPanelImagens.Visible := True;
  end;
  if Config.ReadBool('Configuracoes', 'ModoEdicao', False) then
  begin
    ModoEdicao;
  end;
  if Config.ReadBool('Configuracoes', 'PainelAmostras', False) then
  begin
    MenuItemAmostras.Checked := True;
    BGRAPanelRruff_id.Visible := True;
    PanelRruff.Visible := True;
    PanelFicha.Visible := False;
  end;
  Config.Free;
  MudarFonte;
  if FileExists(BancoDados) then
  begin
    if Dados.DeterminaBD(BancoDados) then
    begin
      sldb := TSQLiteDatabase.Create(BancoDados);
      Dados.Sqlite3DatasetDidatico.Open();
      Preenche_Classes;
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
    DatasetFileName := Dados.Sqlite3DatasetGeral.Filename;
  end;
  openpicturedialog1.Filter := lista_formatos;
  OpenDialog1.Filter := 'All Files | *.csv; *.txt; *.dat; *.*;';

  //criar lista de equipamentos para os comboboxes:
  if Dados.Sqlite3DatasetGeral.FileName <> EmptyStr then
  begin
    Dados.sltb:= Dados.sldb.GetTable('SELECT nome FROM instrumentos ;');
    if Dados.sltb.MoveFirst then
    begin
      while not Dados.sltb.EOF do
      begin
        ComboboxEquipamentoRaman.items.Append(Dados.sltb.FieldByName['nome']);
        Dados.sltb.Next;
      end;
    end;
    ComboboxEquipamentoVarredura.Items:=ComboboxEquipamentoRaman.Items;
    ComboboxEquipamentoInfravermelho.Items:=ComboboxEquipamentoRaman.Items;
  end;
  if MenuItemEspecies.Checked then BitBtn1.Enabled:=True
  else BitBtn1.Enabled:=False;
  if MenuItemAmostras.Checked then BitBtn3.Enabled:=True
  else BitBtn3.Enabled:=False;
end;

procedure TFormPrincipal.FormResize(Sender: TObject);
var
  Comprimento, Altura: integer;
begin
  LabelNome.Top := Trunc(GroupBoxInf_Gerais.Height * 0.066);
  DBMemoNome.Top := LabelNome.Top;
  LabelClasse.Top := Trunc(GroupBoxInf_Gerais.Height * 0.134);
  DBMemoClasse.Top := LabelClasse.Top;
  LabelSubClasse.Top := Trunc(GroupBoxInf_Gerais.Height * 0.188);
  DBMemoSubClasse.Top := LabelSubclasse.Top;
  LabelGrupo.Top := Trunc(GroupBoxInf_Gerais.Height * 0.242);
  DBMemoGrupo.Top := LabelGrupo.Top;
  LabelSubGrupo.Top := Trunc(GroupBoxInf_Gerais.Height * 0.297);
  DBMemoSubGrupo.Top := LabelSubGrupo.Top;
  LabelOcorrencia.Top := Trunc(GroupBoxInf_Gerais.Height * 0.355);
  DBMemoOcorrencia.Top := LabelOcorrencia.Top;
  DBMemoOcorrencia.Height := Trunc(GroupBoxInf_Gerais.Height * 0.11);
  LabelAssociacao.Top := Trunc(GroupBoxInf_Gerais.Height * 0.48);
  DBMemoAssociacao.Top := LabelAssociacao.Top;
  DBMemoAssociacao.Height := DBMemoOcorrencia.Height;
  LabelDistincao.Top := Trunc(GroupBOxInf_Gerais.Height * 0.606);
  DBMemoDistincao.Top := LabelDistincao.Top;
  DBMemoDistincao.Height := DBMemoOcorrencia.Height;
  LabelAlteracao.Top := Trunc(GroupBoxInf_Gerais.Height * 0.732);
  DBMemoAlteracao.Top := LabelAlteracao.Top;
  DBMemoAlteracao.Height := DBMemoOcorrencia.Height;
  LabelAplicacao.Top := Trunc(GroupBoxInf_Gerais.Height * 0.858);
  DBMemoAplicacao.Top := LabelAplicacao.Top;
  DBMemoAplicacao.Height := DBMemoOcorrencia.Height;

  LabelCor.Top := Trunc(GroupBoxProp_Fisicas.Height * 0.265);
  DBMemoCor.Top := LabelCor.Top;
  DBMemoCor.Height := Trunc(GroupBoxProp_Fisicas.Height * 0.1);
  LabelTraco.Top := Trunc(GroupBoxProp_Fisicas.Height * 0.385);
  DBMemoTraco.Top := LabelTraco.Top;
  DBMemoTraco.Height := DBMemoCor.Height;
  LabelBrilho.Top := Trunc(GroupBoxProp_Fisicas.Height * 0.505);
  DBMemoBrilho.Top := LabelBrilho.Top;
  DBMemoBrilho.Height := DBmemoCor.Height;
  LabelClivagem.Top := Trunc(GroupBoxProp_Fisicas.Height * 0.626);
  DBMemoClivagem.Top := LabelClivagem.Top;
  DBMemoClivagem.Height := DBMemoCor.Height;
  LabelFratura.Top := Trunc(GroupBoxProp_Fisicas.Height * 0.746);
  DBMemoFratura.Top := LabelFratura.Top;
  DBMemoFratura.Height := DBMemoCor.Height;
  LabelMagnetismo.Top := Trunc(GroupBOxProp_Fisicas.Height * 0.856);
  DBMemoMagnetismo.Top := LabelMagnetismo.Top;
  DBMemoMagnetismo.Height := Trunc(GroupBoxProp_Fisicas.Height * 0.045);
  LabelLuminescencia.Top := Trunc(GroupBoxProp_Fisicas.Height * 0.923);
  DBMemoLuminescencia.Top := LabelLuminescencia.Top;
  DBMemoLuminescencia.Height := DBMemoMagnetismo.Height;

  LabelDifaneidade.Top := Trunc(GroupBoxOpticas.Height * 0.038);
  DBMemoDifaneidade.Top := LabelDifaneidade.Top;
  DBMemoDifaneidade.Height := Trunc(GroupBoxOpticas.Height * 0.075);
  LabelSinal_Optico.Top := Trunc(GroupBoxOpticas.Height * 0.132);
  DBMemoSinal_Optico.Top := LabelSinal_Optico.Top;
  DBMemoSinal_Optico.Height := DBMemoDifaneidade.Height;
  LabelIndice_Refracao.Top := Trunc(GroupBoxOpticas.Height * 0.225);
  DBMemoIndice_Refracao.Top := LabelIndice_Refracao.Top;
  DBMemoIndice_Refracao.Height := DBMemoDifaneidade.Height;
  LabelAngulo_2v.Top := Trunc(GroupBoxOpticas.Height * 0.318);
  DBMemoAngulo.Top := LabelAngulo_2v.Top;
  DBMemoAngulo.Height := DBMemoDifaneidade.Height;
  LabelCor_Interferencia.Top := Trunc(GroupBoxOpticas.Height * 0.412);
  DBMemoCor_Interferencia.Top := LabelCor_Interferencia.Top;
  DBMemoCor_Interferencia.Height := DBMemoDifaneidade.Height;
  LabelCor_Lamina.Top := Trunc(GroupBOxOpticas.Height * 0.506);
  DBMemoCor_Lamina.Top := LabelCor_Lamina.Top;
  DBMemoCor_Lamina.Height := DBMemoDifaneidade.Height;
  LabelSinal_Elongacao.Top := Trunc(GroupBoxOpticas.Height * 0.6);
  DBMemoSinal_Elongacao.Top := LabelSinal_Elongacao.Top;
  DBMemoSinal_Elongacao.Height := DBMemoDifaneidade.Height;
  LabelBirrefringencia.Top := Trunc(GroupBoxOpticas.Height * 0.693);
  DBMemoBirrefringencia.Top := LabelBirrefringencia.Top;
  DBMemoBirrefringencia.Height := DBMemoDifaneidade.Height;
  LabelRelevo.Top := Trunc(GroupBoxOpticas.Height * 0.786);
  DBMemoRelevo.Top := LabelRelevo.Top;
  DBMemoRelevo.Height := DBMemoDifaneidade.Height;
  LabelExtincao.Top := Trunc(GroupBoxOpticas.Height * 0.880);
  DBMemoExtincao.Top := LabelExtincao.Top;
  DBMemoExtincao.Height := DBMemoDifaneidade.Height;

  LabelSistema_Cristalino.Top := Trunc(GroupBoxCristalografia.Height * 0.091);
  DBMemoSistema.Top := LabelSistema_Cristalino.Top;
  LabelClasse_Cristalina.Top := Trunc(GroupBoxCristalografia.Height * 0.242);
  DBMemoClasse_Cristalina.Top := LabelClasse_Cristalina.Top;
  LabelSimbologia.Top := Trunc(GroupboxCristalografia.Height * 0.393);
  DBMemoH_M.Top := LabelSimbologia.Top;
  LabelHabito.Top := Trunc(GroupBoxCristalografia.Height * 0.593);
  DBMemoHabito.Top := Labelhabito.Top;
  DBMemoHabito.Height := Trunc(GroupBOxCristalografia.Height * 0.295);

  Config := TINIFile.Create(GetCurrentDir + '\Data\config.ini');
  Comprimento := FormPrincipal.Width;
  Config.WriteString('Configuracoes', 'Comprimento', IntToStr(FormPrincipal.Width));
  Altura := FormPrincipal.Height;
  Config.WriteString('Configuracoes', 'Altura', IntToStr(FormPrincipal.Height));
  Config.Free;
end;

procedure TFormPrincipal.MemoAEditingDone(Sender: TObject);
begin
  UpDateRruff('difracao', ListboxRruff_id.GetSelectedText,
    'a', MemoA);
end;

procedure TFormPrincipal.MemoAKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  UpDateRruff('difracao', ListboxRruff_id.GetSelectedText,
    'a', MemoA);
end;

procedure TFormPrincipal.MemoAlphaEditingDone(Sender: TObject);
begin
  UpDateRruff('difracao', ListboxRruff_id.GetSelectedText,
    'alpha', MemoAlpha);
end;

procedure TFormPrincipal.MemoAlphaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  UpDateRruff('difracao', ListboxRruff_id.GetSelectedText,
    'alpha', MemoAlpha);
end;

procedure TFormPrincipal.MemoBEditingDone(Sender: TObject);
begin
  UpDateRruff('difracao', ListboxRruff_id.GetSelectedText,
    'b', MemoB);
end;

procedure TFormPrincipal.MemoBetaEditingDone(Sender: TObject);
begin
  UpDateRruff('difracao', ListboxRruff_id.GetSelectedText,
   'beta', MemoBeta);
end;

procedure TFormPrincipal.MemoBetaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  UpDateRruff('difracao', ListboxRruff_id.GetSelectedText,
    'beta', MemoBeta);
end;

procedure TFormPrincipal.MemoBKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  UpDateRruff('difracao', ListboxRruff_id.GetSelectedText,
    'b', MemoB);
end;

procedure TFormPrincipal.MemoCEditingDone(Sender: TObject);
begin
  UpDateRruff('difracao', ListboxRruff_id.GetSelectedText,
    'c', MemoC);
end;

procedure TFormPrincipal.MemoCKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  UpDateRruff('difracao', ListboxRruff_id.GetSelectedText,
    'c', MemoC);
end;

procedure TFormPrincipal.MemoGammaEditingDone(Sender: TObject);
begin
  UpDateRruff('difracao', ListboxRruff_id.GetSelectedText,
    'gamma', MemoGamma);
end;

procedure TFormPrincipal.MemoGammaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   UpDateRruff(difracao, ListboxRruff_id.GetSelectedText,
    'gamma', MemoGamma);
end;

procedure TFormPrincipal.MemoInfravermelhoResolucaoEditingDone(Sender: TObject);
begin
  UpDateRruff('difracao', ListboxRruff_id.GetSelectedText,
    'resolucao', MemoInfravermelhoResolucao);
end;

procedure TFormPrincipal.MemoInfravermelhoResolucaoKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  UpDateRruff('difracao', ListboxRruff_id.GetSelectedText,
    'resolucao', MemoInfravermelhoResolucao);
end;

procedure TFormPrincipal.MemoSistemaCristalinoEditingDone(Sender: TObject);
begin
  UpDateRruff(Rruff, ListboxRruff_id.GetSelectedText,
    'sistema_cristalino', MemoSistemaCristalino);
end;

procedure TFormPrincipal.MemoSistemaCristalinoKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   UpDateRruff('difracao', ListboxRruff_id.GetSelectedText,
    'sistema_cristalino', MemoSistemaCristalino);
end;

procedure TFormPrincipal.MemoVolumeEditingDone(Sender: TObject);
begin
  UpDateRruff('difracao', ListboxRruff_id.GetSelectedText,
    'volume', MemoVolume);
end;

procedure TFormPrincipal.MemoVolumeKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  UpDateRruff('difracao', ListboxRruff_id.GetSelectedText,
    'volume', MemoVolume);
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

procedure TFormPrincipal.MenuItemImagePanelClick(Sender: TObject);
begin
  Config := TIniFile.Create(GetCurrentDir + '\Data\config.ini');
  if MenuItemImagePanel.Checked then
  begin
    BGRAPanelImagens.Visible := False;
    MenuItemImagePanel.Checked := False;
    Config.WriteBool('Configuracoes', 'PainelImagem', False);
  end
  else
  begin
    if MenuItemEspecies.Checked then BGRAPanelImagens.Visible := True;
    MenuItemImagePanel.Checked := True;
    Config.WriteBool('Configuracoes', 'PainelImagem', True);
    AtualizaImagem;
  end;
  Config.Free;
end;

procedure TFormPrincipal.MenuItemPanelFiltroClick(Sender: TObject);
begin
   Config := TIniFile.Create(GetCurrentDir + '\Data\config.ini');
  if BGRAPanelFiltro.Visible then
  begin
    BGRAPanelFiltro.Visible := False;
    MenuItemPanelFiltro.Checked := False;
    Config.WriteBool('Configuracoes', 'PainelFiltro', False);
  end
  else
  begin
    if MenuItemEspecies.Checked then BGRAPanelFiltro.Visible := True;
    MenuItemPanelFiltro.Checked := True;
    Config.WriteBool('Configuracoes', 'PainelFiltro', True);
  end;
  Config.Free;
end;

procedure TFormPrincipal.MenuItemAdicionar2Click(Sender: TObject);
begin
  AdicionaMineral;
end;

procedure TFormPrincipal.MenuItemAdicionarAmostraClick(Sender: TObject);
begin
  if ListBoxMinerais.GetSelectedText <> EmptyStr then
  begin
    Dados.AdicionaAmostra(ListboxMinerais.GetSelectedText, EditRruff_id.Text);
  end;
  PreencheAmostras;
end;

procedure TFormPrincipal.MenuItemAdicionarClick(Sender: TObject);
begin
  AdicionaMineral;
end;

procedure TFormPrincipal.MenuItemAlfabeticaClick(Sender: TObject);
begin
  Ordem('Alfabetica');
end;

procedure TFormPrincipal.MenuItemDensidadeClick(Sender: TObject);
begin
  Ordem('Densidade');
end;

procedure TFormPrincipal.MenuItemDurezaCick(Sender: TObject);
begin
  Ordem('Dureza');
end;

procedure TFormPrincipal.MenuItemEspeciesClick(Sender: TObject);
begin         //config.ini
  if MenuitemEspecies.Checked then
  begin
    BGRAPanelEspecies.Visible:=False;
    BGRAPanelRruff_id.Visible:=True;
    BGRAPanelImagens.Visible:=False;
    BGRAPanelFiltro.Visible:=False;
    MenuitemEspecies.Checked:=False;
    BitBtn1.Enabled:=True;
    if MenuItemAmostras.Checked then
    begin
      PanelRruff .Visible := True;
      BGRAPanelRruff_id.Visible := True;
      ListboxRruff_id.Items.Clear;
      Dados.sltb:= Dados.sldb.GetTable('SELECT DISTINCT rruff_id FROM rruff');
      if Dados.sltb.MoveFirst then
      begin
        While (not Dados.sltb.EOF) do
        begin
          ListboxRruff_id.Items.Append(Dados.sltb.FieldByName['rruff_id']);
          Dados.sltb.Next;
        end;
      end;
    end;
  end
  else
  begin
    BGRAPanelEspecies.Visible:=True;
    if MenuItemImagePanel.Checked then BGRAPanelImagens.Visible:=True;
    if MenuItemPanelFiltro.Checked then BGRAPanelFiltro.Visible:=True;
    MenuitemEspecies.Checked:=True;
    PanelRruff .Visible := False;
    BitBtn1.Enabled:=False;
  end;
end;

procedure TFormPrincipal.MenuItemExcluiClick(Sender: TObject);
begin
  ExcluiMineral;
end;

procedure TFormPrincipal.MenuItemExcluir2Click(Sender: TObject);
begin
  ExcluiMineral;
end;

procedure TFormPrincipal.MenuItemAmostrasClick(Sender: TObject);
begin
  Config := TIniFile.Create(GetCurrentDir + '\Data\config.ini');
  if (not MenuItemAmostras.Checked) then
  begin
    PreencheAmostras;
    Dados.Sqlite3DatasetAmostras.Open;
    Dados.Sqlite3DatasetAmostras.ClearFields;
    PanelFicha.Visible := False;
    PanelRruff.Visible := True;
    BGRAPanelRruff_id.Visible := True;
    MenuItemAmostras.Checked := True;
    Config.WriteBool('Configuracoes', 'PainelAmostras', True);
    BitBtn3.Enabled:=True;
  end
  else
  begin
    PanelRruff.Visible := False;
    PanelFicha.Visible := True;
    BGRAPanelRruff_id.Visible := False;
    MenuItemAmostras.Checked := False;
    Config.WriteBool('Configuracoes', 'PainelAmostras', False);
    BitBtn3.Enabled:=False;
  end;
  Config.Free;
end;

procedure TFormPrincipal.MenuItemInstrumentosClick(Sender: TObject);
begin
  if not MenuItemInstrumentos.Checked then
  begin
    FormInstrumentos.Show;
  end
  else
  begin
    FormInstrumentos.Visible := False;
  end;
end;

procedure TFormPrincipal.MenuItemNovaAmostraClick(Sender: TObject);
begin
  if ListboxMinerais.GetSelectedText <> EmptyStr then
  begin
    if Dados.Sqlite3DatasetAmostras.Active then
    Dados.Sqlite3DatasetAmostras.Close;
    Dados.Sqlite3DatasetAmostras.SQL:='SELECT * FROM rruff WHERE especie ="'+
     ListboxMinerais.GetSelectedText+'" ;';
    Dados.Sqlite3DatasetAmostras.Open;
    Dados.Sqlite3DatasetAmostras.First;
    FormAdicionaRruff.Show;
  end
  else
  begin
    ShowMessage('Selecione um mineral da lista para adicionar amostras.');
  end;
end;

procedure TFormPrincipal.MenuItemRemoverAmostraClick(Sender: TObject);
begin
  if MenuItemEspecies.Checked then
  begin
    Dados.ExcluiAmostra(ListboxMinerais.GetSelectedText,
      ListboxRruff_id.GetSelectedText);
    PreencheAmostras;
  end
  else
  begin
    if ListboxRruff_id.GetSelectedText <> EmptyStr then
    begin
      Dados.ExcluiAmostra('',
        ListboxRruff_id.GetSelectedText);
      PreencheAmostras;
    end;
  end;
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
  Ordem('Dureza');
end;

procedure TFormPrincipal.ExcluiMineral;
begin
  if (ListboxMinerais.GetSelectedText = emptystr) then
  begin
    ShowMessage('Não há mineral selecionado');
  end
  else
  begin
    // fazer form de exclusão
    if (QuestionDlg('Confirmação', 'Deseja realmente remover "' +
      UpCase(ListboxMinerais.GetSelectedText) + '"?', mtConfirmation,
      [mrNo, mrYes], 0) = mrYes) then
    begin
      Dados.ExcluiMineral(ListboxMinerais.GetSelectedText);

      Preenche_Lista;
      AtualizaImagem;
      Barra_Status;
    end;
  end;
end;

procedure TFormPrincipal.MudarFonte;
begin
  Config := TIniFile.Create(GetCurrentDir + '\Data\config.ini');
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
    ListBoxRruff_id.Font.Size := Grande;
    PageControlRruff.Font.Size := Grande;
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
    ListBoxRruff_id.Font.Size := Normal;
    PageControlRruff.Font.Size := Normal;
  end;
  AtualizaRichMemo;
  Config.Free;
end;

procedure TFormPrincipal.UpdateCampos(BancoDados, Especie, Campo: string;
  objeto: TDBMemo);
begin
  if BancoDados = Minerais then
  begin  //colocar procedimentos em dados e exlcuir sltb e sldb de uprincipal.pas
    sltb := sldb.GetTable('UPDATE minerais set ' + Campo + ' ="' + objeto.Text +
      '" WHERE nome="' + especie + '";');
    if UpCase(objeto.Name) = UpCase('DBMemoSubclasse') then
      Preenche_Subclasses;
  end
  else
  begin
    sltb := sldb.GetTable('UPDATE '+BancoDados+' set ' + Campo + ' ="' + objeto.Text +
      '" WHERE rruff_id="' + especie + '";');
  end;
end;

procedure TFormPrincipal.UpdateRruff(BancoDados, Especie, Campo: string;
  objeto: TMemo);
begin

end;

procedure TFormPrincipal.UpdateEdits(Especie: string; Campo: string; objeto: TDBEdit);
begin
  sltb := sldb.GetTable('UPDATE minerais set ' + Campo + ' ="' + objeto.Text +
    '" WHERE nome="' + especie + '";');
  if UpCase(objeto.Name) = UpCase('DBMemoSubclasse') then
    Preenche_Subclasses;
end;

procedure TFormPrincipal.ModoEdicao;
begin
  if (Dados.SQLite3DatasetGeral.Active) then
    Dados.SQLite3DatasetGeral.ApplyUpdates();
  if (Dados.Sqlite3DatasetAmostras.Active) then
    Dados.Sqlite3DatasetAmostras.ApplyUpdates;

  Config := TIniFile.Create(GetCurrentDir + '\Data\config.ini');

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
    MemoPin_id.ReadOnly := True;
    MemoOrientacao.ReadOnly := True;
    MemoProprietario.ReadOnly := True;
    MemoAmostraRruff_id.ReadOnly := True;

    ComboboxEquipamentoRaman.ReadOnly:=True;
    ComboboxEquipamentoVarredura.ReadOnly:=True;
    ComboboxEquipamentoInfravermelho.ReadOnly:=True;

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
    MemoPin_id.ReadOnly := False;
    MemoOrientacao.ReadOnly := False;
    MemoProprietario.ReadOnly := False;
    MemoAmostraRruff_id.ReadOnly := False;

    ComboboxEquipamentoRaman.ReadOnly:=False;
    ComboboxEquipamentoVarredura.ReadOnly:=False;
    ComboboxEquipamentoInfravermelho.ReadOnly:=False;

    richmemoformula.Visible := False;
    //dbmemoformula.Visible := True;
  end;
  Config.Free;
end;

function TFormPrincipal.DefinirOrdem: string;
begin
  if MenuItemDureza.Checked then
    Result := '(1/(dureza_max+1))'
  else
  if MenuItemDensidade.Checked then
    Result := '(1/(densidade_max+1))'
  else
  if MenuItemAlfabetica.Checked then
    Result := 'nome ASC';
end;

procedure TFormPrincipal.Ordem(MenuItemChecked: string);
begin
  Config := TIniFile.Create(GetCurrentDir + '\Data\config.ini');
  Config.WriteString('Configuracoes', 'Ordem', MenuItemChecked);
  Config.Free;
  if MenuItemChecked = 'Alfabetica' then
  begin
    MenuItemAlfabetica.Checked := True;
    MenuItemDureza.Checked := False;
    MenuItemDensidade.Checked := False;
  end
  else
  if MenuItemChecked = 'Dureza' then
  begin
    MenuItemAlfabetica.Checked := False;
    MenuItemDureza.Checked := True;
    MenuItemDensidade.Checked := False;
  end
  else
  if MenuItemChecked = 'Densidade' then
  begin
    MenuItemAlfabetica.Checked := False;
    MenuItemDureza.Checked := False;
    MenuItemDensidade.Checked := True;
  end;
  Preenche_Lista;
end;

procedure TFormPrincipal.PreencheAmostras;
begin
  ListboxRruff_id.Clear;
  Dados.Sqlite3DatasetPreencheAmostras.Close;
  if MenuItemEspecies.Checked then
  Dados.Sqlite3DatasetPreencheAmostras.SQL :=
    'SELECT DISTINCT rruff_id FROM rruff WHERE especie = "' +
      ListboxMinerais.GetSelectedText + '" ORDER BY rruff_id ASC;'
    else
   Dados.Sqlite3DatasetPreencheAmostras.SQL :=
    'SELECT DISTINCT rruff_id FROM rruff ORDER BY rruff_id ASC;';
  Dados.Sqlite3DatasetPreencheAmostras.Open;
  if Dados.Sqlite3DatasetPreencheAmostras.RecNo > 0 then
    Dados.Sqlite3DatasetPreencheAmostras.First;
  while (not Dados.Sqlite3DatasetPreencheAmostras.EOF) do
  begin
    ListboxRruff_id.Items.Add(Dados.Sqlite3DatasetPreencheAmostras.Fields[0].AsString);
    Dados.Sqlite3DatasetPreencheAmostras.Next;
  end;
  Dados.Sqlite3DatasetPreencheAmostras.Close;
end;

procedure TFormPrincipal.AtualizaComboboxRruff(Combobox: TCombobox;
  Campo:String);
var Indice:String;
  //esse procedimento vai ser usado tbm para rruff_id e rruff_digito
  // e para comboboxdirecaolaser
begin
  Combobox.Clear;

  if Campo = 'digito_rruff' then
  begin
    Dados.sltb:=Dados.sldb.GetTable('SELECT DISTINCT digito_rruff FROM rruff ;');
    if Dados.sltb.MoveFirst then
    begin
      While Not Dados.sltb.EOF do
      begin
        Combobox.Items.Append(Dados.sltb.FieldByName[Campo]);
        Dados.sltb.Next;
      end;
    end;
  end
  else
  if Campo = 'digito_raman' then
  begin
    Dados.sltb:=Dados.sldb.GetTable('SELECT DISTINCT digito_raman FROM raman ;');
    if Dados.sltb.MoveFirst then
    begin
      While Not Dados.sltb.EOF do
      begin
        Combobox.Items.Append(Dados.sltb.FieldByName[Campo]);
        Dados.sltb.Next;
      end;
    end;
  end
  else
  if Campo = 'digito_varredura' then
  begin
    Dados.sltb:=Dados.sldb.GetTable('SELECT DISTINCT digito_varredura FROM varredura ;');
    if Dados.sltb.MoveFirst then
    begin
      While Not Dados.sltb.EOF do
      begin
        Combobox.Items.Append(Dados.sltb.FieldByName[Campo]);
        Dados.sltb.Next;
      end;
    end;
  end
  else
  if Campo = 'equipamento_raman' then
  begin
    Dados.sltb:= Dados.sldb.GetTable('SELECT equipamento FROM raman WHERE '+
      'rruff_id ="'+ListboxRruff_id.GetSelectedText+'" AND digito_raman ="'+
         ComboboxRamanDigito.Text+'" ;');
    if Dados.sltb.Count > 0 then
    begin
      Indice:=Dados.sltb.FieldByName['equipamento'];
      if Indice <> '0' then
      begin
        Dados.sltb:=Dados.sldb.GetTable('SELECT nome FROM instrumentos WHERE '+
          ' id="'+(Indice)+'" ;');
        Combobox.Text:=Dados.sltb.FieldByName['nome'];
      end;
    end;
  end
  else
  if Campo = 'equipamento_varredura' then
  begin
    {Dados.sltb:=Dados.sldb.GetTable('SELECT nome FROM instrumentos');
    if Dados.sltb.MoveFirst then
    begin
      While Not Dados.sltb.EOF do
      begin
        Combobox.Items.Append(Dados.sltb.FieldByName[Campo]);
        Dados.sltb.Next;
      end;
    end;  }
    Dados.sltb:= Dados.sldb.GetTable('SELECT equipamento FROM varredura WHERE '+
      'rruff_id ="'+ListboxRruff_id.GetSelectedText+'" AND digito_varredura ="'+
        ComboboxVarreduraDigito.Text+'";');
    if Dados.sltb.Count > 0 then
    begin
      Indice:=Dados.sltb.FieldByName['equipamento_varredura'];
      if Indice <> '0' then
      begin
        Dados.sltb:=Dados.sldb.GetTable('SELECT nome FROM instrumentos WHERE '+
          ' id="'+(Indice)+'" ;');
        Combobox.Text:=Dados.sltb.FieldByName['nome'];
      end;
    end;
  end
  else
  if Campo ='equipamento_infravermelho' then
  begin
   { Dados.sltb:=Dados.sldb.GetTable('SELECT nome FROM instrumentos');
    if Dados.sltb.MoveFirst then
    begin
      While Not Dados.sltb.EOF do
      begin
        Combobox.Items.Append(Dados.sltb.FieldByName[Campo]);
        Dados.sltb.Next;
      end;
    end;     }
    Dados.sltb:= Dados.sldb.GetTable('SELECT equipamento FROM rruff WHERE '+
      'rruff_id ="'+ListboxRruff_id.GetSelectedText+'";');
    if Dados.sltb.Count > 0 then
      Indice:=Dados.sltb.FieldByName['equipamento'];
    Dados.sltb:=Dados.sldb.GetTable('SELECT nome FROM instrumentos WHERE '+
    ' id="'+(Indice)+'" ;');
    Combobox.Text:=Dados.sltb.FieldByName['nome'];
  end;
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
    FormImpressao.RadioButtonSelecionado.Enabled := False
  else
    FormImpressao.RadioButtonSelecionado.Enabled := True;
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
var Indice:Integer;
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
      if EditNome.Text <> EmptyStr then
      begin
        Dados.AdicionaEspecie(EditNome.Text, ComboboxClasse.Text, ComboboxSubClasse.Text,
          ComboboxGrupo.Text, ComboboxSubgrupo.Text, EditOcorrencia.Text,
            EditAssociacao.Text, EditCor.Text, EditBrilho.Text,
              StrToFloat(ComboboxDureza_min.Text), StrToFloat(ComboboxDureza_max.
                Text), EditDensidade_min.Text, EditDensidade_max.
                  Text);
        Indice := ListBoxMinerais.Items.Add(EditNome.Text);

      end
      else
      begin
        Dados.AdicionaEspecie('Novo Mineral', ComboboxClasse.Text, ComboboxSubClasse.Text,
          ComboboxGrupo.Text, ComboboxSubgrupo.Text, EditOcorrencia.Text,
            EditAssociacao.Text, EditCor.Text, EditBrilho.Text,
              StrToFloat(ComboboxDureza_min.Text), StrToFloat(ComboboxDureza_max.
                Text), EditDensidade_min.Text, EditDensidade_max.
                  Text);
        Indice := ListBoxMinerais.Items.Add('Novo Mineral');
      end;
      ListboxMinerais.Selected[Indice] := True;
    end;

  AtualizaImagem;
  barra_status;
  end;
end;

procedure TFormPrincipal.MenuItemNovoClick(Sender: TObject);
begin
  AdicionaMineral;
end;

procedure TFormPrincipal.MenuItemSelecionaBDClick(Sender: TObject);
begin
  FormSelecionaBD.Show;
end;

procedure TFormPrincipal.PageControlFichaChange(Sender: TObject);
begin
  case PageControlFicha.TabIndex of
    0:Begin

    end;
  end;
end;

procedure TFormPrincipal.PageControlRruffChange(Sender: TObject);
begin
  Case PageCOntrolRruff.TabIndex of
    0:begin
        BitBtnAdicionarDados.Enabled:=False;
        BitBtnVerDados.Enabled:=False;
        BitBtnZerarDados.Enabled:=False;

        BitBtnAdicionarImagem.Enabled:=True;
        BitBtnVisualizarTelaCheia.Enabled:=True;
        BitBtnRemoverImagem.Enabled:=True;
      end;
    1:begin
        BitBtnAdicionarDados.Enabled:=True;
        BitBtnVerDados.Enabled:=True;
        BitBtnZerarDados.Enabled:=True;

        BitBtnAdicionarImagem.Enabled:=True;
        BitBtnVisualizarTelaCheia.Enabled:=True;
        BitBtnRemoverImagem.Enabled:=True;
    end;
    2:begin
        BitBtnAdicionarDados.Enabled:=True;
        BitBtnVerDados.Enabled:=True;
        BitBtnZerarDados.Enabled:=True;

        BitBtnAdicionarImagem.Enabled:=False;
        BitBtnVisualizarTelaCheia.Enabled:=False;
        BitBtnRemoverImagem.Enabled:=False;
    end;
    3:begin
        BitBtnAdicionarDados.Enabled:=True;
        BitBtnVerDados.Enabled:=True;
        BitBtnZerarDados.Enabled:=True;

        BitBtnAdicionarImagem.Enabled:=False;
        BitBtnVisualizarTelaCheia.Enabled:=False;
        BitBtnRemoverImagem.Enabled:=False;
    end;
    4:begin
        BitBtnAdicionarDados.Enabled:=True;
        BitBtnVerDados.Enabled:=True;
        BitBtnZerarDados.Enabled:=True;

        BitBtnAdicionarImagem.Enabled:=False;
        BitBtnVisualizarTelaCheia.Enabled:=False;
        BitBtnRemoverImagem.Enabled:=False;
    end;
    5:begin
        BitBtnAdicionarDados.Enabled:=True;
        BitBtnVerDados.Enabled:=True;
        BitBtnZerarDados.Enabled:=True;

        BitBtnAdicionarImagem.Enabled:=False;
        BitBtnVisualizarTelaCheia.Enabled:=False;
        BitBtnRemoverImagem.Enabled:=False;
    end;
  end;
end;

procedure TFormPrincipal.preenche_lista;
var
  num: integer;
  SelectSQL: string;
begin
  limparichmemo;
  ListboxMinerais.Clear();
  limpaDD;
  if (Dados.SQLite3DatasetGeral.Active) then
    Dados.SQLite3DatasetGeral.Close();
  SelectSQL := 'Select nome, formula, classe, subclasse, grupo, subgrupo, ocorrencia, associacao, ';
  SelectSQL := SelectSQL + ' distincao, alteracao, aplicacao, dureza_min, dureza_max, ';
  SelectSQL := SelectSQL +
    ' densidade_min, densidade_max, cor, traco, brilho, clivagem, fratura, magnetismo, ';
  SelectSQL := SelectSQl +
    ' luminescencia, difaneidade, sinal_optico, indice_refracao, angulo, cor_interferencia, ';
  SelectSQL := SelectSQL + ' cor_lamina, sinal_elongacao, birrefringencia, relevo, extincao, ';
  SelectSQL := SelectSQL + ' sistema, classe_cristalina, h_m, habito FROM minerais ';
  if (ComboboxClasse.Text = emptystr) then
  begin
    if (ComboboxSubclasse.Text = emptystr) then
    begin
      if (ComboboxGrupo.Text = emptystr) then
      begin
        if (ComboboxSubgrupo.Text = emptystr) then
        begin     //nenhum combobox selecionado   1
          Dados.SQLite3DatasetGeral.SQL :=
            SelectSQL + ' WHERE (dureza_min >= "' + comboboxDureza_min.Text +
            '" and dureza_max <= "' + comboboxdureza_max.Text +
            '" and densidade_min >= "' + editDensidade_min.Text +
            '" and densidade_max<= "' + editDensidade_max.Text +
            '") ORDER BY ' + DefinirOrdem + ';';
        end
        else
        begin  //combobox subgrupos    2
          Dados.SQLite3DatasetGeral.SQL :=
            SelectSQL + ' WHERE (subgrupo = "' + ComboboxSubgrupo.Text +
            '" and dureza_min >= "' + comboboxDureza_min.Text +
            '" and dureza_max <= "' + comboboxdureza_max.Text +
            '" and densidade_min >= "' + editDensidade_min.Text +
            '" and densidade_max<= "' + editDensidade_max.Text +
            '") ORDER BY' + DefinirOrdem + ';';
        end;
      end
      else
      begin
        if (ComboboxSubgrupo.Text = emptystr) then
        begin     // combobox grupos   3
          Dados.SQLite3DatasetGeral.SQL :=
            SelectSQL + ' WHERE (grupo = "' + ComboboxGrupo.Text +
            '" and dureza_min >= "' + comboboxDureza_min.Text +
            '" and dureza_max <= "' + comboboxdureza_max.Text +
            '" and densidade_min >= "' + editDensidade_min.Text +
            '" and densidade_max<= "' + editDensidade_max.Text +
            '") ORDER BY ' + DefinirOrdem + ';';
        end
        else
        begin     //combobox BGRALabelGrupo e subgrupo   4
          Dados.SQLite3DatasetGeral.SQL :=
            SelectSQL + ' WHERE (grupo = "' + ComboboxGrupo.Text +
            '" and subgrupo = "' + ComboboxSubgrupo.Text +
            '" and dureza_min >= "' + comboboxDureza_min.Text +
            '" and dureza_max <= "' + comboboxdureza_max.Text +
            '" and densidade_min >= "' + editDensidade_min.Text +
            '" and densidade_max<= "' + editDensidade_max.Text +
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
          Dados.SQLite3DatasetGeral.SQL :=
            SelectSQL + ' WHERE (subclasse = "' + ComboboxSubclasse.Text +
            '" and dureza_min >= "' + comboboxDureza_min.Text +
            '" and dureza_max <= "' + comboboxdureza_max.Text +
            '" and densidade_min >= "' + editDensidade_min.Text +
            '" and densidade_max<= "' + editDensidade_max.Text +
            '") ORDER BY ' + DefinirOrdem + ';';
        end
        else
        begin  // combobox subclasse e subgrupo  6
          Dados.SQLite3DatasetGeral.SQL :=
            SelectSQL + ' WHERE (subclasse = "' + ComboboxSubclasse.Text +
            '" and subgrupo = "' + ComboboxSubgrupo.Text +
            '" and dureza_min >= "' + comboboxDureza_min.Text +
            '" and dureza_max <= "' + comboboxdureza_max.Text +
            '" and densidade_min >= "' + editDensidade_min.Text +
            '" and densidade_max<= "' + editDensidade_max.Text +
            '") ORDER BY ' + DefinirOrdem + ';';
        end;
      end
      else
      begin
        if (ComboboxSubgrupo.Text = emptystr) then
        begin   //combobox subclasse e BGRALabelGrupo   7
          Dados.SQLite3DatasetGeral.SQL :=
            SelectSQL + ' WHERE (subclasse = "' + ComboboxSubclasse.Text +
            '" and grupo ="' + ComboboxGrupo.Text + '" and dureza_min >= "' +
            comboboxDureza_min.Text + '" and dureza_max <= "' +
            comboboxdureza_max.Text + '" and densidade_min >= "' +
            editDensidade_min.Text + '" and densidade_max<= "' +
            editDensidade_max.Text + '") ORDER BY ' + DefinirOrdem + ';';
        end
        else
        begin   //subclasse BGRALabelGrupo subgrupo      8
          Dados.SQLite3DatasetGeral.SQL :=
            SelectSQL + ' WHERE (subclasse = "' + ComboboxSubclasse.Text +
            '" and grupo = "' + ComboboxGrupo.Text + '" and subgrupo = "' +
            ComboboxSubgrupo.Text + '" and dureza_min >= "' +
            comboboxDureza_min.Text + '" and dureza_max <= "' +
            comboboxdureza_max.Text + '" and densidade_min >= "' +
            editDensidade_min.Text + '" and densidade_max<= "' +
            editDensidade_max.Text + '") ORDER BY ' + DefinirOrdem + ';';
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
          Dados.SQLite3DatasetGeral.SQL :=
            SelectSQL + ' WHERE (classe = "' + ComboboxClasse.Text +
            '" and dureza_min >= "' + comboboxDureza_min.Text +
            '" and dureza_max <= "' + comboboxdureza_max.Text +
            '" and densidade_min >= "' + editDensidade_min.Text +
            '" and densidade_max<= "' + editDensidade_max.Text +
            '") ORDER BY ' + DefinirOrdem + ';';
        end
        else    //classe subgrupos    10
        begin
          Dados.SQLite3DatasetGeral.SQL :=
            SelectSQL + ' WHERE (classe = "' + ComboboxClasse.Text +
            '" and subgrupo = "' + ComboboxSubgrupo.Text +
            '" and dureza_min >= "' + comboboxDureza_min.Text +
            '" and dureza_max <= "' + comboboxdureza_max.Text +
            '" and densidade_min >= "' + editDensidade_min.Text +
            '" and densidade_max<= "' + editDensidade_max.Text +
            '") ORDER BY ' + DefinirOrdem + ';';
        end;
      end
      else
      begin      //classe grupos    11
        if (ComboboxSubgrupo.Text = emptystr) then
        begin
          Dados.SQLite3DatasetGeral.SQL :=
            SelectSQL + ' WHERE (classe = "' + ComboboxClasse.Text +
            '" and grupo = "' + ComboboxGrupo.Text + '" and dureza_min >= "' +
            comboboxDureza_min.Text + '" and dureza_max <= "' +
            comboboxdureza_max.Text + '" and densidade_min >= "' +
            editDensidade_min.Text + '" and densidade_max<= "' +
            editDensidade_max.Text + '") ORDER BY ' + DefinirOrdem + ';';
        end
        else    //classe BGRALabelGrupo subgrupo     12
        begin
          Dados.SQLite3DatasetGeral.SQL :=
            SelectSQL + ' WHERE (classe = "' + ComboboxClasse.Text +
            '" and grupo = "' + ComboboxGrupo.Text + '" and subgrupo = "' +
            ComboboxSubgrupo.Text + '" and dureza_min >= "' +
            comboboxDureza_min.Text + '" and dureza_max <= "' +
            comboboxdureza_max.Text + '" and densidade_min >= "' +
            editDensidade_min.Text + '" and densidade_max<= "' +
            editDensidade_max.Text + '") ORDER BY ' + DefinirOrdem + ';';
        end;
      end;
    end
    else
    begin
      if (ComboboxGrupo.Text = emptystr) then
      begin
        if (ComboboxSubgrupo.Text = emptystr) then
        begin   //classe subclasse     13
          Dados.SQLite3DatasetGeral.SQL :=
            SelectSQL + ' WHERE (classe = "' + ComboboxClasse.Text +
            '" and subclasse = "' + ComboboxSubclasse.Text +
            '" and dureza_min >= "' + comboboxDureza_min.Text +
            '" and dureza_max <= "' + comboboxdureza_max.Text +
            '" and densidade_min >= "' + editDensidade_min.Text +
            '" and densidade_max<= "' + editDensidade_max.Text +
            '") ORDER BY ' + DefinirOrdem + ';';
        end
        else
        begin    //classe subclasse subgrupo   14
          Dados.SQLite3DatasetGeral.SQL :=
            SelectSQL + ' WHERE (classe = "' + ComboboxClasse.Text +
            '" and subclasse = "' + ComboboxSubclasse.Text +
            '" and subgrupo = "' + ComboboxSubgrupo.Text +
            '" and dureza_min >= "' + comboboxDureza_min.Text +
            '" and dureza_max <= "' + comboboxdureza_max.Text +
            '" and densidade_min >= "' + editDensidade_min.Text +
            '" and densidade_max<= "' + editDensidade_max.Text +
            '") ORDER BY ' + DefinirOrdem + ';';
        end;
      end
      else
      begin   //classe subclasse BGRALabelGrupo      15
        if (ComboboxSubgrupo.Text = emptystr) then
        begin
          Dados.SQLite3DatasetGeral.SQL :=
            SelectSQL + ' WHERE (classe = "' + ComboboxClasse.Text +
            '" and subclasse = "' + ComboboxSubclasse.Text +
            '" and grupo = "' + ComboboxGrupo.Text + '" and dureza_min >= "' +
            comboboxDureza_min.Text + '" and dureza_max <= "' +
            comboboxdureza_max.Text + '" and densidade_min >= "' +
            editDensidade_min.Text + '" and densidade_max<= "' +
            editDensidade_max.Text + '") ORDER BY ' + DefinirOrdem + ';';
        end
        else    //classe subclasse BGRALabelGrupo subgrupo    16
        begin
          Dados.SQLite3DatasetGeral.SQL :=
            SelectSQL + ' WHERE (classe = "' + ComboboxClasse.Text +
            '" and subclasse = "' + ComboboxSubclasse.Text +
            '" and grupo = "' + ComboboxGrupo.Text + '" and subgrupo = "' +
            ComboboxSubgrupo.Text + '" and dureza_min >= "' +
            comboboxDureza_min.Text + '" and dureza_max <= "' +
            comboboxdureza_max.Text + '" and densidade_min >= "' +
            editDensidade_min.Text + '" and densidade_max<= "' +
            editDensidade_max.Text + '") ORDER BY ' + DefinirOrdem + ';';
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
              if Filtro_Cor = False then
                if Filtro_Brilho = False then
        ListboxMinerais.Items.add(Dados.SQLite3DatasetGeral.FieldByName(
                'nome').AsString);
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
        'SELECT DISTINCT grupo from minerais WHERE (classe = "' +
        ComboBoxClasse.Text + '") ORDER BY grupo ASC';
    end
    else
    begin
      dados.SQLite3DatasetComboBox.sql :=
        'SELECT DISTINCT grupo FROM minerais WHERE( classe = "' +
        ComboBoxClasse.Text + '" and subclasse = "' + ComboBoxSubClasse.Text +
        '")ORDER BY grupo ASC';
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
          'SELECT DISTINCT subgrupo FROM minerais WHERE(grupo = "' +
          ComboBoxGrupo.Text + '") ORDER BY subgrupo ASC';
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
          ComboBoxSubclasse.Text + '" and grupo = "' + ComboBoxGrupo.Text +
          '") ORDER BY subgrupo ASC';
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
          'SELECT DISTINCT subgrupo FROM minerais WHERE(classe = "' +
          ComboBoxClasse.Text + '") ORDER BY subgrupo ASC';
      end
      else
      begin
        dados.SQLite3DatasetComboBox.sql :=
          'SELECT DISTINCT subgrupo FROM minerais WHERE(classe= "' +
          ComboBoxClasse.Text + '" and grupo= "' + ComboBoxGrupo.Text +
          '") ORDER BY subgrupo ASC';
      end;
    end
    else
    begin
      if (ComboBoxGrupo.Text = emptystr) then
      begin
        dados.SQLite3DatasetComboBox.sql :=
          'SELECT DISTINCT subgrupo FROM minerais WHERE(classe = "' +
          ComboBoxClasse.Text + '" and subclasse = "' + ComboBoxSubClasse.Text +
          '") ORDER BY subgrupo ASC';
      end
      else
      begin
        dados.SQLite3DatasetComboBox.sql :=
          'SELECT DISTINCT subgrupo FROM minerais WHERE(classe = "' +
          ComboBoxClasse.Text + '" and subclasse = "' + ComboBoxSubClasse.Text +
          '" and grupo = "' + ComboBoxGrupo.Text + '")ORDER BY subgrupo ASC';
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

  function StatusBarOrdem: string;
  begin
    if MenuItemAlfabetica.Checked then
      Result := 'alfabética.'
    else
    if (menuitemdureza.Checked) then
      Result := 'decrescente de dureza.'
    else
    if MenuItemDensidade.Checked then
      Result := 'decrescente de densidade.';
  end;

begin
  if ListboxMinerais.items.Count = 0 then
    statusbar1.Panels.Items[0].Text := '';
  if ListboxMinerais.items.Count = 1 then
    statusbar1.Panels.Items[0].Text := '      1 Mineral encontrado';
  if ListboxMinerais.items.Count > 1 then
    statusbar1.Panels.Items[0].Text :=
      '     ' + IntToStr(ListboxMinerais.Items.Count) +
      ' minerais encontrados listados em ordem ' + StatusBarOrdem;
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

function TFormPrincipal.Filtro_Cor: Boolean;
var
  eliminar: boolean;
  aux: string;
  i: integer;
begin
  if (EditCor.Text = EmptyStr) then
    eliminar := False
  else
  begin
    aux := Dados.SQLite3DatasetGeral.FieldByName('cor').AsString;
    eliminar := True;
    for i := 0 to (length(aux) - 1) do
    begin
      if (UpCase(EditCor.Text) =
        UpCase(Copy(aux, i, length(Trim(EditCor.Text))))) then
        eliminar := False;
    end;
  end;
  Result := eliminar;
end;

function TFormPrincipal.Filtro_Brilho: Boolean;
var
  eliminar: boolean;
  aux: string;
  i: integer;
begin
  if (EditBrilho.Text = EmptyStr) then
    eliminar := False
  else
  begin
    aux := Dados.SQLite3DatasetGeral.FieldByName('brilho').AsString;
    eliminar := True;
    for i := 0 to (length(aux) - 1) do
    begin
      if (UpCase(EditBrilho.Text) =
        UpCase(Copy(aux, i, length(Trim(EditBrilho.Text))))) then
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
          ' = ? WHERE nome = "' + dados.SQLite3DatasetGeral.FieldByName(
          'nome').AsString + '"', fs)
      else
      begin       //colocar procedimento de checar campo
        sldb.UpdateBlob('UPDATE mineralogia set mineralogiaimagem' +
          num + ' = ? WHERE campo = "' + Nome_Didatico + '"', fs);
      end;
    finally
      fs.Free;
    end;
    Imagem_Selecionada := num;
    AtualizaImagem;
  end;
end;

procedure TFormPrincipal.AtualizaImagem;
var
  nome_mineral: string;
begin
  nome_mineral := ListboxMinerais.GetselectedText;
  if (ListBoxMinerais.GetSelectedText <> EmptyStr) then
  begin       //diminuir tamanho do codigo, usando um try e um sldb.gettable

    self.ImageAmpliada.Picture.Graphic := ImagemMineral(nome_mineral, 1);

    if MenuItemImagePanel.Checked then
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
    self.Image1.Picture.Graphic := ImagemDidatica(Nome_Didatico, 1);
    self.Image2.Picture.Graphic := ImagemDidatica(Nome_Didatico, 2);
    self.Image3.Picture.Graphic := ImagemDidatica(Nome_Didatico, 3);
    self.Image4.Picture.Graphic := ImagemDidatica(Nome_Didatico, 4);
    self.Image5.Picture.Graphic := ImagemDidatica(Nome_Didatico, 5);
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
var
  SelectSQL: string;
begin
  Nome_Mineral := ListboxMinerais.GetSelectedText;
  if Nome_Mineral <> emptystr then
  begin
    SelectSQL := 'SELECT nome, formula, classe, subclasse, grupo, subgrupo, ocorrencia, associacao,';
    SelectSQL := SelectSQL + ' distincao, alteracao, aplicacao, dureza_min, dureza_max, ';
    SelectSQL := SelectSQl +
      ' densidade_min, densidade_max, cor, traco, brilho, clivagem, fratura, magnetismo, ';
    SelectSQL := SelectSQL +
      ' luminescencia, difaneidade, sinal_optico, indice_refracao, angulo, cor_interferencia,';
    SelectSQL := SelectSQL +
      'cor_lamina, sinal_elongacao, birrefringencia, relevo, extincao,';
    SelectSQL := SelectSQL +
      'sistema, classe_cristalina, h_m, habito FROM minerais WHERE nome="' + Nome_Mineral + '";';
    if (Dados.SQLite3DatasetGeral.active) then
    begin
      Dados.SQLite3DatasetGeral.applyupdates;
      Dados.Sqlite3DatasetGeral.Close;
      Dados.Sqlite3DatasetGeral.SQL := SelectSQL;
      Dados.SQLite3DatasetGeral.Open();
    end
    else
    begin
      Dados.Sqlite3DatasetGeral.SQL := SelectSQL;
      Dados.SQLite3DatasetGeral.Open();
    end;
    //atualizarichmemo; //
    editaDD;
    AtualizaImagem;
    if (MenuItemModoEdicao.Checked) then
    begin
      GroupBoxDureza.Visible := True;
      GroupBoxDensidade.Visible := True;
      RichMemoFormula.Visible := False;
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
