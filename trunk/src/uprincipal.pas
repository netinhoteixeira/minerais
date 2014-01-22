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
  BGRAPanel, BGRALabel, RichMemo, TAGraph, TASeries, TADbSource,
  TATransformations, uFormImpressao, uSelecionaBD, SQLite3tablemod,
  uBibliografia, UnitAjuda, IniFiles, unitPlanilha, unitequipamentos,
  unitrruff_id, unitfichaamostra, unitfichaespecie ;

type

  { TFormPrincipal }

  TFormPrincipal = class(TForm)
    ActionSelctSampleDb: TAction;
    ActionChartOnDblClick: TAction;
    ActionImage4Click: TAction;
    ActionListChart: TActionList;
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
    ActionSelectMIneralDb: TAction;
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
    ActionRemoveBlobData: TAction;
    ActionCheckData: TAction;
    ActionAddData: TAction;
    ActionAdicionarImagemSample: TAction;
    ActionListButton: TActionList;
    ActionListboxSampleDoubleClick: TAction;
    ActionListboxSampleClick: TAction;
    ActionListboxMineraisDoubleClick: TAction;
    ActionListboxMineraisOnClick: TAction;
    ActionListListbox: TActionList;
    BGRALabelCor: TBGRALabel;
    BGRALabelBrilho: TBGRALabel;
    BGRALabelEspecies: TBGRALabel;
    BGRALabelSample: TBGRALabel;
    BGRALabelClasse: TBGRALabel;
    BGRALabelSubclasse: TBGRALabel;
    BGRALabelGrupo: TBGRALabel;
    BGRALabelSubgrupo: TBGRALabel;
    BGRALabelDureza: TBGRALabel;
    BGRALabelDensidade: TBGRALabel;
    BGRALabelOcorrencia: TBGRALabel;
    BGRALabelAssociacao: TBGRALabel;
    BGRAPanelSample_id: TBGRAPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtnAddMicroprobeData: TBitBtn;
    BitBtnEditMicroprobeData: TBitBtn;
    BitBtnClearMicroprobeData: TBitBtn;
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
    ComboBoxInfravermelhoEquipamento: TComboBox;
    ComboBoxRamanEquipamento: TComboBox;
    ComboBoxVarreduraEquipamento: TComboBox;
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
    EditSample_Id: TEdit;
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
    GroupBox13: TGroupBox;
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
    ListBoxSample_id: TListBox;
    ListBoxMinerais: TListBox;
    MemoA: TMemo;
    MemoAlpha: TMemo;
    MemoAmostraDescricao: TMemo;
    MemoAmostraEspecie: TMemo;
    MemoAmostraQuimica: TMemo;
    MemoSample: TMemo;
    MemoB: TMemo;
    MemoBeta: TMemo;
    MemoC: TMemo;
    MemoFonte: TMemo;
    MemoGamma: TMemo;
    MemoInfravermelhoDescricao: TMemo;
    MemoInfravermelhoResolucao: TMemo;
    MemoInfravermelhoSample: TMemo;
    MemoLocalidade: TMemo;
    MemoRamanOrientacao: TMemo;
    MemoRamanPin_id: TMemo;
    Memoproprietario: TMemo;
    MemoQuimicaDescricao: TMemo;
    MemoQuimicaMedida: TMemo;
    MemoQuimicaSample: TMemo;
    MemoRamanDescricao: TMemo;
    MemoRamanSample: TMemo;
    MemoDifracaoSample: TMemo;
    MemoSistemaCristalino: TMemo;
    MemoSituacao: TMemo;
    MemoVarreduraDescricao: TMemo;
    MemoVarreduraSample: TMemo;
    MemoVolume: TMemo;
    MenuItem2: TMenuItem;
    MenuItemSample: TMenuItem;
    MenuItemMinerais: TMenuItem;
    MenuItemAddChartData: TMenuItem;
    MenuItemEraseData: TMenuItem;
    MenuItemImagePanel: TMenuItem;
    MenuItemPanelFiltro: TMenuItem;
    MenuItemExcluir2: TMenuItem;
    MenuItemAdicionar2: TMenuItem;
    MenuItemNovaAmostra: TMenuItem;
    MenuItemExlcuirAmostra: TMenuItem;
    MenuItemInstrumentos: TMenuItem;
    MenuItemAdicionarAmostra: TMenuItem;
    MenuItemRemoverAmostra: TMenuItem;
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
    MenuItemSair: TMenuItem;
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
    PageControlSample: TPageControl;
    PanelControle: TPanel;
    PanelFichas: TPanel;
    PanelSample: TPanel;
    PanelFichaEspecie: TPanel;
    PopupMenuChart: TPopupMenu;
    PopupMenuImage: TPopupMenu;
    PopupMenuEditNome: TPopupMenu;
    PopupMenuSample: TPopupMenu;
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
    procedure ActionChartOnDblClickExecute(Sender: TObject);
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
    procedure ActionCheckDataExecute(Sender: TObject);
    procedure ActionListboxMineraisDoubleClickExecute(Sender: TObject);
    procedure ActionListboxMineraisOnClickExecute(Sender: TObject);
    procedure ActionListboxSampleClickExecute(Sender: TObject);
    procedure ActionListboxSampleDoubleClickExecute(Sender: TObject);
    procedure ActionPreencheListaExecute(Sender: TObject);
    procedure ActionRemoveBlobDataExecute(Sender: TObject);
    procedure ActionSelctSampleDbExecute(Sender: TObject);
    procedure ActionSelectMIneralDbExecute(Sender: TObject);
    procedure ActionVarreduraComprimentoOndaExecute(Sender: TObject);
    procedure BitBtnAddMicroprobeDataClick(Sender: TObject);
    procedure BitBtnClearMicroprobeDataClick(Sender: TObject);
    procedure BitBtnEditMicroprobeDataClick(Sender: TObject);
    procedure BitBtnRemImagemClick(Sender: TObject);
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
    procedure MemoAmostraDescricaoEditingDone(Sender: TObject);
    procedure MemoAmostraDescricaoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MemoAmostraEspecieEditingDone(Sender: TObject);
    procedure MemoAmostraEspecieKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MemoAmostraQuimicaEditingDone(Sender: TObject);
    procedure MemoAmostraQuimicaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MemoBEditingDone(Sender: TObject);
    procedure MemoBetaEditingDone(Sender: TObject);
    procedure MemoBetaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure MemoBKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure MemoCEditingDone(Sender: TObject);
    procedure MemoCKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure MemoFonteEditingDone(Sender: TObject);
    procedure MemoFonteKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState
      );
    procedure MemoGammaEditingDone(Sender: TObject);
    procedure MemoGammaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState
      );
    procedure MemoInfravermelhoResolucaoEditingDone(Sender: TObject);
    procedure MemoInfravermelhoResolucaoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MemoLocalidadeEditingDone(Sender: TObject);
    procedure MemoLocalidadeKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MemoproprietarioEditingDone(Sender: TObject);
    procedure MemoproprietarioKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MemoQuimicaDescricaoEditingDone(Sender: TObject);
    procedure MemoQuimicaDescricaoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MemoQuimicaMedidaEditingDone(Sender: TObject);
    procedure MemoQuimicaMedidaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MemoSistemaCristalinoEditingDone(Sender: TObject);
    procedure MemoSistemaCristalinoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MemoSituacaoEditingDone(Sender: TObject);
    procedure MemoSituacaoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MemoVolumeEditingDone(Sender: TObject);
    procedure MemoVolumeKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState
      );
    procedure MenuItemSampleClick(Sender: TObject);
    procedure MenuItemMineraisClick(Sender: TObject);
    procedure MenuItemSairClick(Sender: TObject);
    procedure MenuItemImagePanelClick(Sender: TObject);
    procedure MenuItemPanelFiltroClick(Sender: TObject);
    procedure MenuItemAdicionar2Click(Sender: TObject);
    procedure MenuItemAdicionarClick(Sender: TObject);
    procedure MenuItemAlfabeticaClick(Sender: TObject);
    procedure MenuItemDensidadeClick(Sender: TObject);
    procedure MenuItemDurezaCick(Sender: TObject);
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
    procedure MenuItemSampleListClick(Sender: TObject);
    procedure MenuItemSelecionaBDClick(Sender: TObject);
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
    procedure ModoEdicao;
    function DefinirOrdem: string;
    procedure Ordem(MenuItemChecked: string);
    procedure PreencheAmostras;
    procedure EquipmentComboboxes;
    procedure UpdateMemos(Table, Field, NewValue, Especie, Sample,
      Digito, Direction: String);
    procedure UpdateEdits(Especie: string; Campo: string; objeto: TDBEdit);
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

  lista_formatos: string = 'All Files| *.jpg; *.jpeg;';
  grande: integer = 13;
  normal: integer = 9;

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

  den_min, den_max, ocorrencia, associacao: string;
  //Usado pelo RichMemo
  fonte, fontenormal, fonte2: TFontParams;

  DatasetFileName: string;

  FormFichaEspecie:TForm;

implementation
           //mudar o nome da unit unitadicionarimagem
uses udatamodule, unitBlobFields;

{$R *.lfm}

{ TFormPrincipal }

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
    Dados.TableMinerals := Dados.DatabaseMinerals.GetTable('UPDATE minerais SET grupo = "' +
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
  begin   {ClearBlobField(Table, Field, Especie, Rruff_id, Digito, Tipo:String);}
    ClearBlobField('minerais', 'imagem'+Imagem_Selecionada, ListboxMinerais.
      GetSelectedText, EmptyStr, EmptyStr, EmptyStr);
  end
  else
  begin
     ClearBlobField('mineralogia', 'mineralogiaimagem'+Imagem_Selecionada, ListboxMinerais.
      GetSelectedText, EmptyStr, EmptyStr, EmptyStr);
  end;
  Imagem_Selecionada := '1';
  AtualizaImagem;
end;

procedure TFormPrincipal.ActionListboxMineraisOnClickExecute(Sender: TObject);
begin
  if Dados.Sqlite3DatasetGeral.FileName <> EmptyStr then
  begin
    limparichmemo;
    ProcuraMineral;
    if MenuItemSample.Checked then
    begin
      if FormSelecionaBd.SampleDB <> EmptyStr then
      PreencheAmostras;
    end;
  end;
end;

procedure TFormPrincipal.ActionListboxSampleClickExecute(Sender: TObject);
begin
  if (ListboxSample_id.GetSelectedText <> EmptyStr) then
  begin
    ComboboxQuimicaDigito.Clear;
    ComboboxRamanDigito.Clear;
    ComboboxVarreduraDigito.Clear;
    ComboboxInfravermelhoDigito.Clear;
    ComboboxDifracaoDigito.Clear;
    ComboboxDirecaoLaser.Clear;
    ComboboxVarreduraOnda.Clear;

    Dados.TableSamples:= Dados.DatabaseSamples.GetTable('SELECT * FROM rruff WHERE rruff_id="'+
      ListboxSample_id.GetSelectedText+'" ;');

   {if ListboxMinerais.GetSelectedText <> Dados.TableSamples.FieldByName['especie']
    then ListboxMinerais.Selected[ListboxMInerais.Items.IndexOf(Dados.
      TableSamples.FieldByName['especie'])]:=False;}

    if Dados.TableSamples.RowCount > 0 then
    begin
      if Dados.TableSamples.MoveFirst then
      begin
        MemoAmostraEspecie.Text:=Dados.TableSamples.FieldByName['especie'];
        MemoSample.Text:=Dados.TableSamples.FieldByName['rruff_id'];
        MemoQuimicaSample.Text:=Dados.TableSamples.FieldByName['rruff_id'];
        MemoRamanSample.Text:= Dados.TableSamples.FieldByName['rruff_id'];
        MemoVarreduraSample.Text:= Dados.TableSamples.FieldByName['rruff_id'];
        MemoInfravermelhoSample.Text:= Dados.TableSamples.FieldByName['rruff_id'];
        MemoDifracaoSample.Text:= Dados.TableSamples.FieldByName['rruff_id'];
        MemoAmostraQuimica.Text:=Dados.TableSamples.FieldByName['quimica_ideal'];
        MemoLocalidade.Text:=Dados.TableSamples.FieldByName['localidade'];
        MemoFonte.Text:=Dados.TableSamples.FieldByName['fonte'];
        MemoProprietario.Text:=Dados.TableSamples.FieldByName['proprietario'];
        MemoAmostraDescricao.Text:=Dados.TableSamples.FieldByName['description'];
        MemoSituacao.Text:=Dados.TableSamples.FieldByName['situacao'];
        self.ImageAmostra.Picture.Graphic:= SelectBlobFieldToJPEGImage('rruff',
          'imagem_amostra', Dados.TableSamples.FieldByName['especie'],
            Dados.TableSamples.FieldByName['rruff_id'], EmptyStr, EmptyStr);
      end;
    end;

    Dados.TableSamples:= Dados.DatabaseSamples.GetTable('SELECT * FROM chemistry WHERE rruff_id="'+
      ListboxSample_id.GetSelectedText+'" ORDER BY (1/(digito+1)) ;');
    if Dados.TableSamples.RowCount > 0 then
    begin
      if Dados.TableSamples.MoveFirst then
      begin
        ComboboxQuimicaDigito.ItemIndex:=
          ComboboxQuimicaDigito.Items.Add(Dados.TableSamples.FieldByName['digito']);
        MemoQuimicaDescricao.Text:=Dados.TableSamples.FieldByName['description'];
        MemoQuimicaMedida.Text:=Dados.TableSamples.FieldByName['quimica_medida'];
        ///esta faltando: microprobe_file, microprobe_equipment
        self.ImageQuimica.Picture.Graphic:= SelectBlobFieldToJPEGImage(
          'chemistry', 'image', Dados.TableSamples.FieldByName['especie'],
            Dados.TableSamples.FieldByName['rruff_id'], Dados.TableSamples.FieldByName
              ['digito'], EmptyStr);
      end;
    end;

    Dados.TableSamples:= Dados.DatabaseSamples.GetTable('SELECT * FROM raman WHERE rruff_id="'+
      ListboxSample_id.GetSelectedText+'" ORDER BY (1/(digito+1)) ;');
    if Dados.TableSamples.RowCount > 0 then
    begin
      if Dados.TableSamples.MoveFirst then
      begin
        ComboboxDirecaoLaser.Items.Clear;
        ComboboxDirecaoLaser.ItemIndex:=
          ComboboxDirecaoLaser.Items.Add(Dados.TableSamples.FieldByName['direcao']);
        ComboboxRamanDigito.ItemIndex:=
          ComboboxRamanDigito.Items.IndexOf(Dados.TableSamples.FieldByName['digito']);
        MemoRamanDescricao.Text:= Dados.TableSamples.FieldByName['description'];
        MemoRamanPin_id.Text:= Dados.TableSamples.FieldByName['pin_id'];
        MemoRamanOrientacao.Text:=  Dados.TableSamples.FieldByName['orientacao'];
        ComboboxRamanEquipamento.ItemIndex:= ComboboxRamanEquipamento.Items.
          Add(Dados.TableSamples.FieldByName['equipment']);
        ChartRaman.ClearSeries;
        ChartRaman.AddSeries(SelectBlobFieldToChartSeries('raman',
          'arquivo_raman', Dados.TableSamples.FieldByName['especie'],
            Dados.TableSamples.FieldByName['rruff_id'], Dados.TableSamples.FieldByName
              ['digito'], Dados.TableSamples.FieldByName['direcao']));
      end;
    end
    else
      ChartRaman.ClearSeries;

    Dados.TableSamples:= Dados.DatabaseSamples.GetTable('SELECT * FROM varredura WHERE rruff_id="'+
      ListboxSample_id.GetSelectedText+'" ORDER BY (1/(digito+1)) ;');
    if Dados.TableSamples.RowCount > 0 then
    begin
      if Dados.TableSamples.MoveFirst then
      begin
        ComboboxVarreduraOnda.ItemIndex:= ComboboxVarreduraOnda.Items.Add(
          Dados.TableSamples.FieldByName['comprimento_onda']);
        ComboboxVarreduraDigito.ItemIndex:= ComboboxVarreduraDigito.Items.Add(
          Dados.TableSamples.FieldByName['digito']);
        ComboboxVarreduraEquipamento.ItemIndex:= ComboboxVarreduraEquipamento.
          Items.IndexOf(Dados.TableSamples.FieldByName['equipment']);
        MemoVarreduraDescricao.Text:= Dados.TableSamples.FieldByName['description'];
        ChartVarredura.ClearSeries;
        ChartVarredura.AddSeries(SelectBlobFieldToChartSeries('varredura',
          'arquivo_varredura', Dados.TableSamples.FieldByName['especie'], Dados.TableSamples.
            FieldByName['rruff_id'], Dados.TableSamples.FieldByName['digito'], Dados.
              TableSamples.FieldByName['comprimento_onda']));
      end;
    end
    else
      ChartVarredura.ClearSeries;

    Dados.TableSamples:= Dados.DatabaseSamples.GetTable('SELECT * FROM infravermelho WHERE '+
      'rruff_id="'+ListboxSample_id.GetSelectedText+'" ORDER BY (1/(digito+1));');
    if Dados.TableSamples.RowCount > 0 then
    begin
      if Dados.TableSamples.MoveFirst then
      begin
        ComboboxInfravermelhoDigito.ItemIndex:= ComboboxInfravermelhoDigito.
          Items.Add(Dados.TableSamples.FieldByName['digito']);
        ComboboxInfravermelhoEquipamento.ItemIndex:=
          ComboboxInfravermelhoEquipamento.Items.IndexOf(Dados.TableSamples.FieldByName
            ['equipment']);
        MemoInfravermelhoResolucao.Text:= Dados.TableSamples.FieldByName['resolucao'];
        MemoInfravermelhoDescricao.Text:= Dados.TableSamples.FieldByName['description'];
        ChartInfravermelho.ClearSeries;
        ChartInfravermelho.AddSeries(SelectBlobFieldToChartSeries(
          'infravermelho', 'arquivo_infravermelho', Dados.TableSamples.FieldByName
            ['especie'], Dados.TableSamples.FieldByName['rruff_id'], Dados.TableSamples.
              FieldByName['digito'], EmptyStr));
      end;
    end
    else
      ChartInfravermelho.ClearSeries;

    Dados.TableSamples:= Dados.DatabaseSamples.GetTable('SELECT * FROM difracao WHERE rruff_id="'+
      ListboxSample_id.GetSelectedText+'" ORDER BY (1/(digito+1));');
    if Dados.TableSamples.RowCount > 0 then
    begin
      if Dados.TableSamples.MoveFirst then
      begin
        ComboboxDifracaoDigito.ItemIndex:= ComboboxDifracaoDigito.Items.Add(
          Dados.TableSamples.FieldByName['digito']);
        MemoA.Text:= Dados.TableSamples.FieldByName['a'];
        MemoB.Text:= Dados.TableSamples.FieldByName['b'];
        MemoC.Text:= Dados.TableSamples.FieldByName['c'];
        MemoAlpha.Text:= Dados.TableSamples.FieldByName['alpha'];
        MemoBeta.Text:= Dados.TableSamples.FieldByName['beta'];
        MemoGamma.Text:= Dados.TableSamples.FieldByName['gamma'];
        MemoVolume.Text:= Dados.TableSamples.FieldByName['volume'];
        MemoSistemaCristalino.Text:= Dados.TableSamples.FieldByName
          ['sistema_cristalino'];
        ChartDifracao.ClearSeries;
        ChartDifracao.AddSeries(SelectBlobFieldToChartSeries('difracao',
          'arquivo_difracao', Dados.TableSamples.FieldByName['especie'], Dados.TableSamples.
            FieldByName['rruff_id'], Dados.TableSamples.FieldByName['digito'],
              EmptyStr));
      end;
    end
    else
      ChartDifracao.ClearSeries;

    Dados.TableSamples:=Dados.DatabaseSamples.GetTable('SELECT DISTINCT digito FROM '+
      'chemistry WHERE rruff_id="'+ListboxSample_id.GetSelectedText+
        '" ORDER BY (1/(digito+1)) ;');
    if Dados.TableSamples.MoveFirst then
    While not Dados.TableSamples.EOF do
    begin
      if ComboboxQuimicaDigito.Items.IndexOf(Dados.TableSamples.FieldByName['digito'])
        < 0 then
      ComboboxQuimicaDigito.Items.Append(Dados.TableSamples.FieldByName['digito']);
      Dados.TableSamples.Next;
    end;
    ComboboxQuimicaDigito.Items.Append(AdicionarAmostra);

    Dados.TableSamples:=Dados.DatabaseSamples.GetTable('SELECT DISTINCT digito FROM '+
      'raman WHERE rruff_id="'+ListboxSample_id.GetSelectedText+
        '" ORDER BY (1/(digito+1)) ;');
    if Dados.TableSamples.MoveFirst then
    While not Dados.TableSamples.EOF do
    begin
      if ComboboxRamanDigito.Items.IndexOf(Dados.TableSamples.FieldByName['digito'])
        < 0 then
      ComboboxRamanDigito.Items.Append(Dados.TableSamples.FieldByName['digito']);
      Dados.TableSamples.Next;
    end;
    ComboboxRamanDigito.Items.Append(AdicionarAmostra);

    Dados.TableSamples:=Dados.DatabaseSamples.GetTable('SELECT DISTINCT digito FROM '+
      'varredura WHERE rruff_id="'+ListboxSample_id.GetSelectedText+
        '" ORDER BY (1/(digito+1)) ;');
    if Dados.TableSamples.MoveFirst then
    While not Dados.TableSamples.EOF do
    begin
      if ComboboxVarreduraDigito.Items.IndexOf(Dados.TableSamples.FieldByName['digito'])
        < 0 then
      ComboboxVarreduraDigito.Items.Append(Dados.TableSamples.FieldByName['digito']);
      Dados.TableSamples.Next;
    end;
    ComboboxVarreduraDigito.Items.Append(AdicionarAmostra);

    Dados.TableSamples:=Dados.DatabaseSamples.GetTable('SELECT DISTINCT digito FROM '+
      'infravermelho WHERE rruff_id="'+ListboxSample_id.GetSelectedText+
        '" ORDER BY (1/(digito+1)) ;');
    if Dados.TableSamples.MoveFirst then
    While not Dados.TableSamples.EOF do
    begin
      if ComboboxInfravermelhoDigito.Items.IndexOf(Dados.TableSamples.FieldByName['digito'])
        < 0 then
      ComboboxInfravermelhoDigito.Items.Append(Dados.TableSamples.FieldByName
        ['digito']);
      Dados.TableSamples.Next;
    end;
    ComboboxInfravermelhoDigito.Items.Append(AdicionarAmostra);

    Dados.TableSamples:=Dados.DatabaseSamples.GetTable('SELECT DISTINCT digito FROM '+
      'difracao WHERE rruff_id="'+ListboxSample_id.GetSelectedText+
        '" ORDER BY (1/(digito+1));');
    if Dados.TableSamples.MoveFirst then
    While not Dados.TableSamples.EOF do
    begin
      if ComboboxDifracaoDigito.Items.IndexOf(Dados.TableSamples.FieldByName['digito'])
        < 0 then
      ComboboxDifracaoDigito.Items.Append(Dados.TableSamples.FieldByName['digito']);
      Dados.TableSamples.Next;
    end;
    ComboboxDifracaoDigito.Items.Append(AdicionarAmostra);

    Dados.TableSamples:=Dados.DatabaseSamples.GetTable('SELECT DISTINCT direcao FROM raman WHERE '+
      'rruff_id="'+ListboxSample_id.GetSelectedText+'" ;');
    if Dados.TableSamples.MoveFirst then
    begin
      While not Dados.TableSamples.EOF do
      begin
        if ComboboxDirecaoLaser.Items.IndexOf(Dados.TableSamples.FieldByName['direcao'])
        < 0 then
        ComboboxDirecaoLaser.Items.Append(Dados.TableSamples.FieldByName['direcao']);
        Dados.TableSamples.Next;
      end;
    end;

    Dados.TableSamples:=Dados.DatabaseSamples.GetTable('SELECT DISTINCT comprimento_onda FROM '+
      'varredura WHERE rruff_id="'+ListboxSample_id.GetSelectedText+'" ;');
    if Dados.TableSamples.MoveFirst then
    begin
      While not Dados.TableSamples.EOF do
      begin
        if ComboboxVarreduraOnda.Items.IndexOf(Dados.TableSamples.FieldByName
          ['comprimento_onda']) < 0 then
        ComboboxVarreduraOnda.Items.Append(Dados.TableSamples.FieldByName[
          'comprimento_onda']);
        Dados.TableSamples.Next;
      end;
    end;
  end;
end;

procedure TFormPrincipal.ActionListboxSampleDoubleClickExecute(Sender: TObject);
begin
  if ListboxSample_id.GetSelectedText <> EmptyStr then
  begin
    if MenuItemMinerais.Checked then
    begin    //obs: colocar SQL string com seleção de varias tabelas
      Dados.TableSamples:= Dados.DatabaseSamples.GetTable('SELECT * FROM rruff WHERE especie="'+
        ListboxMinerais.GetSelectedText+'" AND rruff_id="'+
          ListboxSample_id.GetSelectedText  +'" ;');
    end
    else
    begin
      Dados.TableSamples:= Dados.DatabaseSamples.GetTable('SELECT * FROM rruff '+
        ' WHERE rruff_id="'+ ListboxSample_id.GetSelectedText  +'" ;');
    end;
    FormFichaAmostra:=TFormFichaAmostra.Create(nil);
    with FormFichaAmostra do
    begin
      Caption:= ListboxSample_id.GetSelectedText;
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

procedure TFormPrincipal.ActionRemoveBlobDataExecute(Sender: TObject);
begin
  case PageControlSample.TabIndex of
  0:begin
      if MenuItemMinerais.Checked then
      begin
        ClearBlobField('rruff', 'imagem_amostra', ListboxMinerais.
          GetSelectedText, ListboxSample_id.GetSelectedText, EmptyStr, EmptyStr);
      end
      else
      begin
        ClearBlobField('rruff', 'imagem_amostra', EmptyStr, ListboxSample_id.
          GetSelectedText, EmptyStr, EmptyStr);
      end;
      ImageAmostra.Picture.Clear;
    end;
  1:begin
      if MenuItemMinerais.Checked then
      begin
        ClearBlobField('chemistry', 'image', ListboxMinerais.
          GetSelectedText, ListboxSample_id.GetSelectedText,
            ComboboxQuimicaDigito.Text, EmptyStr);
      end
      else
      begin
        ClearBlobField('chemistry', 'image', EmptyStr, ListboxSample_id.
          GetSelectedText, ComboboxQuimicaDigito.Text, EmptyStr);
      end;
      ImageQuimica.Picture.Clear;
    end;
  2:begin
      if MenuItemMinerais.Checked then
      begin
        ClearBlobField('raman', 'arquivo_raman', ListboxMinerais.
          GetSelectedText, ListboxSample_id.GetSelectedText,
            ComboboxRamanDigito.Text, ComboboxDirecaolaser.Text);
      end
      else
      begin
        ClearBlobField('raman', 'arquivo_raman', EmptyStr,
          ListboxSample_id.GetSelectedText, ComboboxRamanDigito.Text,
            ComboboxDirecaolaser.Text);
      end;
      ChartRaman.ClearSeries;
    end;
  3:begin
      if MenuItemMinerais.Checked then
      begin
        ClearBlobField('varredura', 'arquivo_varredura', ListboxMinerais.
          GetSelectedText, ListboxSample_id.GetSelectedText,
            ComboboxVarreduraDigito.Text, ComboboxVarreduraOnda.Text);
      end
      else
      begin
        ClearBlobField('varredura', 'arquivo_varredura', EmptyStr,
          ListboxSample_id.GetSelectedText, ComboboxVarreduraDigito.Text,
            ComboboxVarreduraOnda.Text);
      end;
      ChartVarredura.ClearSeries;
    end;
  4:begin
      if MenuItemMinerais.Checked then
      begin
        ClearBlobField('infravermelho', 'arquivo_infravermelho',
          ListboxMinerais.GetSelectedText, ListboxSample_id.GetSelectedText,
            ComboboxInfravermelhoDigito.Text, EmptyStr);
      end
      else
      begin
        ClearBlobField('infravermelho', 'arquivo_infravermelho',
          EmptyStr, ListboxSample_id.GetSelectedText,
            ComboboxInfravermelhoDigito.Text, EmptyStr);
      end;
      ChartInfravermelho.ClearSeries;
    end;
  5:begin
      if MenuItemMinerais.Checked then
      begin
        ClearBlobField('difracao', 'arquivo_difracao',
          ListboxMinerais.GetSelectedText, ListboxSample_id.GetSelectedText,
            ComboboxDifracaoDigito.Text, EmptyStr);
      end
      else
      begin
        ClearBlobField('difracao', 'arquivo_difracao',
          EmptyStr, ListboxSample_id.GetSelectedText,
            ComboboxDifracaoDigito.Text, EmptyStr);
      end;
      ChartDifracao.ClearSeries;
    end;
  end;
end;

procedure TFormPrincipal.ActionSelctSampleDbExecute(Sender: TObject);
begin
  if (FormSelecionaBD.ListBoxSelectSampleDb.GetSelectedText <> EmptyStr) then
  begin
    if Dados.ChooseDatabase('amostras',FormSelecionaBD.ListBoxSelectSampleDb.
      GetSelectedText) then
    begin
      FormSelecionaBD.SampleDB:= FormSelecionaBD.ListBoxSelectSampleDb.GetSelectedText;
      Dados.DatabaseSamples := TSQLiteDatabase.Create(FormSelecionaBD.ListBoxSelectSampleDb.
        GetSelectedText);
      PreencheAmostras;
      EquipmentComboboxes;
    end
    else
      ShowMessage('O banco de dados selecionado não é compatível.');
  end
  else
    ShowMessage('Selecione um banco de dados na lista.');
end;

procedure TFormPrincipal.ActionSelectMIneralDbExecute(Sender: TObject);
begin
  if (FormSelecionaBD.ListBoxSelectMineralDb.GetSelectedText <> EmptyStr) then
  begin
    if Dados.ChooseDatabase('minerais',FormSelecionaBD.ListBoxSelectMineralDb.
      GetSelectedText) then
    begin
      FormSelecionaBd.MineralDB:=FormSelecionaBD.ListBoxSelectMineralDb.GetSelectedText;
    //Dados.Sqlite3DatasetGeral.Close;
    Dados.DatabaseMinerals := TSQLiteDatabase.Create(FormSelecionaBD.ListBoxSelectMineralDb.
      GetSelectedText);
    Dados.Sqlite3DatasetGeral.FileName:=FormSelecionaBD.ListBoxSelectMineralDb.
      GetSelectedText;
//    Dados.Sqlite3DatasetGeral.Open;
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
    ShowMessage('Selecione um banco de dados na lista.');
end;

procedure TFormPrincipal.ActionVarreduraComprimentoOndaExecute(Sender: TObject);
begin
   if ListboxSample_id.GetSelectedText <> EmptyStr then
  begin
      ChartVarredura.ClearSeries;
      ChartVarredura.AddSeries(SelectBlobFieldToChartSeries('varredura',
        'arquivo_varredura', ListboxMinerais.GetSelectedText,
          ListboxSample_id.GetSelectedText, ComboboxVarreduraDigito.Text,
            ComboboxVarreduraOnda.Text));
      ComboboxVarreduraEquipamento.ItemIndex:=ComboboxVarreduraEquipamento.
        Items.IndexOf(Dados.TableSamples.FieldByName['equipment']);
  end;
end;

procedure TFormPrincipal.BitBtnAddMicroprobeDataClick(Sender: TObject);
begin
  {SelectBlobFieldToCSVFile(Table, Field, Especie, Rruff_id, Digito,
  Tipo, Equipment:String}
  if OpenDialog1.Execute then
  begin
    CSVFileToBlobField(OpenDialog1.FileName, 'chemistry', 'microprobe_file',
      MemoAmostraEspecie.Text, MemoSample.Text, Trim(ComboboxQuimicaDigito.
        Text), EmptyStr);
    FormPlanilha.ArquivoMicrossonda(MemoAmostraEspecie.Text, MemoSample.Text,
    Trim(ComboboxQuimicaDigito.Text));
    //FormPlanilha.Show;
  end;
end;

procedure TFormPrincipal.BitBtnClearMicroprobeDataClick(Sender: TObject);
begin
  ClearBlobField('chemistry', 'microprobe_file', MemoAmostraEspecie.Text,
    MemoSample.Text, ComboboxQuimicaDigito.Text, EmptyStr);
end;

procedure TFormPrincipal.BitBtnEditMicroprobeDataClick(Sender: TObject);
begin
  FormPlanilha.ArquivoMicrossonda(MemoAmostraEspecie.Text, MemoSample.Text,
    Trim(ComboboxQuimicaDigito.Text));
  //FormPlanilha.Show;
end;

procedure TFormPrincipal.ActionListboxMineraisDoubleClickExecute(Sender: TObject
  );
begin
  if ListboxMinerais.GetSelectedText <> EmptyStr then
  begin
    FormFichaEspecie:=TFormFichaEspecie.Create(nil);
    with FormFichaEspecie do
    begin
      Caption:=ListboxMinerais.GetSelectedText;
      Show;
    end;
  end;
end;

procedure TFormPrincipal.ActionCheckDataExecute(Sender: TObject);
begin
  if PageControlSample.ActivePageIndex <> 0 then
  begin
     FormPlanilha:=TFormPlanilha.Create(nil);
     with FormPlanilha do
     begin
       Caption:=ListboxMinerais.GetSelectedText+' - '+ListboxSample_id.GetSelectedText;
     end;
    if PageControlSample.ActivePageIndex = 1 then
    begin
      FormPlanilha.ArquivoPlanilha('chemistry', 'microprobe_file',
        MemoAmostraEspecie.Text, MemoSample.Text, ComboboxQuimicaDigito.Text,
          EmptyStr, EmptyStr);
      //obs: atenção, equipamento, está faltando completar em todas as funções
      //abaixo
    end
    else
    if PageControlSample.ActivePageIndex = 2 then
    begin
      FormPlanilha.ArquivoPlanilha('raman','arquivo_raman', MemoAmostraEspecie.
        Text, MemoSample.Text, ComboboxRamanDigito.Text, ComboboxDirecaoLaser.
          Text, EmptyStr);
    end
    else
    if PageControlSample.ActivePageIndex = 3 then
    begin
      FormPlanilha.ArquivoPlanilha('varredura','arquivo_varredura',
         MemoAmostraEspecie.Text, MemoSample.Text, ComboboxVarreduraDigito.Text,
           ComboboxVarreduraOnda.Text, EmptyStr);
    end
    else
    if PageControlSample.ActivePageIndex = 4 then
    begin
      FormPlanilha.ArquivoPlanilha('infravermelho','arquivo_infravermelho',
        MemoAmostraEspecie.Text, MemoSample.Text, ComboboxInfravermelhoDigito.
          Text, EmptyStr, EmptyStr);
    end
    else
    if PageControlSample.ActivePageIndex = 5 then
    begin
      FormPlanilha.ArquivoPlanilha('difracao','arquivo_difracao',
        MemoAmostraEspecie.Text, MemoSample.Text, ComboboxDifracaoDigito.Text,
          EmptyStr, EmptyStr);
    end;
    FormPlanilha.Show;
  end;
end;

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
  {Case k of
  1:begin end;
  2:begin
      ChartRaman.AddSeries(SelectBlobFieldToChartSeries('raman', 'arquivo_raman',+
        MemoAmostraEspecie.Text, MemoSample.Text, ComboboxRamanDigito.Text,
          ComboboxDirecaoLaser.Text));
    end;
  3:begin

    end;
  4:begin

    end;
  5:begin

    end;
  end;
      }
  FormAdicionaRruff.Hide;
end;

procedure TFormPrincipal.ActionRamanDirecaoLaserExecute(Sender: TObject);
begin
  if ListboxSample_id.GetSelectedText <> EmptyStr then
  begin
    ChartRaman.ClearSeries;
    if MenuItemMinerais.Checked then
    begin
      Dados.TableSamples:=Dados.DatabaseSamples.GetTable('SELECT equipment FROM raman WHERE '+
        'especie="'+ListboxMinerais.GetSelectedText+'" AND rruff_id="'+
          ListboxSample_id.GetSelectedText+'" AND digito="'+
            ComboboxRamanDigito.Text+'" ;');
       ComboboxRamanEquipamento.ItemIndex:= ComboboxRamanEquipamento.Items.
         IndexOf(Dados.TableSamples.FieldByName['equipment']);

      ChartRaman.AddSeries(SelectBlobFieldToChartSeries('raman', 'arquivo_raman',
        ListboxMinerais.GetSelectedText, ListboxSample_id.GetSelectedText,
          ComboboxRamanDigito.Text, ComboboxDirecaoLaser.Text));
    end
    else
    begin
      Dados.TableSamples:=Dados.DatabaseSamples.GetTable('SELECT equipment FROM raman WHERE '+
        'rruff_id="'+ListboxSample_id.GetSelectedText+'" AND digito="'+
          ComboboxRamanDigito.Text+'" ;');
      ComboboxRamanEquipamento.ItemIndex:= ComboboxRamanEquipamento.Items.
         IndexOf(Dados.TableSamples.FieldByName['equipment']);

      ChartRaman.AddSeries(SelectBlobFieldToChartSeries('raman', 'arquivo_raman',
        EmptyStr, ListboxSample_id.GetSelectedText, ComboboxRamanDigito.Text,
          ComboboxDirecaoLaser.Text));
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
  if ListboxSample_id.GetSelectedText <> EmptyStr then
  begin
    Case PageControlSample.TabIndex of
    2:begin
      Dados.DatabaseSamples.ExecSQL('UPDATE raman SET equipment="'+
        ComboBoxRamanEquipamento.Text+'" WHERE (especie="'+ListboxMinerais.
          GetSelectedText+'" AND rruff_id="'+ ListboxSample_id.GetSelectedText+
            '" AND digito="'+ ComboboxRamanDigito.Text+'" AND '+
              'direcao="'+ComboboxDirecaoLaser.Text+'");');
    end;
    3:begin
      Dados.DatabaseSamples.ExecSQL('UPDATE varredura SET equipment="'+
        ComboBoxVarreduraEquipamento.Text+'" WHERE (especie="'+ListboxMinerais.
          GetSelectedText+'" AND rruff_id="'+ ListboxSample_id.GetSelectedText+
            '" AND digito="'+ ComboboxVarreduraDigito.Text+'" AND '+
              'comprimento_onda="'+ComboboxVarreduraOnda.Text+'");');
    end;
    4:begin
      Dados.DatabaseSamples.ExecSQL('UPDATE infravermelho SET equipment="'+
        ComboBoxInfravermelhoEquipamento.Text+'" WHERE (especie="'+ListboxMinerais.
          GetSelectedText+'" AND rruff_id="'+ ListboxSample_id.GetSelectedText+
            '" AND digito="'+ ComboboxInfravermelhoDigito.Text+'" );');
    end;
    end;
  end;
end;

procedure TFormPrincipal.ActionAddExecute(Sender: TObject);
begin
  if FormSelecionaBd.SampleDb <> EmptyStr then
  begin
    Dados.TableSamples:= Dados.DatabaseSamples.GetTable('SELECT rruff_id FROM '+
      'rruff WHERE rruff_id = "'+Trim(EditSample_id.Text)+'" ;');
    if Dados.TableSamples.RowCount >0 then
    begin
      ShowMessage('Já existe amostra com essa identificação.');
    end
    else
    begin
      if MenuItemMinerais.Checked then
        Dados.AdicionaAmostra('rruff', ListboxMinerais.GetSelectedText, EditSample_id.Text,
          '0', '', '')
      else
        Dados.AdicionaAmostra('rruff', '', EditSample_id.Text, '0', '', '');
      PreencheAmostras;
    end;
  end
  else
   ShowMessage('Não há banco de dados de amostras selecionado.');
end;

procedure TFormPrincipal.ActionChartOnDblClickExecute(Sender: TObject);
begin
  if ListboxSample_id.GetSelectedText <> EmptyStr then
  begin
    if OpenDialog1.Execute then
    begin
      if OpenDialog1.FileName <> EmptyStr then
      begin
        case PageControlSample.TabIndex of
        2:begin
          if ComboboxDirecaoLaser.Text = TodosOsDados then
            ShowMessage('Escolha o ângulo de polarização do laser.')
          else
            begin
            AddBlobFieldData(OpenDialog1.FileName, 'raman', 'arquivo_raman',
              ComboboxDirecaoLaser.Text, MemoAmostraEspecie.Text,
                MemoSample.Text, ComboboxRamanDigito.Text);
            ChartRaman.AddSeries(SelectBlobFieldToChartSeries('raman',
              'arquivo_raman', ListboxMinerais.GetSelectedText, ListboxSample_id.
                GetSelectedText, ComboboxRamanDigito.Text,
                  ComboboxDirecaoLaser.Text));
            end;
          end;
        3:begin
            AddBlobFieldData(OpenDialog1.FileName, 'varredura',
              'arquivo_varredura', ComboboxVarreduraOnda.Text,
                MemoAmostraEspecie.Text, MemoSample.Text,
                  ComboboxVarreduraDigito.Text);
            ChartVarredura.AddSeries(SelectBlobFieldToChartSeries('varredura',
              'arquivo_varredura', ListboxMinerais.GetSelectedText,
                ListboxSample_id.GetSelectedText, ComboboxVarreduraDigito.Text,
                  ComboboxVarreduraOnda.Text));
          end;
        4:begin
            AddBlobFieldData(OpenDialog1.FileName, 'infravermelho',
              'arquivo_infravermelho', EmptyStr,
                MemoAmostraEspecie.Text, MemoSample.Text,
                  ComboboxInfravermelhoDigito.Text);
            ChartInfravermelho.AddSeries(SelectBlobFieldToChartSeries(
              'infravermelho', 'arquivo_infravermelho', ListboxMinerais.
                GetSelectedText, ListboxSample_id.GetSelectedText,
                  ComboboxInfravermelhoDigito.Text,  EmptyStr));
          end;
        5:begin
            AddBlobFieldData(OpenDialog1.FileName, 'difracao',
              'arquivo_difracao', EmptyStr,
                MemoAmostraEspecie.Text, MemoSample.Text,
                  ComboboxDifracaoDigito.Text);
            ChartDifracao.AddSeries(SelectBlobFieldToChartSeries(
              'difracao', 'arquivo_difracao', ListboxMinerais.
                GetSelectedText, ListboxSample_id.GetSelectedText,
                  ComboboxDifracaoDigito.Text,  EmptyStr));
          end;
        end;
      end;
    end;
  end
  else
  ShowMessage('Escolha uma amostra para adicionar dados.');
end;

procedure TFormPrincipal.ActionComboboxGrupoExecute(Sender: TObject);
begin
  Preenche_SubGrupos;
  Preenche_Lista;
end;

procedure TFormPrincipal.ActionComboboxOnChangeExecute(Sender: TObject);
  procedure OpenFormSample;
  var TableName: String;
  begin
    FormAdicionaRruff.EditNome.Text:=MemoAmostraEspecie.Text;
    FormAdicionaRruff.EditSample_id.Text:=MemoSample.Text;

    Case PageControlSample.TabIndex of
    1:TableName:='chemistry';
    2:TableName:='raman';
    3:TableName:='varredura';
    4:TableName:='infravermelho';
    5:TableName:='difracao';
    end;

    FormAdicionaRruff.ListBox1.Clear;
    Dados.TableSamples:= Dados.DatabaseSamples.GetTable('SELECT DISTINCT digito FROM '+TableName+
      ' ;'); //WHERE digito != "0" ;');
    Dados.TableSamples.MoveFirst;
    While not Dados.TableSamples.EOF do
    begin
      FormAdicionaRruff.ListBox1.Items.Add(
        FormAdicionaRruff.EditSample_id.Text+' - '+ Dados.TableSamples.FieldByName
          ['digito']);
      Dados.TableSamples.Next;
    end;

    FormAdicionaRruff.LocalAmostra:=PageControlSample.TabIndex;
    FormAdicionaRruff.DirecaoLaser:=ComboboxDirecaoLaser.Text;
    FormAdicionaRruff.ComprimentoOnda:=ComboboxVarreduraOnda.Text;
    FormAdicionaRruff.Show;
  end;

begin
  Case PageControlSample.TabIndex of
  1:begin
      if ComboboxQuimicaDigito.Text = AdicionarAmostra then OpenFormSample
      else
      begin
        self.ImageQuimica.Picture.Graphic:= SelectBlobFieldToJPEGImage(
          'chemistry', 'microprobe_file', ListboxMinerais.GetSelectedText,
            ListboxSample_id.GetSelectedText, ComboboxQuimicaDigito.Text,
              EmptyStr);
      end;
    end;
  2:begin
      if ComboboxRamanDigito.Text = AdicionarAmostra then OpenFormSample
      else
      begin
        if ComboboxRamanDigito.Text = '0' then
        begin
          ComboboxDirecaoLaser.Items.Clear;
          ComboboxDirecaoLaser.ItemIndex:= ComboboxDirecaoLaser.Items.
            Add(Onda514);
          ComboboxDirecaoLaser.Items.Append(Onda532);
          ComboboxDirecaoLaser.Items.Append(Onda580);
          ComboboxDirecaoLaser.Items.Append(Onda732);
          ComboboxDirecaoLaser.Items.Append(Onda780);
        //ComboboxDirecaoLaser.ItemIndex:= ComboboxDirecaoLaser.Items.Add(TodosOsDados);
        end
        else
        begin
          ComboboxDirecaoLaser.Items.Clear;
          ComboboxDirecaoLaser.ItemIndex:= ComboboxDirecaoLaser.Items.
            Add(Angulo0);
          ComboboxDirecaoLaser.Items.Append(Angulo45);
          ComboboxDirecaoLaser.Items.Append(Angulo90);
          ComboboxDirecaoLaser.Items.Append('Não Polarizado');
        end;
        ChartRaman.ClearSeries;
        //obs: equipamento
        ChartRaman.AddSeries(SelectBlobFieldToChartSeries('raman',
          'arquivo_raman', ListboxMinerais.GetSelectedText,
            ListboxSample_id.GetSelectedText, ComboboxRamanDigito.Text,
              ComboboxDirecaoLaser.Text));
      end;
    end;
  3:begin
      if ComboboxVarreduraDigito.Text = AdicionarAmostra then OpenFormSample
      else
      begin
        ChartVarredura.ClearSeries;
        ChartVarredura.AddSeries(SelectBlobFieldToChartSeries('varredura',
          'arquivo_varredura', ListboxMinerais.GetSelectedText,
            ListboxSample_id.GetSelectedText, ComboboxVarreduraDigito.Text,
              ComboboxVarreduraOnda.Text));
      end;
  end;
  4:begin
      if ComboboxInfravermelhoDigito.Text = AdicionarAmostra then OpenFormSample
      else
      begin
        ChartInfravermelho.ClearSeries;
        ChartInfravermelho.AddSeries(SelectBlobFieldToChartSeries('infravermelho',
          'arquivo_infravermelho', ListboxMinerais.GetSelectedText,
            ListboxSample_id.GetSelectedText, ComboboxInfravermelhoDigito.Text,
              EmptyStr));
      end;
    end;
  5:begin
      if ComboboxDifracaoDigito.Text = AdicionarAmostra then OpenFormSample
      else
      begin
        ChartDifracao.ClearSeries;
        ChartDifracao.AddSeries(SelectBlobFieldToChartSeries('difracao',
          'arquivo_difracao', ListboxMinerais.GetSelectedText,
            ListboxSample_id.GetSelectedText, ComboboxDifracaoDigito.Text,
              EmptyStr));
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
 if ListboxSample_id.GetSelectedText <> EmptyStr then
  begin
    OpenPictureDialog1.FileName := EmptyStr;
    if OpenPictureDialog1.Execute then
    begin
      if OpenPictureDialog1.FileName <> EmptyStr then
      begin
        AddBlobFieldData(OpenPictureDialog1.FileName, 'rruff', 'imagem_amostra',
          EmptyStr, ListboxMinerais.GetSelectedText, ListboxSample_id.
            GetSelectedText, EmptyStr);
        //obs: equipamento
        self.ImageAmostra.Picture.Graphic := SelectBlobFieldToJPEGImage(
          'rruff', 'imagem_amostra', ListboxMinerais.GetSelectedText,
            ListboxSample_id.GetSelectedText, EmptyStr, EmptyStr);
      end;
    end;
  end
  else
    ShowMessage('Escolha uma amostra para adicionar uma imagem.');
end;

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
        'FROM rruff WHERE especie="'+ListboxMinerais.GetSelectedText+'" AND '+
          'rruff_id="'+ListboxSample_id.GetSelectedText+'" AND digito='+
            '"'+ComboboxQuimicaDigito.Text+'";');
      if Dados.TableSamples.RowCount = 0 then
      begin
      Dados.DatabaseSamples.ExecSQL('INSERT INTO rruff (especie, rruff_id, digito) VALUES '+
        '("'+ListboxMinerais.GetSelectedText+'", "'+ListBoxSample_id.
          GetSelectedText+'", "'+ComboboxQuimicaDigito.Text+'");');
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
end;

procedure TFormPrincipal.ActionImageQuimicaDblClickExecute(Sender: TObject);
var Digito:String;
begin
  if ListboxSample_id.GetSelectedText <> EmptyStr then
  begin
    OpenPictureDialog1.FileName := EmptyStr;
    if OpenPictureDialog1.Execute then
    begin
      if OpenPictureDialog1.FileName <> EmptyStr then
      begin
        Digito:=Trim(ComboboxQuimicaDigito.Text);
        if Digito = EmptyStr then Digito:='0';
        Dados.TableSamples:= Dados.DatabaseSamples.GetTable('SELECT rruff_id FROM '+
          'chemistry WHERE rruff_id="'+ MemoSample.Text +'" ;');
        if Dados.TableSamples.RowCount < 1 then Dados.DatabaseSamples.ExecSQL(
          'INSERT INTO chemistry (rruff_id, especie, digito) VALUES '+
            '("'+MemoSample.Text+'","'+MemoAmostraEspecie.Text+'","'+Digito+
              '") ; ');
        AddBlobFieldData(OpenPictureDialog1.FileName, 'chemistry', 'image',
          EmptyStr, ListboxMinerais.GetSelectedText, ListboxSample_id.
            GetSelectedText, Digito);
        self.ImageQuimica.Picture.Graphic := SelectBlobFieldToJPEGImage(
          'chemistry', 'image', ListboxMinerais.GetSelectedText,
            ListboxSample_id.GetSelectedText, Digito, EmptyStr);
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
    Dados.TableMinerals := Dados.DatabaseMinerals.GetTable('UPDATE minerais SET subclasse = "' + Copy(
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
    Dados.TableMinerals := Dados.DatabaseMinerals.GetTable('UPDATE minerais SET subgrupo = "' + Copy(
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
 // sldb.Free;
end;

procedure TFormPrincipal.FormCreate(Sender: TObject);
var
  MineralDb, SamplesDb, Diretorio, Ordenamento: string;
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
  if DirectoryExists(GetCurrentDir+'\Data') then
    ConfigFilePath := GetCurrentDir + '\Data\config.ini'
  else
    ConfigFilePath:= GetCurrentDir + '\config.ini';
  Config := TIniFile.Create(ConfigFilePath);
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
    MenuItemSample.Checked := True;
    BGRAPanelSample_id.Visible := True;
    PanelSample.Visible := True;
    PanelFichaEspecie.Visible := False;
  end;
  if Config.ReadBool('Configuracoes', 'PainelMinerais', True) then
  begin
    if not MenuItemSample.Checked then PanelFichaEspecie.Visible:=True;
    BGRAPanelEspecies.Visible:=True;
  end;
  MudarFonte;
  FormSelecionaBD.MineralDb := Config.ReadString('Configuracoes', 'MineralBD', '');
  FormSelecionaBD.SampleDb := Config.ReadString('Configuracoes', 'AmostraBD', '');

  if FileExists(Trim(FormSelecionaBD.MineralDb)) then
  begin
    if Dados.ChooseDatabase('minerais', FormSelecionaBD.MineralDb) then
    begin
      Dados.DatabaseMinerals := TSQLiteDatabase.Create(FormSelecionaBD.
        MineralDb);
      Dados.Sqlite3DatasetGeral.FileName:=FormSelecionaBD.MineralDb;
      Dados.Sqlite3DatasetDidatico.FileName:=FormSelecionaBD.MineralDb;
      Dados.Sqlite3DatasetDidatico.Open(); //?
      Preenche_Classes;
      Preenche_SubClasses;
      Preenche_Grupos;
      Preenche_SubGrupos;
      Preenche_Lista;
    end
    else
      ShowMessage('O banco de dados de minerais selecionado não é compatível.');
  end
  else
  begin
    Config.WriteString('Configuracoes','MineralBD','');
   StatusBar1.Panels.Items[0].Text:='Sem dados de minerais.';
  end;

  if FileExists(Trim(FormSelecionaBD.SampleDb)) then
  begin
    if Dados.ChooseDatabase('amostras', FormSelecionaBD.SampleDb) then
    begin
      Dados.DatabaseSamples:= TSQLiteDatabase.Create(FormSelecionaBD.SampleDb);
      Dados.Sqlite3DatasetPreencheAmostras.FileName:=FormSelecionaBD.SampleDb;
      Dados.Sqlite3DatasetInstrumentos.FileName:=FormSelecionaBD.SampleDb;
      PreencheAmostras;
      EquipmentComboboxes;
    end
    else
      ShowMessage('O banco de dados de amostras selecionado não é compatível.');
  end
  else
  begin
    Config.WriteString('Configuracoes','AmostraBD','');
    StatusBar1.Panels.Items[1].Text:='Sem dados de amostras.';
  end;
  Config.Free;
  openpicturedialog1.Filter := lista_formatos;
  OpenDialog1.Filter := 'All Files | *.csv; *.txt; *.dat; *.*;';
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
  DBMemoHabito.Height := Trunc(GroupBoxCristalografia.Height * 0.295);

  Config := TINIFile.Create(GetCurrentDir + '\Data\config.ini');
  Comprimento := FormPrincipal.Width;
  Config.WriteString('Configuracoes', 'Comprimento', IntToStr(FormPrincipal.Width));
  Altura := FormPrincipal.Height;
  Config.WriteString('Configuracoes', 'Altura', IntToStr(FormPrincipal.Height));
  Config.Free;
end;

procedure TFormPrincipal.MemoAEditingDone(Sender: TObject);
begin
  {UpDateSample('difracao', ListboxSample_id.GetSelectedText,
    'a', MemoA);    }
end;

procedure TFormPrincipal.MemoAKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  {UpDateSample('difracao', ListboxSample_id.GetSelectedText,
    'a', MemoA);}
end;

procedure TFormPrincipal.MemoAlphaEditingDone(Sender: TObject);
begin
  {UpDateSample('difracao', ListboxSample_id.GetSelectedText,
    'alpha', MemoAlpha); }
end;

procedure TFormPrincipal.MemoAlphaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  {UpDateSample('difracao', ListboxSample_id.GetSelectedText,
    'alpha', MemoAlpha);}
end;

procedure TFormPrincipal.MemoAmostraDescricaoEditingDone(Sender: TObject);
begin
  UpdateMemos('rruff','description', MemoAmostraDescricao.Text, EmptyStr,
    MemoSample.Text, EmptyStr, EmptyStr);
end;

procedure TFormPrincipal.MemoAmostraDescricaoKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  UpdateMemos('rruff','description', MemoAmostraDescricao.Text, EmptyStr,
    MemoSample.Text, EmptyStr, EmptyStr);
end;

procedure TFormPrincipal.MemoAmostraEspecieEditingDone(Sender: TObject);
begin
  UpdateMemos( 'rruff', 'especie', MemoAmostraEspecie.Text,
    EmptyStr, MemoSample.Text, Trim(MemoAmostraQuimica.Text), EmptyStr);
end;

procedure TFormPrincipal.MemoAmostraEspecieKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  UpdateMemos('rruff', 'especie', MemoAmostraEspecie.Text,
    EmptyStr, MemoSample.Text, EmptyStr, EmptyStr);
end;

procedure TFormPrincipal.MemoAmostraQuimicaEditingDone(Sender: TObject);
begin
  UpdateMemos('rruff', 'quimica_ideal', MemoAmostraQuimica.Text, EmptyStr,
    MemoSample.Text, EmptyStr, EmptyStr);
end;

procedure TFormPrincipal.MemoAmostraQuimicaKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  UpdateMemos('rruff', 'quimica_ideal', MemoAmostraQuimica.Text, EmptyStr,
    MemoSample.Text, EmptyStr, EmptyStr);
end;

procedure TFormPrincipal.MemoBEditingDone(Sender: TObject);
begin
  {UpDateSample('difracao', ListboxSample_id.GetSelectedText,
    'b', MemoB);    }
end;

procedure TFormPrincipal.MemoBetaEditingDone(Sender: TObject);
begin
  {UpDateSample('difracao', ListboxSample_id.GetSelectedText,
   'beta', MemoBeta);}
end;

procedure TFormPrincipal.MemoBetaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  {UpDateSample('difracao', ListboxSample_id.GetSelectedText,
    'beta', MemoBeta);}
end;

procedure TFormPrincipal.MemoBKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  {UpDateSample('difracao', ListboxSample_id.GetSelectedText,
    'b', MemoB);}
end;

procedure TFormPrincipal.MemoCEditingDone(Sender: TObject);
begin
  {UpDateSample('difracao', ListboxSample_id.GetSelectedText,
    'c', MemoC);}
end;

procedure TFormPrincipal.MemoCKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  {UpDateSample('difracao', ListboxSample_id.GetSelectedText,
    'c', MemoC);}
end;

procedure TFormPrincipal.MemoFonteEditingDone(Sender: TObject);
begin
  UpdateMemos('rruff', 'fonte', MemoFonte.Text, Emptystr, MemoSample.Text,
    EmptyStr, EmptyStr);
end;

procedure TFormPrincipal.MemoFonteKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  UpdateMemos('rruff', 'fonte', MemoFonte.Text, Emptystr, MemoSample.Text,
    EmptyStr, EmptyStr);
end;

procedure TFormPrincipal.MemoGammaEditingDone(Sender: TObject);
begin
  {UpDateSample('difracao', ListboxSample_id.GetSelectedText,
    'gamma', MemoGamma);}
end;

procedure TFormPrincipal.MemoGammaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   {UpDateSample('difracao', ListboxSample_id.GetSelectedText,
    'gamma', MemoGamma);}
end;

procedure TFormPrincipal.MemoInfravermelhoResolucaoEditingDone(Sender: TObject);
begin
  {UpDateSample('difracao', ListboxSample_id.GetSelectedText,
    'resolucao', MemoInfravermelhoResolucao);}
end;

procedure TFormPrincipal.MemoInfravermelhoResolucaoKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  {UpDateSample('difracao', ListboxSample_id.GetSelectedText,
    'resolucao', MemoInfravermelhoResolucao);}
end;

procedure TFormPrincipal.MemoLocalidadeEditingDone(Sender: TObject);
begin
  UpdateMemos('rruff', 'localidade', MemoLocalidade.Text, EmptyStr,
    MemoSample.Text, EmptyStr, EmptyStr);
end;

procedure TFormPrincipal.MemoLocalidadeKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  UpdateMemos('rruff', 'localidade', MemoLocalidade.Text, EmptyStr,
    MemoSample.Text, EmptyStr, EmptyStr);
end;

procedure TFormPrincipal.MemoproprietarioEditingDone(Sender: TObject);
begin
  UpdateMemos('rruff','proprietario', MemoProprietario.Text, EmptyStr,
    MemoSample.Text, EmptyStr, EmptyStr);
end;

procedure TFormPrincipal.MemoproprietarioKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

end;

procedure TFormPrincipal.MemoQuimicaDescricaoEditingDone(Sender: TObject);
begin
  UpdateMemos('chemistry','description', MemoQuimicaDescricao.Text, EmptyStr,
    MemoSample.Text, ComboboxQuimicaDigito.Text, EmptyStr);
end;

procedure TFormPrincipal.MemoQuimicaDescricaoKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  UpdateMemos('chemistry','description', MemoQuimicaDescricao.Text, EmptyStr,
    MemoSample.Text, ComboboxQuimicaDigito.Text, EmptyStr);
end;

procedure TFormPrincipal.MemoQuimicaMedidaEditingDone(Sender: TObject);
begin
  UpdateMemos('chemistry','quimica_medida', MemoQuimicaMedida.Text, EmptyStr, MemoSample.Text,
    ComboboxQuimicaDigito.Text, EmptyStr);
end;

procedure TFormPrincipal.MemoQuimicaMedidaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  UpdateMemos('chemistry','quimica_medida', MemoQuimicaMedida.Text, EmptyStr, MemoSample.Text,
    ComboboxQuimicaDigito.Text, EmptyStr);
end;

procedure TFormPrincipal.MemoSistemaCristalinoEditingDone(Sender: TObject);
begin
  {UpDateSample(Sample, ListboxSample_id.GetSelectedText,
    'sistema_cristalino', MemoSistemaCristalino);}
end;

procedure TFormPrincipal.MemoSistemaCristalinoKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   {UpDateSample('difracao', ListboxSample_id.GetSelectedText,
    'sistema_cristalino', MemoSistemaCristalino);}
end;

procedure TFormPrincipal.MemoSituacaoEditingDone(Sender: TObject);
begin
  UpdateMemos('rruff','situacao', MemoSituacao.Text, EmptyStr, MemoSample.Text,
    EmptyStr, EmptyStr);
end;

procedure TFormPrincipal.MemoSituacaoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  UpdateMemos('rruff','situacao', MemoSituacao.Text, EmptyStr, MemoSample.Text,
    EmptyStr, EmptyStr);
end;

procedure TFormPrincipal.MemoVolumeEditingDone(Sender: TObject);
begin
  {UpDateSample('difracao', ListboxSample_id.GetSelectedText,
    'volume', MemoVolume);}
end;

procedure TFormPrincipal.MemoVolumeKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  {UpDateSample('difracao', ListboxSample_id.GetSelectedText,
    'volume', MemoVolume);}
end;

procedure TFormPrincipal.MenuItemSampleClick(Sender: TObject);
begin
  Config:= TIniFile.Create(ConfigFilePath);
  if MenuItemSample.Checked then
  begin
    MenuItemSample.Checked:=False;
    BGRAPanelSample_id.Visible:=False;
    PanelSample.Visible:=False;
    if MenuItemMinerais.Checked then PanelFichaEspecie.Visible:=True;
    Config.WriteBool('Configuracoes', 'PainelAmostras', False);
  end
  else
  begin
    MenuItemSample.Checked:=True;
    BGRAPanelSample_id.Visible:=True;
    PanelSample.Visible:=True;
    PanelFichaEspecie.Visible:=False;
    Config.WriteBool('Configuracoes', 'PainelAmostras', True);
  end;
  Config.Free;
end;

procedure TFormPrincipal.MenuItemMineraisClick(Sender: TObject);
begin
  Config:= TIniFile.Create(ConfigFilePath);
  if MenuItemMinerais.Checked then
  begin
    MenuItemMinerais.Checked:=False;
    BGRAPanelEspecies.Visible:=False;
    PanelFichaEspecie.Visible:=False;
    Config.WriteBool('Configuracoes', 'PainelMinerais', False);
  end
  else
  begin
    MenuItemMinerais.Checked:=True;
    BGRAPanelEspecies.Visible:=True;
    PanelFichaEspecie.Visible:=True;
    Config.WriteBool('Configuracoes', 'PainelMinerais', True);
  end;
  Config.Free;
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

procedure TFormPrincipal.MenuItemSairClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFormPrincipal.MenuItemImagePanelClick(Sender: TObject);
begin
  Config := TIniFile.Create(ConfigFilePath);
  if MenuItemImagePanel.Checked then
  begin
    BGRAPanelImagens.Visible := False;
    MenuItemImagePanel.Checked := False;
    Config.WriteBool('Configuracoes', 'PainelImagem', False);
  end
  else
  begin
    BGRAPanelImagens.Visible := True;
    MenuItemImagePanel.Checked := True;
    Config.WriteBool('Configuracoes', 'PainelImagem', True);
    AtualizaImagem;
  end;
  Config.Free;
end;

procedure TFormPrincipal.MenuItemPanelFiltroClick(Sender: TObject);
begin
  Config := TIniFile.Create(ConfigFilePath);
  if MenuItemPanelFiltro.Checked then
  begin
    BGRAPanelFiltro.Visible := False;
    MenuItemPanelFiltro.Checked := False;
    Config.WriteBool('Configuracoes', 'PainelFiltro', False);
  end
  else
  begin
    MenuItemPanelFiltro.Checked := True;
    Config.WriteBool('Configuracoes', 'PainelFiltro', True);
    AtualizaImagem;
  end;
  Config.Free;
end;

procedure TFormPrincipal.MenuItemAdicionar2Click(Sender: TObject);
begin
  AdicionaMineral;
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

procedure TFormPrincipal.EquipmentComboboxes;
begin
  {ComboboxRamanEquipamento.Items.Clear;
  ComboBoxVarreduraEquipamento.Items.Clear;
  ComboBoxInfravermelhoEquipamento.Items.Clear;
  }Dados.TableSamples:= Dados.DatabaseSamples.GetTable('SELECT nome FROM instrumentos ;');
  if Dados.TableSamples.MoveFirst then
  begin
    while not Dados.TableSamples.EOF do
    begin
      ComboBoxRamanEquipamento.Items.Append(Dados.TableSamples.FieldByName['nome']);
      Dados.TableSamples.Next;
    end;
  end;
  ComboboxRamanEquipamento.Items.Append(EmptyStr);
  ComboBoxVarreduraEquipamento.Items:=ComboBoxRamanEquipamento.Items;
  ComboBoxInfravermelhoEquipamento.Items:=ComboBoxRamanEquipamento.Items;
end;

procedure TFormPrincipal.UpdateMemos(Table, Field, NewValue,
  Especie, Sample, Digito, Direction: String);
begin
  if Table = 'minerais' then
  begin
    Dados.TableMinerals:= Dados.DatabaseMinerals.GetTable('UPDATE '+Table+' SET '+
      Field+ ' = "'+NewValue+'" WHERE nome = "'+Especie+'" ; ' );
  end
  else
  if Table = 'rruff' then
  begin
    Dados.TableSamples := Dados.DatabaseSamples.GetTable('UPDATE '+Table+' SET '+
      Field+' = "'+NewValue+'" WHERE rruff_id = "'+Sample+'" ;');
  end
  else
  if Table = 'chemistry' then
  begin
    Dados.TableSamples:= Dados.DatabaseSamples.GetTable('UPDATE '+Table+' SET '+
      Field+'= "'+NewValue+'" WHERE rruff_id = "'+Sample+'" ;');
  end
  else
  if Table = 'raman' then
  begin
    Dados.TableSamples:= Dados.DatabaseSamples.GetTable('UPDATE '+Table+ ' SET '+
      Field+'="'+NewValue+'" WHERE rruff_if="'+Sample+'" AND digito="'+
        Digito+'" AND direcao="'+Direction+'" ;');
  end
  else
  if Table = 'varredura' then
  begin
    Dados.TableSamples:= Dados.DatabaseSamples.GetTable('UPDATE '+Table+ ' SET '+
      Field+'="'+NewValue+'" WHERE rruff_if="'+Sample+'" AND digito="'+
        Digito+'" AND comprimento_onda="'+Direction+'" ;');
  end
  else
  if Table = 'infravermelho' then
  begin
    Dados.TableSamples:= Dados.DatabaseSamples.GetTable('UPDATE '+Table+ ' SET '+
      Field+'="'+NewValue+'" WHERE rruff_if="'+Sample+'" AND digito="'+
        Digito+'" ;');
  end
  else
  if Table = 'difracao' then
  begin
    Dados.TableSamples:= Dados.DatabaseSamples.GetTable('UPDATE '+Table+ ' SET '+
      Field+'="'+NewValue+'" WHERE rruff_if="'+Sample+'" AND digito="'+
        Digito+'" ;');
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
  if MenuItemMinerais.Checked then
  begin
   // DadosTableMinerals:=Dados.DatabaseMinerals.GetTable('SELECT ');
  end
  else
  begin

  end;

  {refazer}
  //end;

  {if ListboxMinerais.GetSelectedText <> EmptyStr then
  begin
   // DadosTableMinerals:=Dados.sldb.GetTable('');
  //  Dados.Sqlite3DatasetAmostras.SQL:='SELECT * FROM rruff WHERE especie ="'+
 //    ListboxMinerais.GetSelectedText+'" ;';
  //  Dados.Sqlite3DatasetAmostras.Open;
  //  Dados.Sqlite3DatasetAmostras.First;
    FormAdicionaRruff.Show;
  end
  else
  begin
    ShowMessage('Selecione um mineral da lista para adicionar amostras.');
  end;}
end;

procedure TFormPrincipal.MenuItemRemoverAmostraClick(Sender: TObject);
begin
  if MenuItemMinerais.Checked then
  begin
    Dados.ExcluiAmostra(ListboxMinerais.GetSelectedText,
      ListboxSample_id.GetSelectedText, EmptyStr, 0);
    PreencheAmostras;
  end
  else
  begin
    if ListboxSample_id.GetSelectedText <> EmptyStr then
    begin
      Dados.ExcluiAmostra(EmptyStr, ListboxSample_id.GetSelectedText,
        EmptyStr, 0);
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
  //Config := TIniFile.Create(ConfigFilePath);
  if (MenuItemNormal.Checked = False) then
  begin
    Config.WriteString('Configuracoes', 'Fonte', 'Grande');
    MenuItemNormal.Checked := False;
    MenuItemGrande.Checked := True;
    PanelFichaEspecie.Font.Size := Grande;
    GroupBoxInf_Gerais.Font.Size := grande;
    GroupBoxProp_Fisicas.Font.Size := grande;
    GroupBoxOpticas.Font.Size := grande;
    GroupBoxCristalografia.Font.Size := grande;
    ListBoxMinerais.Font.Size := grande;
    ListBoxSample_id.Font.Size := Grande;
    PageControlSample.Font.Size := Grande;
  end
  else
  begin
    Config.WriteString('Configuracoes', 'Fonte', 'Normal');
    MenuItemNormal.Checked := True;
    MenuItemGrande.Checked := False;
    PanelFichaEspecie.Font.Size := Normal;
    GroupBoxInf_Gerais.Font.Size := normal;
    GroupBoxProp_Fisicas.Font.Size := normal;
    GroupBoxOpticas.Font.Size := normal;
    GroupBoxCristalografia.Font.Size := normal;
    ListBoxMinerais.Font.Size := normal;
    ListBoxSample_id.Font.Size := Normal;
    PageControlSample.Font.Size := Normal;
  end;
  AtualizaRichMemo;
  //Config.Free;
end;

procedure TFormPrincipal.UpdateCampos(BancoDados, Especie, Campo: string;
  objeto: TDBMemo);
begin
  if BancoDados = Minerais then
  begin  //colocar procedimentos em dados e exlcuir sltb e sldb de uprincipal.pas
    Dados.TableMinerals := Dados.DatabaseMinerals.GetTable('UPDATE minerais set ' + Campo + ' ="' + objeto.Text +
      '" WHERE nome="' + especie + '";');
    if UpCase(objeto.Name) = UpCase('DBMemoSubclasse') then
      Preenche_Subclasses;
  end
  else
  begin
    Dados.TableSamples := Dados.DatabaseSamples.GetTable('UPDATE '+BancoDados+' set ' + Campo + ' ="' + objeto.Text +
      '" WHERE rruff_id="' + especie + '";');
  end;
end;

procedure TFormPrincipal.UpdateEdits(Especie: string; Campo: string; objeto: TDBEdit);
begin
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable('UPDATE minerais set ' + Campo + ' ="' + objeto.Text +
    '" WHERE nome="' + especie + '";');
  if UpCase(objeto.Name) = UpCase('DBMemoSubclasse') then
    Preenche_Subclasses;
end;

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
  Config := TIniFile.Create(ConfigFilePath);
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
  if MenuItemSample.Checked then
  begin
    ListboxSample_id.Clear;
    ProgressBar1.Min:=0;
    ProgressBar1.Max:=4;
    if MenuItemMinerais.Checked then
    begin
      Dados.TableSamples:= Dados.DatabaseSamples.GetTable('SELECT DISTINCT rruff_id FROM rruff '+
        ' WHERE especie="'+ListboxMinerais.GetSelectedText+'" ;');
      if Dados.TableSamples.MoveFirst then
      begin
        while not Dados.TableSamples.EOF do
        begin
          ListboxSample_id.Items.Append(Dados.TableSamples.FieldByName['rruff_id']);
          Dados.TableSamples.Next;
        end;
      end;
      ProgressBar1.StepIt;

      Dados.TableSamples:= Dados.DatabaseSamples.GetTable('SELECT DISTINCT rruff_id FROM chemistry'+
        ' WHERE especie="'+ListboxMinerais.GetSelectedText+'" ;');
      if Dados.TableSamples.MoveFirst then
      begin
        while not Dados.TableSamples.EOF do
        begin
          if ListboxSample_id.Items.IndexOf(Dados.TableSamples.FieldByName['rruff_id'])
            < 0 then ListboxSample_id.Items.Append(Dados.TableSamples.
              FieldByName['rruff_id']);
          Dados.TableSamples.Next;
        end;
      end;
      ProgressBar1.StepIt;

      Dados.TableSamples:= Dados.DatabaseSamples.GetTable('SELECT DISTINCT rruff_id FROM raman '+
        ' WHERE especie="'+ListboxMinerais.GetSelectedText+'" ;');
      if Dados.TableSamples.MoveFirst then
      begin
        while not Dados.TableSamples.EOF do
        begin
          if ListboxSample_id.Items.IndexOf(Dados.TableSamples.FieldByName['rruff_id'])
            < 0 then ListboxSample_id.Items.Append(Dados.TableSamples.
              FieldByName['rruff_id']);
          Dados.TableSamples.Next;
        end;
      end;
      ProgressBar1.StepIt;

      Dados.TableSamples:= Dados.DatabaseSamples.GetTable('SELECT DISTINCT rruff_id FROM varredura'+
        ' WHERE especie="'+ListboxMinerais.GetSelectedText+'" ;');
      if Dados.TableSamples.MoveFirst then
      begin
        while not Dados.TableSamples.EOF do
        begin
          if ListboxSample_id.Items.IndexOf(Dados.TableSamples.FieldByName['rruff_id'])
            < 0 then ListboxSample_id.Items.Append(Dados.TableSamples.
              FieldByName['rruff_id']);
          Dados.TableSamples.Next;
        end;
      end;
      ProgressBar1.StepIt;

      Dados.TableSamples:= Dados.DatabaseSamples.GetTable('SELECT DISTINCT rruff_id FROM '+
         'infravermelho  WHERE especie="'+ListboxMinerais.GetSelectedText+'" ;');
      if Dados.TableSamples.MoveFirst then
      begin
        while not Dados.TableSamples.EOF do
        begin
          if ListboxSample_id.Items.IndexOf(Dados.TableSamples.FieldByName['rruff_id'])
            < 0 then ListboxSample_id.Items.Append(Dados.TableSamples.
              FieldByName['rruff_id']);
          Dados.TableSamples.Next;
        end;
      end;
      ProgressBar1.StepIt;

      Dados.TableSamples:= Dados.DatabaseSamples.GetTable('SELECT DISTINCT rruff_id FROM difracao'+
        ' WHERE especie="'+ListboxMinerais.GetSelectedText+'" ;');
      if Dados.TableSamples.MoveFirst then
      begin
        while not Dados.TableSamples.EOF do
        begin
          if ListboxSample_id.Items.IndexOf(Dados.TableSamples.FieldByName['rruff_id'])
            < 0 then ListboxSample_id.Items.Append(Dados.TableSamples.
              FieldByName['rruff_id']);
          Dados.TableSamples.Next;
        end;
      end;
      ProgressBar1.StepIt;
    end
    else
    begin
      Dados.TableSamples:= Dados.DatabaseSamples.GetTable('SELECT DISTINCT rruff_id FROM rruff '+
        ' ;');
      if Dados.TableSamples.MoveFirst then
      begin
        while not Dados.TableSamples.EOF do
        begin
          ListboxSample_id.Items.Append(Dados.TableSamples.FieldByName['rruff_id']);
          Dados.TableSamples.Next;
        end;
      end;
      ProgressBar1.StepIt;

      Dados.TableSamples:= Dados.DatabaseSamples.GetTable('SELECT DISTINCT rruff_id FROM chemistry'+
        ' ;');
      if Dados.TableSamples.MoveFirst then
      begin
        while not Dados.TableSamples.EOF do
        begin
          if ListboxSample_id.Items.IndexOf(Dados.TableSamples.FieldByName['rruff_id'])
            < 0 then ListboxSample_id.Items.Append(Dados.TableSamples.
              FieldByName['rruff_id']);
          Dados.TableSamples.Next;
        end;
      end;
      ProgressBar1.StepIt;

      Dados.TableSamples:= Dados.DatabaseSamples.GetTable('SELECT DISTINCT rruff_id FROM raman '+
        '  ;');
      if Dados.TableSamples.MoveFirst then
      begin
        while not Dados.TableSamples.EOF do
        begin
          if ListboxSample_id.Items.IndexOf(Dados.TableSamples.FieldByName['rruff_id'])
            < 0 then ListboxSample_id.Items.Append(Dados.TableSamples.
              FieldByName['rruff_id']);
          Dados.TableSamples.Next;
        end;
      end;
      ProgressBar1.StepIt;

      Dados.TableSamples:= Dados.DatabaseSamples.GetTable('SELECT DISTINCT rruff_id FROM varredura'+
        '  ;');
      if Dados.TableSamples.MoveFirst then
      begin
        while not Dados.TableSamples.EOF do
        begin
          if ListboxSample_id.Items.IndexOf(Dados.TableSamples.FieldByName['rruff_id'])
            < 0 then ListboxSample_id.Items.Append(Dados.TableSamples.
              FieldByName['rruff_id']);
          Dados.TableSamples.Next;
        end;
      end;
      ProgressBar1.StepIt;

      Dados.TableSamples:= Dados.DatabaseSamples.GetTable('SELECT DISTINCT rruff_id FROM '+
         'infravermelho ;');
      if Dados.TableSamples.MoveFirst then
      begin
        while not Dados.TableSamples.EOF do
        begin
          if ListboxSample_id.Items.IndexOf(Dados.TableSamples.FieldByName['rruff_id'])
            < 0 then ListboxSample_id.Items.Append(Dados.TableSamples.
              FieldByName['rruff_id']);
          Dados.TableSamples.Next;
        end;
      end;
      ProgressBar1.StepIt;

      Dados.TableSamples:= Dados.DatabaseSamples.GetTable('SELECT DISTINCT rruff_id FROM difracao'+
        ' ;');
      if Dados.TableSamples.MoveFirst then
      begin
        while not Dados.TableSamples.EOF do
        begin
          if ListboxSample_id.Items.IndexOf(Dados.TableSamples.FieldByName['rruff_id'])
            < 0 then ListboxSample_id.Items.Append(Dados.TableSamples.
              FieldByName['rruff_id']);
          Dados.TableSamples.Next;
        end;
      end;
      ProgressBar1.Position:=0;
    end;
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
  Config := TIniFile.Create(ConfigFilePath);
  MudarFonte;
  Config.Free;
end;

procedure TFormPrincipal.AdicionaMineral;
var Indice:Integer;
begin
  LimpaDD;
  LimpaRichMemo;
  if (EditNome.Text <> EmptyStr) then
  begin
    Dados.TableMinerals := Dados.DatabaseMinerals.GetTable('SELECT nome FROM minerais WHERE (nome = "' +
      EditNome.Text + '");');
    if (Dados.TableMinerals.Count > 0) then
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

procedure TFormPrincipal.MenuItemSampleListClick(Sender: TObject);
begin
  Config :=TIniFIle.Create(ConfigFilePath);
  if MenuItemSample.Checked then
  begin
    Config.WriteBool('Configuracoes', 'PainelAmostras', False);
    BGRAPanelSample_id.Visible:= False;
    MenuItemSample.Checked:= False;
  end
  else
  begin
    Config.WriteBool('Configuracoes', 'PainelAmostras', True);
    BGRAPanelSample_id.Visible:= True;
    MenuItemSample.Checked:= True;
  end;
  Config.Free;
end;

procedure TFormPrincipal.MenuItemSelecionaBDClick(Sender: TObject);
begin
  FormSelecionaBD.Show;
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
    Dados.SQLite3DatasetGeral.Close;
    Barra_status;
    AtualizaImagem;
    ProgressBar1.Position := 0;
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
begin
  Statusbar1.Panels.Items[0].Text := 'Minerais: ' + IntToStr(
    ListboxMinerais.Items.Count);
  if MenuItemAlfabetica.Checked then
  Statusbar1.Panels.Items[1].Text := 'Ordem: alfabetica'
  else
  if MenuItemDureza.Checked then
    Statusbar1.Panels.Items[1].Text:= 'Ordem: dureza'
  else
  if MenuItemDensidade.Checked then
    Statusbar1.Panels.Items[1].Text:= 'Ordem: densidade';

  Statusbar1.Panels.Items[2].Text := 'Amostras: ' + IntToStr(
    ListboxSample_id.Items.Count);
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
        Dados.DatabaseMinerals.UpdateBlob('UPDATE minerais set imagem' + num +
          ' = ? WHERE nome = "' + dados.SQLite3DatasetGeral.FieldByName(
          'nome').AsString + '"', fs)
      else
      begin       //colocar procedimento de checar campo
        Dados.DatabaseMinerals.UpdateBlob('UPDATE mineralogia set mineralogiaimagem' +
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
begin
  if (ListBoxMinerais.GetSelectedText <> EmptyStr) then
  begin

    self.ImageAmpliada.Picture.Graphic := SelectBlobFieldToJPEGImage('minerais',
      'imagem1', ListboxMinerais.GetSelectedText, EmptyStr, EmptyStr, EmptyStr);

    if MenuItemImagePanel.Checked then
    begin
      self.Image1.Picture.Graphic := SelectBlobFieldToJPEGImage('minerais',
        'imagem1', ListboxMinerais.GetSelectedText, EmptyStr, EmptyStr, EmptyStr);
      self.Image2.Picture.Graphic := SelectBlobFieldToJPEGImage('minerais',
        'imagem2', ListboxMinerais.GetSelectedText, EmptyStr, EmptyStr, EmptyStr);
      self.Image3.Picture.Graphic := SelectBlobFieldToJPEGImage('minerais',
        'imagem3', ListboxMinerais.GetSelectedText, EmptyStr, EmptyStr, EmptyStr);
      self.Image4.Picture.Graphic := SelectBlobFieldToJPEGImage('minerais',
        'imagem4', ListboxMinerais.GetSelectedText, EmptyStr, EmptyStr, EmptyStr);
      self.Image5.Picture.Graphic := SelectBlobFieldToJPEGImage('minerais',
        'imagem5', ListboxMinerais.GetSelectedText, EmptyStr, EmptyStr, EmptyStr);
      self.ImageCristalografia1.Picture.Graphic :=
        SelectBlobFieldToJPEGImage('minerais', 'imagem6',
          ListboxMinerais.GetSelectedText, EmptyStr, EmptyStr, EmptyStr);
      self.ImageCristalografia2.Picture.Graphic :=
        SelectBlobFieldToJPEGImage('minerais', 'imagem7',
          ListboxMinerais.GetSelectedText, EmptyStr, EmptyStr, EmptyStr);
    end;
  end
  else
  begin
    self.Image1.Picture.Graphic := SelectBlobFieldToJPEGImage('mineralogia',
      'mineralogiaimagem1', EmptyStr, EmptyStr, EmptyStr, Nome_Didatico);
    self.Image2.Picture.Graphic := SelectBlobFieldToJPEGImage('mineralogia',
      'mineralogiaimagem2', EmptyStr, EmptyStr, EmptyStr, Nome_Didatico);
    self.Image3.Picture.Graphic := SelectBlobFieldToJPEGImage('mineralogia',
      'mineralogiaimagem3', EmptyStr, EmptyStr, EmptyStr, Nome_Didatico);
    self.Image4.Picture.Graphic := SelectBlobFieldToJPEGImage('mineralogia',
      'mineralogiaimagem4', EmptyStr, EmptyStr, EmptyStr, Nome_Didatico);
    self.Image5.Picture.Graphic := SelectBlobFieldToJPEGImage('mineralogia',
      'mineralogiaimagem5', EmptyStr, EmptyStr, EmptyStr, Nome_Didatico);
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
    self.ImageAmpliada.Picture.Graphic := SelectBlobFieldToJPEGImage(
      'minerais', 'imagem'+Num, ListboxMinerais.GetSelectedText,
        EmptyStr, EmptyStr, EmptyStr);
  end
  else
  begin
    self.ImageAmpliada.Picture.Graphic := SelectBlobFieldToJPEGImage(
      'mineralogia', 'mineralogiaimagem'+Num, EmptyStr, EmptyStr, EmptyStr,
        Nome_Didatico)
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
    if (Dados.SQLite3DatasetGeral.Active) then
    begin
      Dados.SQLite3DatasetGeral.ApplyUpdates;
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
      Dados.TableMinerals := Dados.DatabaseMinerals.GetTable('SELECT imagemCristalografia1 FROM minerais where nome = "' +
        dados.SQLite3DatasetGeral.FieldByName('nome').AsString + '"');
      ms := Dados.TableMinerals.FieldAsBlob(Dados.TableMinerals.FieldIndex['imagemCristalografia1']);

      if (ms <> nil) then
        MemoryStreamParaImagem
      else
        ImageAmpliada.Picture.Clear;
    finally
      //Dados.TableMinerals.Free
    end;
  end;
  Imagem_Selecionada := '6';
end;

procedure TFormPrincipal.ImageCristalografia2Click(Sender: TObject);
begin
  if (ListboxMinerais.GetSelectedText <> EmptyStr) then
  begin
    try
      Dados.TableMinerals := Dados.DatabaseMinerals.GetTable('SELECT imagemCristalografia2 FROM minerais where nome = "' +
        dados.SQLite3DatasetGeral.FieldByName('nome').AsString + '"');
      ms := Dados.TableMinerals.FieldAsBlob(Dados.TableMinerals.FieldIndex['imagemCristalografia2']);
      if (ms <> nil) then
        MemoryStreamParaImagem
      else
        ImageAmpliada.Picture.Clear;
    finally
      //Dados.TableMinerals.Free
    end;
  end;
  Imagem_Selecionada := '7';
end;

end.
