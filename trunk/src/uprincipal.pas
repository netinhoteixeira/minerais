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
  StdCtrls, ExtCtrls, ComCtrls, DBCtrls, ExtDlgs, Buttons, EditBtn, BGRAPanel,
  BGRALabel, RichMemo, TAGraph, TASeries, uFormImpressao,
  uSelecionaBD, SQLite3mod, SQLite3tablemod, uBibliografia, UnitAjuda, IniFiles,
  unitImagem, unitPlanilha, unitequipamentos, unitrruff_id;

type

  { TFormPrincipal }

  TFormPrincipal = class(TForm)
    BGRALabelEspecies: TBGRALabel;
    BGRALabelId_Rruff: TBGRALabel;
    BGRALabelNome: TBGRALabel;
    BGRALabelClasse: TBGRALabel;
    BGRALabelSubclasse: TBGRALabel;
    BGRALabelGrupo: TBGRALabel;
    BGRALabelSubgrupo: TBGRALabel;
    BGRALabelDureza: TBGRALabel;
    BGRALabelDensidade: TBGRALabel;
    BGRALabelOcorrencia: TBGRALabel;
    BGRALabelAssociacao: TBGRALabel;
    BGRAPanel1: TBGRAPanel;
    BitBtn1: TBitBtn;
    BitBtnVisualizar: TBitBtn;
    BitBtnRemoverDifracao: TBitBtn;
    BitBtnRemoverRaman: TBitBtn;
    BitBtnAlterarDifracao: TBitBtn;
    BitBtnAlterarRaman: TBitBtn;
    BitBtnExcluiDadosInfravermelho: TBitBtn;
    BitBtnAdicionarImagemAmostra: TBitBtn;
    BitBtnArquivoInfravermelho: TBitBtn;
    BitBtnArquivoVarredura: TBitBtn;
    BitBtnRemoverImagemAmostra: TBitBtn;
    BitBtnAdicionarImagemQuimica: TBitBtn;
    BitBtnRemoveImagemQuimica: TBitBtn;
    BitBtnRemoveArquivoPlanilha: TBitBtn;
    BitBtnAlterarMicrossonda: TBitBtn;
    BitBtnAdImagem: TBitBtn;
    BitBtnRemImagem: TBitBtn;
    ChartDifracao: TChart;
    ChartInfravermelho: TChart;
    ChartInfravermelhoLineSeries1: TLineSeries;
    ChartRaman: TChart;
    ChartVarredura: TChart;
    ChartVarreduraLineSeries1: TLineSeries;
    ComboBoxEquipamentoInfravermelho: TComboBox;
    ComboBoxEquipamentoVarredura: TComboBox;
    ComboBoxEquipamentoRaman: TComboBox;
    ComboBoxClasse: TComboBox;
    ComboBoxDirecaoLaser: TComboBox;
    ComboBoxDureza_max: TComboBox;
    ComboBoxDureza_min: TComboBox;
    ComboBoxGrupo: TComboBox;
    ComboBoxSubclasse: TComboBox;
    ComboBoxSubgrupo: TComboBox;
    DBEditDensidade_Max: TDBEdit;
    DBEditDensidade_Min: TDBEdit;
    DBEditDureza_Max: TDBEdit;
    DBEditDureza_Min: TDBEdit;
    DBMemo1: TDBMemo;
    DBMemoRamanId: TDBMemo;
    DBMemoEspecie: TDBMemo;
    DBMemo3: TDBMemo;
    DBMemoDescricaoRaman: TDBMemo;
    DBMemoOrientacao: TDBMemo;
    DBMemoPin_id: TDBMemo;
    DBMemoProprietario: TDBMemo;
    DBMemoAmostraRruff_id: TDBMemo;
    DBMemoDifracaoId: TDBMemo;
    DBMemoQuimicaId: TDBMemo;
    DBMemo5: TDBMemo;
    DBMemoVarreduraId: TDBMemo;
    DBMemoRruff_idInfravermelho: TDBMemo;
    DBMemoInfravermelhoId: TDBMemo;
    DBMemo9: TDBMemo;
    DBMemoA: TDBMemo;
    DBMemoB: TDBMemo;
    DBMemoC: TDBMemo;
    DBMemoAlpha: TDBMemo;
    DBMemoBeta: TDBMemo;
    DBMemoGamma: TDBMemo;
    DBMemoVolume: TDBMemo;
    DBMemoSistemaCristalino: TDBMemo;
    DBMemoDescricaoInfravermelho: TDBMemo;
    DBMemoResolucao: TDBMemo;
    DBMemoComprimentoOnda: TDBMemo;
    DBMemoDescricaoBS: TDBMemo;
    DBMemoQuimicaIdeal: TDBMemo;
    DBMemoLocalidade: TDBMemo;
    DBMemoFonte: TDBMemo;
    DBMemoDescricaoAmostra: TDBMemo;
    DBMemoSituacao: TDBMemo;
    DBMemoDescricaoQuimica: TDBMemo;
    DBMemoQuimicaMedida: TDBMemo;
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
    EditRruff_Id: TEdit;
    EditAssociacao: TEdit;
    EditDensidade: TEdit;
    EditDensidade_Max: TEdit;
    EditDensidade_min: TEdit;
    EditDureza: TEdit;
    EditNome: TEdit;
    EditOcorrencia: TEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    GroupBox7: TGroupBox;
    GroupBox8: TGroupBox;
    GroupBoxImagemQuimica: TGroupBox;
    GroupBoxDadosDifracao: TGroupBox;
    GroupBoxDifracao: TGroupBox;
    GroupBoxGraficoInfravermelho: TGroupBox;
    GroupBoxGraficoVarredura: TGroupBox;
    GroupBoxGraficoRaman: TGroupBox;
    GroupBoxCristalografia: TGroupBox;
    GroupBoxCristalografia1: TGroupBox;
    GroupBoxCristalografia2: TGroupBox;
    GroupBoxDensidade: TGroupBox;
    GroupBoxDureza: TGroupBox;
    GroupBoxImagem2: TGroupBox;
    GroupBoxImagem3: TGroupBox;
    GroupBoxImagem4: TGroupBox;
    GroupBoxImagem5: TGroupBox;
    GroupBoxImagem1: TGroupBox;
    GroupBoxImagemAmpliada: TGroupBox;
    GroupBoxInf_Gerais: TGroupBox;
    GroupBoxOpticas: TGroupBox;
    GroupBoxProp_Fisicas: TGroupBox;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    ImageAmostra: TImage;
    ImageQuimica: TImage;
    ImageAmpliada: TImage;
    ImageCristalografia1: TImage;
    ImageCristalografia2: TImage;
    Label1: TLabel;
    Label10: TLabel;
    LabelEquipamentoRaman: TLabel;
    Label1Especie: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    LabelDescricao3: TLabel;
    LabelId_Quimica1: TLabel;
    LabelOrientacao: TLabel;
    LabelPinId: TLabel;
    LabelProprietario: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    LabelId_Quimica: TLabel;
    LabelGamma: TLabel;
    LabelId_Quimica2: TLabel;
    LabelId_Quimica3: TLabel;
    LabelId_Quimica4: TLabel;
    LabelVolume: TLabel;
    LabelSistemaCristalino: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    LabelA: TLabel;
    LabelB: TLabel;
    LabelC: TLabel;
    LabelAlpha: TLabel;
    LabelBeta: TLabel;
    LabelDescricaoIV: TLabel;
    LabelInstrumentoIV: TLabel;
    LabelResolucao: TLabel;
    LabelConfiguracaoInstrumento: TLabel;
    LabelDescricaoBroadScan: TLabel;
    LabelComprimentodeOnda: TLabel;
    LabelDescricao2: TLabel;
    LabelFonte: TLabel;
    LabelLocalidade: TLabel;
    LabelQuimicaIdeal: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label38: TLabel;
    Label39: TLabel;
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
    LabelDifaneidade: TLabel;
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
    LabelQuimicaMedida: TLabel;
    LabelRelevo: TLabel;
    LabelSimbologia: TLabel;
    LabelSInal_Elongacao: TLabel;
    LabelSinal_optico: TLabel;
    LabelSistema_Cristalino: TLabel;
    LabelSubClasse: TLabel;
    LabelSubGrupo: TLabel;
    LabelTraco: TLabel;
    ListBoxRruff_id: TListBox;
    ListBoxMinerais: TListBox;
    MenuItemInstrumentos: TMenuItem;
    MenuItemAdicionarAmostra: TMenuItem;
    MenuItemRemoverAmostra: TMenuItem;
    MenuItemAmostras: TMenuItem;
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
    PageControlRruff: TPageControl;
    PageControlFicha: TPageControl;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    PanelFichas: TPanel;
    PanelRRUFF: TPanel;
    PanelFicha: TPanel;
    PanelImagem: TPanel;
    PopupMenuRruff: TPopupMenu;
    PopupMenuListbox: TPopupMenu;
    ProgressBar1: TProgressBar;
    RichMemoFormula: TRichMemo;
    StatusBar1: TStatusBar;
    TabSheetRruffDifracao: TTabSheet;
    TabSheetRruffInfra: TTabSheet;
    TabSheetRruffVarredura: TTabSheet;
    TabSheetRruffDescricao: TTabSheet;
    TabSheetRruffQuimica: TTabSheet;
    TabSheetRruffRaman: TTabSheet;
    TabSheetCristalografia: TTabSheet;
    TabSheetImagem: TTabSheet;
    TabSheetInf_Gerais: TTabSheet;
    TabSheetOticas: TTabSheet;
    TabSheetProp_Fisicas: TTabSheet;
    Timer1: TTimer;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtnExcluiDadosInfravermelhoClick(Sender: TObject);
    procedure BitBtnRemoveArquivoPlanilhaClick(Sender: TObject);
    procedure BitBtnAdicionarImagemAmostraClick(Sender: TObject);
    procedure BitBtnAdicionarImagemQuimicaClick(Sender: TObject);
    procedure BitBtnAlterarDifracaoClick(Sender: TObject);
    procedure BitBtnArquivoInfravermelhoClick(Sender: TObject);
    procedure BitBtnArquivoVarreduraClick(Sender: TObject);
    procedure BitBtnAdImagemClick(Sender: TObject);
    procedure BitBtnAlterarMicrossondaClick(Sender: TObject);
    procedure BitBtnAlterarRamanClick(Sender: TObject);
    procedure BitBtnFiltrarClick(Sender: TObject);
    procedure BitBtnRemImagemClick(Sender: TObject);
    procedure BitBtnRemoveImagemQuimicaClick(Sender: TObject);
    procedure BitBtnRemoverDifracaoClick(Sender: TObject);
    procedure BitBtnRemoverImagemAmostraClick(Sender: TObject);
    procedure BitBtnRemoverRamanClick(Sender: TObject);
    procedure BitBtnVisualizarClick(Sender: TObject);
    procedure ComboBoxClasseChange(Sender: TObject);
    procedure ComboBoxDirecaoLaserChange(Sender: TObject);
    procedure ComboBoxDureza_maxChange(Sender: TObject);
    procedure ComboBoxDureza_minChange(Sender: TObject);
    procedure ComboBoxEquipamentoVarreduraChange(Sender: TObject);
    procedure ComboBoxGrupoChange(Sender: TObject);
    procedure ComboBoxEquipamentoRamanChange(Sender: TObject);
    procedure ComboBoxSubclasseChange(Sender: TObject);
    procedure ComboBoxSubgrupoChange(Sender: TObject);
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
    procedure DBMemoAEditingDone(Sender: TObject);
    procedure DBMemoAKeyUp(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure DBMemoAlphaEditingDone(Sender: TObject);
    procedure DBMemoAlphaKeyUp(Sender: TObject; var Key: word; Shift: TShiftState);
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
    procedure DBMemoBEditingDone(Sender: TObject);
    procedure DBMemoBetaEditingDone(Sender: TObject);
    procedure DBMemoBetaKeyUp(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure DBMemoBirrefringenciaEditingDone(Sender: TObject);
    procedure DBMemoBirrefringenciaKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure DBMemoBKeyUp(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure DBMemoBrilhoEditingDone(Sender: TObject);
    procedure DBMemoBrilhoKeyUp(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure DBMemoCEditingDone(Sender: TObject);
    procedure DBMemoCKeyUp(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure DBMemoClasseEditingDone(Sender: TObject);
    procedure DBMemoClasseKeyUp(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure DBMemoClasse_CristalinaEditingDone(Sender: TObject);
    procedure DBMemoClasse_CristalinaKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure DBMemoClivagemEditingDone(Sender: TObject);
    procedure DBMemoClivagemKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure DBMemoComprimentoOndaEditingDone(Sender: TObject);
    procedure DBMemoComprimentoOndaKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure DBMemoCorEditingDone(Sender: TObject);
    procedure DBMemoCorKeyUp(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure DBMemoCor_interferenciaEditingDone(Sender: TObject);
    procedure DBMemoCor_interferenciaKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure DBMemoCor_LaminaEditingDone(Sender: TObject);
    procedure DBMemoCor_LaminaKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure DBMemoDescricaoAmostraEditingDone(Sender: TObject);
    procedure DBMemoDescricaoAmostraKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure DBMemoDescricaoBSEditingDone(Sender: TObject);
    procedure DBMemoDescricaoBSKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure DBMemoDescricaoInfravermelhoEditingDone(Sender: TObject);
    procedure DBMemoDescricaoInfravermelhoKeyUp(Sender: TObject;
      var Key: word; Shift: TShiftState);
    procedure DBMemoDescricaoQuimicaEditingDone(Sender: TObject);
    procedure DBMemoDescricaoQuimicaKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure DBMemoDescricaoRamanEditingDone(Sender: TObject);
    procedure DBMemoDescricaoRamanKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure DBMemoDifaneidadeEditingDone(Sender: TObject);
    procedure DBMemoDifaneidadeKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure DBMemoDifracaoIdEditingDone(Sender: TObject);
    procedure DBMemoDifracaoIdKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure DBMemoRamanIdEditingDone(Sender: TObject);
    procedure DBMemoRamanIdKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBMemoDistincaoEditingDone(Sender: TObject);
    procedure DBMemoDistincaoKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure DBMemoExtincaoEditingDone(Sender: TObject);
    procedure DBMemoExtincaoKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure DBMemoFonteEditingDone(Sender: TObject);
    procedure DBMemoFonteKeyUp(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure DBMemoFormulaEditingDone(Sender: TObject);
    procedure DBMemoFormulaKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure DBMemoFraturaEditingDone(Sender: TObject);
    procedure DBMemoFraturaKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure DBMemoGammaEditingDone(Sender: TObject);
    procedure DBMemoGammaKeyUp(Sender: TObject; var Key: word; Shift: TShiftState);
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
    procedure DBMemoInfravermelhoIdEditingDone(Sender: TObject);
    procedure DBMemoInfravermelhoIdKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure DBMemoLocalidadeEditingDone(Sender: TObject);
    procedure DBMemoLocalidadeKeyUp(Sender: TObject; var Key: word;
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
    procedure DBMemoOrientacaoEditingDone(Sender: TObject);
    procedure DBMemoOrientacaoKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure DBMemoPin_idEditingDone(Sender: TObject);
    procedure DBMemoPin_idKeyUp(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure DBMemoProprietarioEditingDone(Sender: TObject);
    procedure DBMemoProprietarioMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: integer);
    procedure DBMemoQuimicaIdealEditingDone(Sender: TObject);
    procedure DBMemoQuimicaIdealKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure DBMemoQuimicaIdEditingDone(Sender: TObject);
    procedure DBMemoQuimicaIdKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure DBMemoQuimicaMedidaEditingDone(Sender: TObject);
    procedure DBMemoQuimicaMedidaKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure DBMemoRelevoEditingDone(Sender: TObject);
    procedure DBMemoRelevoKeyUp(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure DBMemoResolucaoEditingDone(Sender: TObject);
    procedure DBMemoResolucaoKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
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
    procedure DBMemoSituacaoEditingDone(Sender: TObject);
    procedure DBMemoSituacaoKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure DBMemoSubclasseEditingDone(Sender: TObject);
    procedure DBMemoSubclasseKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure DBMemoSubgrupoEditingDone(Sender: TObject);
    procedure DBMemoSubgrupoKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure DBMemoTracoEditingDone(Sender: TObject);
    procedure DBMemoTracoKeyUp(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure DBMemoVarreduraIdEditingDone(Sender: TObject);
    procedure DBMemoVarreduraIdKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure DBMemoVolumeEditingDone(Sender: TObject);
    procedure DBMemoVolumeKeyUp(Sender: TObject; var Key: word; Shift: TShiftState);
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
    procedure ImageAmostraDblClick(Sender: TObject);
    procedure ImageCristalografia1Click(Sender: TObject);
    procedure ImageCristalografia1DblClick(Sender: TObject);
    procedure ImageCristalografia2Click(Sender: TObject);
    procedure ImageCristalografia2DblClick(Sender: TObject);
    procedure ImageQuimicaDblClick(Sender: TObject);
    procedure ListBoxMineraisClick(Sender: TObject);
    procedure ListBoxRruff_idClick(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItemAdicionarAmostraClick(Sender: TObject);
    procedure MenuItemAdicionarClick(Sender: TObject);
    procedure MenuItemAlfabeticaClick(Sender: TObject);
    procedure MenuItemDensidadeClick(Sender: TObject);
    procedure MenuItemDurezaCick(Sender: TObject);
    procedure MenuItemExcluiClick(Sender: TObject);
    procedure MenuItemFiltroClick(Sender: TObject);
    procedure MenuItemAmostrasClick(Sender: TObject);
    procedure MenuItemImagensClick(Sender: TObject);
    procedure MenuItemInstrumentosClick(Sender: TObject);
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
    procedure PageControlRruffChange(Sender: TObject);
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
    procedure UpdateCampos(BancoDados, Especie, Campo: string; objeto: TDBMemo);
    procedure UpdateEdits(Especie: string; Campo: string; objeto: TDBEdit);
    procedure ModoEdicao;
    function DefinirOrdem: string;
    procedure Ordem(MenuItemChecked: string);
    procedure PreencheAmostras;
    procedure DadosRAMAN(Especie: string; Rruff_id: string;
      Direcao: string; Equipamento: string);
    procedure AtualizaComboboxEquipamentos(Combobox: TCombobox);
    procedure AtualizaComboboxDirecaoLaser(Digito:Boolean; Combobox:TCombobox);
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

  lista_formatos: string = 'All Files| *.jpg; *.jpeg;'; //ver se *.mpeg é compatível
  grande: integer = 13;
  normal: integer = 9;

  TodosOsDados: string = 'Todos os Dados';
  Depolarizado: string = 'Não polarizado';
  Angulo0: string = '0.000';
  Angulo45: string = '45.000 ccw';
  Angulo90: string = '90.000 ccw';
  Onda532: string = '532 nm';
  Onda780: string = '780 nm';

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

  DatasetFileName: string;

implementation

uses udatamodule, unitgraficos;

{$R *.lfm}

{ TFormPrincipal }

procedure TFormPrincipal.ComboBoxClasseChange(Sender: TObject);
begin
  Preenche_SubClasses;
  Preenche_Grupos;
  Preenche_SubGrupos;
  Preenche_Lista;
end;

procedure TFormPrincipal.ComboBoxDirecaoLaserChange(Sender: TObject);
begin
  DadosRAMAN(ListboxMinerais.GetSelectedText, ListboxRruff_id.GetSelectedText,
    ComboboxDirecaoLaser.Text, ComboboxEquipamentoRaman.Text);

  {///procedimento repetido em listboxrruff_idonclick e pagecontrolchange
      ChartRaman.ClearSeries;
      if ComboboxDirecaoLaser.Text = TodosOsDados then
      begin
        Dados.SdfDataSetGraficos.FileName:=
        Dados.DeterminaArquivo(ListboxMinerais.GetSelectedText, ListboxRruff_id.GetSelectedText,
          DBMemoRamanId.Text, EspectroRAMAN, ComboboxEquipamentoRaman.Text ,Angulo0);
        if Dados.SdfDataSetGraficos.FileName <> EmptyStr then
          ChartRaman.AddSeries(GraficoRaman);

        Dados.SdfDataSetGraficos.FileName:=
        Dados.DeterminaArquivo(ListboxMinerais.GetSelectedText, ListboxRruff_id.GetSelectedText,
          DBMemoRamanId.Text, EspectroRAMAN, ComboboxEquipamentoRaman.Text ,Angulo45);
        if Dados.SdfDataSetGraficos.FileName <> EmptyStr then
          ChartRaman.AddSeries(GraficoRaman);

        Dados.SdfDataSetGraficos.FileName:=
        Dados.DeterminaArquivo(ListboxMinerais.GetSelectedText, ListboxRruff_id.GetSelectedText,
          DBMemoRamanId.Text, EspectroRAMAN, ComboboxEquipamentoRaman.Text ,Angulo90);
        if Dados.SdfDataSetGraficos.FileName <> EmptyStr then
          ChartRaman.AddSeries(GraficoRaman);

        Dados.SdfDataSetGraficos.FileName:=
        Dados.DeterminaArquivo(ListboxMinerais.GetSelectedText, ListboxRruff_id.GetSelectedText,
          DBMemoRamanId.Text, EspectroRAMAN, ComboboxEquipamentoRaman.Text , Depolarizado);
        if Dados.SdfDataSetGraficos.FileName <> EmptyStr then
          ChartRaman.AddSeries(GraficoRaman);
      end
      else
      begin
        Dados.SdfDataSetGraficos.FileName:=
        Dados.DeterminaArquivo(ListboxMinerais.GetSelectedText, ListboxRruff_id.GetSelectedText,
          DBMemoRamanId.Text, EspectroRAMAN, ComboboxEquipamentoRaman.Text , ComboboxDirecaoLaser.Text);

        if Dados.SdfDataSetGraficos.FileName <> EmptyStr then
          ChartRaman.AddSeries(GraficoRaman);
      end;   }
end;

procedure TFormPrincipal.ComboBoxGrupoChange(Sender: TObject);
begin
  Preenche_SubGrupos;
  Preenche_Lista;
end;

procedure TFormPrincipal.ComboBoxEquipamentoRamanChange(Sender: TObject);
begin
  if (ComboboxEquipamentoRaman.Text <> 'Adicionar Equipamento') then
  begin
    if (Trim(ComboboxDirecaoLaser.Text) = Trim(Onda532)) then
    begin
      Dados.SalvaArquivo(ListboxMinerais.GetSelectedText,
        ListboxRruff_id.GetSelectedText,
          EspectroRaman, ComboboxEquipamentoRaman.Text,
            Onda532, Dados.SdfDataSetGraficos.FileName);
    end
    else
    if (Trim(ComboboxDirecaoLaser.Text) = Trim(Onda780)) then
    begin
      Dados.SalvaArquivo(ListboxMinerais.GetSelectedText,
        ListboxRruff_id.GetSelectedText,
          EspectroRaman, ComboboxEquipamentoRaman.Text,
            Onda780, Dados.SdfDataSetGraficos.FileName);
    end;
  end
  else
  begin
    FormInstrumentos.Show;
  end;
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

procedure TFormPrincipal.DBMemoAEditingDone(Sender: TObject);
begin
  UpDateCampos(Rruff, ListboxRruff_id.GetSelectedText,
    'a', DBMemoA);
end;

procedure TFormPrincipal.DBMemoAKeyUp(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin
  UpDateCampos(Rruff, ListboxRruff_id.GetSelectedText,
    'a', DBMemoA);
end;

procedure TFormPrincipal.DBMemoAlphaEditingDone(Sender: TObject);
begin
  UpDateCampos(Rruff, ListboxRruff_id.GetSelectedText,
    'alpha', DBMemoAlpha);
end;

procedure TFormPrincipal.DBMemoAlphaKeyUp(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin
  UpDateCampos(Rruff, ListboxRruff_id.GetSelectedText,
    'alpha', DBMemoAlpha);
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

procedure TFormPrincipal.DBMemoBEditingDone(Sender: TObject);
begin
  UpDateCampos(Rruff, ListboxRruff_id.GetSelectedText,
    'b', DBMemoB);
end;

procedure TFormPrincipal.DBMemoBetaEditingDone(Sender: TObject);
begin
  UpDateCampos(Rruff, ListboxRruff_id.GetSelectedText,
    'beta', DBMemoBeta);
end;

procedure TFormPrincipal.DBMemoBetaKeyUp(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin
  UpDateCampos(Rruff, ListboxRruff_id.GetSelectedText,
    'beta', DBMemoBeta);
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

procedure TFormPrincipal.DBMemoBKeyUp(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin
  UpDateCampos(Rruff, ListboxRruff_id.GetSelectedText,
    'b', DBMemoB);
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

procedure TFormPrincipal.DBMemoCEditingDone(Sender: TObject);
begin
  UpDateCampos(Rruff, ListboxRruff_id.GetSelectedText,
    'c', DBMemoC);
end;

procedure TFormPrincipal.DBMemoCKeyUp(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin
  UpDateCampos(Rruff, ListboxRruff_id.GetSelectedText,
    'c', DBMemoC);
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

procedure TFormPrincipal.DBMemoComprimentoOndaEditingDone(Sender: TObject);
begin
  UpDateCampos(Rruff, ListboxRruff_id.GetSelectedText,
    'comprimento_onda', DBMemoComprimentoOnda);
end;

procedure TFormPrincipal.DBMemoComprimentoOndaKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  UpDateCampos(Rruff, ListboxRruff_id.GetSelectedText,
    'comprimento_onda', DBMemoComprimentoOnda);
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

procedure TFormPrincipal.DBMemoDescricaoAmostraEditingDone(Sender: TObject);
begin
  UpDateCampos(Rruff, ListboxRruff_id.GetSelectedText,
    'descricao_amostra', DBMemoDescricaoAmostra);
end;

procedure TFormPrincipal.DBMemoDescricaoAmostraKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  UpDateCampos(Rruff, ListboxRruff_id.GetSelectedText,
    'descricao_amostra', DBMemoDescricaoAmostra);
end;

procedure TFormPrincipal.DBMemoDescricaoBSEditingDone(Sender: TObject);
begin
  UpDateCampos(Rruff, ListboxRruff_id.GetSelectedText,
    'descricao_broadscan', DBMemoDescricaoBS);
end;

procedure TFormPrincipal.DBMemoDescricaoBSKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  UpDateCampos(Rruff, ListboxRruff_id.GetSelectedText,
    'descricao_broadscan', DBMemoDescricaoBS);
end;

procedure TFormPrincipal.DBMemoDescricaoInfravermelhoEditingDone(Sender: TObject);
begin
  UpDateCampos(Rruff, ListboxRruff_id.GetSelectedText,
    'descricao_infravermelho', DBMemoDescricaoInfravermelho);
end;

procedure TFormPrincipal.DBMemoDescricaoInfravermelhoKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  UpDateCampos(Rruff, ListboxRruff_id.GetSelectedText,
    'descricao_infravermelho', DBMemoDescricaoInfravermelho);
end;

procedure TFormPrincipal.DBMemoDescricaoQuimicaEditingDone(Sender: TObject);
begin
  UpDateCampos(Rruff, ListboxRruff_id.GetSelectedText,
    'descricao_quimica', DBMemoDescricaoQuimica);
end;

procedure TFormPrincipal.DBMemoDescricaoQuimicaKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  UpDateCampos(Rruff, ListboxRruff_id.GetSelectedText,
    'descricao_quimica', DBMemoDescricaoQuimica);
end;

procedure TFormPrincipal.DBMemoDescricaoRamanEditingDone(Sender: TObject);
begin
  UpDateCampos(Rruff, ListboxRruff_id.GetSelectedText,
    'descricao_raman', DBMemoDescricaoRaman);
end;

procedure TFormPrincipal.DBMemoDescricaoRamanKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  UpDateCampos(Rruff, ListboxRruff_id.GetSelectedText,
    'descricao_raman', DBMemoDescricaoRaman);
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

procedure TFormPrincipal.DBMemoDifracaoIdEditingDone(Sender: TObject);
begin
  UpDateCampos(Rruff, ListboxRruff_id.GetSelectedText,
    'rruff_id_difracao', DBMemoDifracaoId);
end;

procedure TFormPrincipal.DBMemoDifracaoIdKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  UpDateCampos(Rruff, ListboxRruff_id.GetSelectedText,
    'rruff_id_difracao', DBMemoDifracaoId);
end;

procedure TFormPrincipal.DBMemoRamanIdEditingDone(Sender: TObject);
begin
   UpDateCampos(Rruff, ListboxRruff_id.GetSelectedText,
    'rruff_id_raman', DBMemoRamanId);
end;

procedure TFormPrincipal.DBMemoRamanIdKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   UpDateCampos(Rruff, ListboxRruff_id.GetSelectedText,
    'rruff_id_raman', DBMemoRamanId);
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

procedure TFormPrincipal.DBMemoFonteEditingDone(Sender: TObject);
begin
  UpDateCampos(Rruff, ListboxRruff_id.GetSelectedText,
    'fonte', DBMemoFonte);
end;

procedure TFormPrincipal.DBMemoFonteKeyUp(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin
  UpDateCampos(Rruff, ListboxRruff_id.GetSelectedText,
    'fonte', DBMemoFonte);
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

procedure TFormPrincipal.DBMemoGammaEditingDone(Sender: TObject);
begin
  UpDateCampos(Rruff, ListboxRruff_id.GetSelectedText,
    'gamma', DBMemoGamma);
end;

procedure TFormPrincipal.DBMemoGammaKeyUp(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin
  UpDateCampos(Rruff, ListboxRruff_id.GetSelectedText,
    'gamma', DBMemoGamma);
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

procedure TFormPrincipal.DBMemoInfravermelhoIdEditingDone(Sender: TObject);
begin
  UpDateCampos(Rruff, ListboxRruff_id.GetSelectedText,
    'rruff_id_infravermelho', DBMemoInfravermelhoId);
end;

procedure TFormPrincipal.DBMemoInfravermelhoIdKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  UpDateCampos(Rruff, ListboxRruff_id.GetSelectedText,
    'rruff_id_infravermelho', DBMemoInfravermelhoId);
end;

procedure TFormPrincipal.DBMemoLocalidadeEditingDone(Sender: TObject);
begin
  UpDateCampos(Rruff, ListboxRruff_id.GetSelectedText,
    'localidade', DBMemoLocalidade);
end;

procedure TFormPrincipal.DBMemoLocalidadeKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  UpDateCampos(Rruff, ListboxRruff_id.GetSelectedText,
    'localidade', DBMemoLocalidade);
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

procedure TFormPrincipal.ComboBoxDureza_maxChange(Sender: TObject);
begin
  Preenche_Lista;
end;

procedure TFormPrincipal.ComboBoxDureza_minChange(Sender: TObject);
begin
  Preenche_Lista;
end;

procedure TFormPrincipal.ComboBoxEquipamentoVarreduraChange(Sender: TObject);
begin

end;

procedure TFormPrincipal.BitBtnFiltrarClick(Sender: TObject);
begin
  Preenche_Lista;
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

procedure TFormPrincipal.BitBtnRemoveImagemQuimicaClick(Sender: TObject);
begin
  RemoveImagem('imagem_quimica', 'rruff', 0, ListboxRruff_id.GetSelectedText);
  ImageQuimica.Picture.Clear;
end;

procedure TFormPrincipal.BitBtnRemoverDifracaoClick(Sender: TObject);
begin
  RemoveImagem('difracao', rruff, 0, ListboxRruff_id.GetSelectedText);
  ChartDifracao.ClearSeries;
end;

procedure TFormPrincipal.BitBtnRemoverImagemAmostraClick(Sender: TObject);
begin
  RemoveImagem('imagem_amostra', 'rruff', 0, ListboxRruff_id.GetSelectedText);
  ImageAmostra.Picture.Clear;
end;

procedure TFormPrincipal.BitBtnRemoverRamanClick(Sender: TObject);
begin
  RemoveImagem('arquivo_raman', 'raman', 0, ListboxRruff_id.GetSelectedText);
  ChartRaman.ClearSeries;
end;

procedure TFormPrincipal.BitBtnVisualizarClick(Sender: TObject);
begin
  FormPlanilha.ArquivoMicrossonda(ListboxMinerais.GetSelectedText,
    ListboxRruff_id.GetSelectedText);
end;

procedure TFormPrincipal.BitBtnAdImagemClick(Sender: TObject);
begin
  if (ListBoxMinerais.GetSelectedText = EmptyStr) then
  begin
    if (Imagem_Selecionada = '6') then
      ShowMessage(
        'Só é possível adicionar Imagens de Cristalografia se tiver algum mineral selecionado na lista')
    else
    if (Imagem_Selecionada = '7') then
      ShowMessage(
        'Só é possível adicionar Imagens de Cristalografia se tiver algum mineral selecionado na lista')
    else
      Adiciona_Imagem(Imagem_Selecionada);
  end;
  AtualizaImagem;
end;

procedure TFormPrincipal.BitBtnArquivoVarreduraClick(Sender: TObject);
begin
  if ListboxRruff_id.GetSelectedText <> EmptyStr then
  begin
    if OpenDialog1.Execute then
    begin
      if OpenDialog1.FileName <> EmptyStr then
      begin
        Dados.SalvaArquivo(ListboxMinerais.GetSelectedText,
          ListboxRruff_id.GetSelectedText, 'Ampla Varredura',
          ComboboxEquipamentoVarredura.Text, '', Opendialog1.FileName);
      end;
    end;
    Dados.SdfDataSetGraficos.FileName :=
      Dados.DeterminaArquivo(ListboxMinerais.GetSelectedText,
        ListboxRruff_id.GetSelectedText,
          'Ampla Varredura', ComboboxEquipamentoVarredura.Text, '');
    if Dados.SdfDataSetGraficos.FileName <> EmptyStr then
      ChartVarredura.AddSeries(GraficoVarredura)
    else
      ChartVarredura.ClearSeries;
  end;
end;

procedure TFormPrincipal.BitBtnArquivoInfravermelhoClick(Sender: TObject);
begin
  if ListboxRruff_id.GetSelectedText <> EmptyStr then
  begin
    if OpenDialog1.Execute then
    begin
      if OpenDialog1.FileName <> EmptyStr then
      begin
        Dados.SalvaArquivo(ListboxMinerais.GetSelectedText,
          ListboxRruff_id.GetSelectedText,
            'Espectro Infravermelho',
              ComboboxEquipamentoInfravermelho.Text, '', Opendialog1.FileName);
      end;
    end;
    Dados.SdfDataSetGraficos.FileName :=
      Dados.DeterminaArquivo(ListboxMinerais.GetSelectedText,
        ListboxRruff_id.GetSelectedText,
          'Espectro Infravermelho', ComboboxEquipamentoInfravermelho.Text, '');
    if Dados.SdfDataSetGraficos.FileName <> EmptyStr then
      ChartInfravermelho.AddSeries(GraficoInfravermelho)
    else
      ChartInfravermelho.ClearSeries;
  end;
end;

procedure TFormPrincipal.BitBtnAlterarDifracaoClick(Sender: TObject);
begin
  if ListboxRruff_id.GetSelectedText <> EmptyStr then
  begin
    if OpenDialog1.Execute then
    begin
      if OpenDialog1.FileName <> EmptyStr then
      begin
        Dados.SalvaArquivo(ListboxMinerais.GetSelectedText,
          ListboxRruff_id.GetSelectedText, 'Difracao',
          '', '', Opendialog1.FileName);
      end;
    end;
    Dados.SdfDataSetGraficos.FileName :=
      Dados.DeterminaArquivo(ListboxMinerais.GetSelectedText,
      ListboxRruff_id.GetSelectedText, 'Difracao', '', '');
    if Dados.SdfDataSetGraficos.FileName <> EmptyStr then
      ChartDifracao.AddSeries(GraficoDifracao)
    else
      ChartDifracao.ClearSeries;
  end;
end;

procedure TFormPrincipal.BitBtnAdicionarImagemQuimicaClick(Sender: TObject);
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
          ListboxRruff_id.GetSelectedText, OpenPictureDialog1.FileName, 'Quimica');
      end;
    end;
  end
  else
    ShowMessage('Selecione um mineral e a identificação da amostra para adicionar a imagem.');
end;

procedure TFormPrincipal.BitBtnAdicionarImagemAmostraClick(Sender: TObject);
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
          ListboxRruff_id.GetSelectedText, OpenPictureDialog1.FileName, 'Amostra');
      end;
    end;
  end;
end;

procedure TFormPrincipal.BitBtnRemoveArquivoPlanilhaClick(Sender: TObject);
begin
  {FormPlanilha.Close;
  RemoveImagem('microssonda', 'rruff', 0, ListboxRruff_id.GetSelectedText);
  }
end;

procedure TFormPrincipal.BitBtnExcluiDadosInfravermelhoClick(Sender: TObject);
begin
  RemoveImagem('infravermelho', 'rruff', 0, ListboxRruff_id.GetSelectedText);
  ChartInfravermelho.ClearSeries;
end;

procedure TFormPrincipal.BitBtn1Click(Sender: TObject);
begin
  RemoveImagem('varredura', 'rruff', 0, ListboxRruff_id.GetSelectedText);
  ChartVarredura.ClearSeries;
end;

procedure TFormPrincipal.BitBtnAlterarMicrossondaClick(Sender: TObject);
var
  ExecSQL: string;
begin
  if OpenDialog1.Execute then
  begin
    if OpenDialog1.FileName <> EmptyStr then
    begin
      Dados.SalvaArquivo(ListboxMinerais.GetSelectedText,
        ListboxRruff_id.GetSelectedText, 'Microssonda', '',
          '', Opendialog1.FileName);
        BitBtnVisualizar.Enabled:=True;
      {ExecSQL:='UPDATE rruff SET arquivo_microssonda = "'+OpenDialog1.FileName+'";';
      Dados.Sqlite3DatasetAmostras.ExecSQL(ExecSQL);
      Dados.SdfDataSetPlanilhaMicrossonda.Close;
      Dados.SdfDataSetPlanilhaMicrossonda.FileName:=OpenDialog1.FileName;
      Dados.SdfDataSetPlanilhaMicrossonda.Open;}
    end;
  end;
end;

procedure TFormPrincipal.BitBtnAlterarRamanClick(Sender: TObject);
begin              {Dados.SalvaArquivo(Especie: string; Rruff_id: string; Digito:String;
  Tipo: string; Equipamento: String; DirecaoLaser: string; DiretorioArquivo: string);      }
  if ListboxRruff_id.GetSelectedText <> EmptyStr then
  begin
    if ComboboxDirecaoLaser.Text <> 'Todos os Dados' then
    begin
      if OpenDialog1.Execute then
      begin
        if OpenDialog1.FileName <> EmptyStr then
        begin
          Dados.SalvaArquivo(ListboxMinerais.GetSelectedText,
            ListboxRruff_id.GetSelectedText,
              'RAMAN', ComboboxEquipamentoRaman.Text,
              ComboboxDirecaoLaser.Text, Opendialog1.FileName);
        end;
      end;

      Dados.SdfDataSetGraficos.FileName :=
        Dados.DeterminaArquivo(ListboxMinerais.GetSelectedText,
          ListboxRruff_id.GetSelectedText, EspectroRAMAN,
            ComboboxEquipamentoRaman.Text, ComboboxDirecaoLaser.Text);
      if Dados.SdfDataSetGraficos.FileName <> EmptyStr then
        ChartRaman.AddSeries(GraficoRaman)
      else
        ChartRaman.ClearSeries;
    end
    else
      ShowMessage('Escolha a Direção de Polarização do Laser.');
  end;
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

procedure TFormPrincipal.DBMemoOrientacaoEditingDone(Sender: TObject);
begin
  UpDateCampos(Rruff, ListboxRruff_id.GetSelectedText,
    'orientacao', DBMemoOrientacao);
end;

procedure TFormPrincipal.DBMemoOrientacaoKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  UpDateCampos(Rruff, ListboxRruff_id.GetSelectedText,
    'orientacao', DBMemoOrientacao);
end;

procedure TFormPrincipal.DBMemoPin_idEditingDone(Sender: TObject);
begin
  UpDateCampos(Rruff, ListboxRruff_id.GetSelectedText,
    'pin_id', DBMemoPin_id);
end;

procedure TFormPrincipal.DBMemoPin_idKeyUp(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin
  UpDateCampos(Rruff, ListboxRruff_id.GetSelectedText,
    'pin_id', DBMemoPin_id);
end;

procedure TFormPrincipal.DBMemoProprietarioEditingDone(Sender: TObject);
begin
  UpDateCampos(Rruff, ListboxRruff_id.GetSelectedText,
    'proprietario', DBMemoProprietario);
end;

procedure TFormPrincipal.DBMemoProprietarioMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: integer);
begin
  UpDateCampos(Rruff, ListboxRruff_id.GetSelectedText,
    'proprietario', DBMemoProprietario);
end;

procedure TFormPrincipal.DBMemoQuimicaIdealEditingDone(Sender: TObject);
begin
  UpDateCampos(Rruff, ListboxRruff_id.GetSelectedText,
    'quimicaideal', DBMemoQuimicaIdeal);
end;

procedure TFormPrincipal.DBMemoQuimicaIdealKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  UpDateCampos(Rruff, ListboxRruff_id.GetSelectedText,
    'quimicaideal', DBMemoQuimicaIdeal);
end;

procedure TFormPrincipal.DBMemoQuimicaIdEditingDone(Sender: TObject);
begin
  UpDateCampos(Rruff, ListboxRruff_id.GetSelectedText,
    'rruff_id_quimica', DBMemoQuimicaId);
end;

procedure TFormPrincipal.DBMemoQuimicaIdKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  UpDateCampos(Rruff, ListboxRruff_id.GetSelectedText,
    'rruff_id_quimica', DBMemoQuimicaId);
end;

procedure TFormPrincipal.DBMemoQuimicaMedidaEditingDone(Sender: TObject);
begin
  UpDateCampos(Rruff, ListboxRruff_id.GetSelectedText,
    'quimicamedida', DBMemoQuimicaMedida);
end;

procedure TFormPrincipal.DBMemoQuimicaMedidaKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  UpDateCampos(Rruff, ListboxRruff_id.GetSelectedText,
    'quimicamedida', DBMemoQuimicaMedida);
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

procedure TFormPrincipal.DBMemoResolucaoEditingDone(Sender: TObject);
begin
  UpDateCampos(Rruff, ListboxRruff_id.GetSelectedText,
    'resolucao', DBMemoResolucao);
end;

procedure TFormPrincipal.DBMemoResolucaoKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  UpDateCampos(Rruff, ListboxRruff_id.GetSelectedText,
    'resolucao', DBMemoResolucao);
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
  UpDateCampos(Rruff, ListboxRruff_id.GetSelectedText,
    'sistema_cristalino', DBMemoSistemaCristalino);
end;

procedure TFormPrincipal.DBMemoSistemaCristalinoKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  UpDateCampos(Rruff, ListboxRruff_id.GetSelectedText,
    'sistema_cristalino', DBMemoSistemaCristalino);
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

procedure TFormPrincipal.DBMemoSituacaoEditingDone(Sender: TObject);
begin
  UpDateCampos(Rruff, ListboxRruff_id.GetSelectedText,
    'situacao', DBMemoSituacao);
end;

procedure TFormPrincipal.DBMemoSituacaoKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  UpDateCampos(Rruff, ListboxRruff_id.GetSelectedText,
    'situacao', DBMemoSituacao);
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

procedure TFormPrincipal.DBMemoVarreduraIdEditingDone(Sender: TObject);
begin
  UpDateCampos(Rruff, ListboxRruff_id.GetSelectedText,
    'rruff_id_varredura', DBMemoVarreduraId);
end;

procedure TFormPrincipal.DBMemoVarreduraIdKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  UpDateCampos(Rruff, ListboxRruff_id.GetSelectedText,
    'rruff_id_varredura', DBMemoVarreduraId);
end;

procedure TFormPrincipal.DBMemoVolumeEditingDone(Sender: TObject);
begin
  UpDateCampos(Rruff, ListboxRruff_id.GetSelectedText,
    'volume', DBMemoVolume);
end;

procedure TFormPrincipal.DBMemoVolumeKeyUp(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin
  UpDateCampos(Rruff, ListboxRruff_id.GetSelectedText,
    'volume', DBMemoVolume);
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
  //ver se precisa, feito para criar o campo geral no inicio e carregar as imagens iniciais
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
    MenuItemFiltro.Checked := True;
  end;
  if Config.ReadBool('Configuracoes', 'PainelImagem', True) then
  begin
    MenuItemimagens.Checked := True;
    BGRAPanelImagens.Visible := True;
  end;
  if Config.ReadBool('Configuracoes', 'ModoEdicao', False) then
  begin
    ModoEdicao;
  end;
  if Config.ReadBool('Configuracoes', 'PainelAmostras', False) then
  begin
    MenuItemAmostras.Checked := True;
    BGRAPanel1.Visible := True;
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
    DatasetFileName := Dados.Sqlite3DatasetGeral.Filename;
    Timer1.Enabled := True;
  end;
  openpicturedialog1.Filter := lista_formatos;
  OpenDialog1.Filter := 'All Files | *.csv;';
end;

procedure TFormPrincipal.FormResize(Sender: TObject);
var
  Comprimento, Altura: integer;
begin
  BGRALabelClasse.Top := Trunc(BGRAPanelFiltro.Height * 0.153);
  ComboboxClasse.Top := Trunc(BGRAPanelFiltro.Height * 0.191);
  BGRALabelSubClasse.Top := Trunc(BGRAPanelFiltro.Height * 0.255);
  ComboboxSubClasse.Top := Trunc(BGRAPanelFiltro.Height * 0.293);
  BGRALabelGrupo.Top := Trunc(BGRAPanelFiltro.Height * 0.357);
  ComboboxGrupo.Top := Trunc(BGRAPanelFiltro.Height * 0.395);
  BGRALabelSubGrupo.Top := Trunc(BGRAPanelFiltro.Height * 0.459);
  ComboboxSubGrupo.Top := Trunc(BGRAPanelFiltro.Height * 0.507);
  BGRALAbelDureza.Top := Trunc(BGRAPanelFiltro.Height * 0.548);
  Label33.Top := Trunc(BGRAPanelFiltro.Height * 0.59);
  Label34.Top := Trunc(BGRAPanelFiltro.Height * 0.615);
  ComboboxDureza_min.Top := Trunc(BGRAPanelFiltro.Height * 0.615);
  ComboboxDureza_max.top := ComboboxDureza_min.Top;
  BGRALabelDensidade.Top := Trunc(BGRAPanelFiltro.Height * 0.676);
  Label35.Top := Trunc(BGRAPanelFiltro.Height * 0.717);
  Label36.Top := Trunc(BGRAPanelFiltro.Height * 0.743);
  EditDensidade_min.Top := Trunc(BGRAPanelFiltro.Height * 0.743);
  EditDensidade_max.Top := EditDensidade_min.Top;
  BGRALabelOcorrencia.Top := Trunc(BGRAPanelFiltro.Height * 0.803);
  EditOcorrencia.Top := Trunc(BGRAPanelFiltro.Height * 0.842);
  BGRALabelAssociacao.Top := Trunc(BGRAPanelFiltro.Height * 0.893);
  EditAssociacao.Top := Trunc(BGRAPanelFiltro.Height * 0.931);
  GroupBoxImagem2.Top := Trunc(BGRAPanelFiltro.Height * 0.202);
  GroupBoxImagem3.Top := Trunc(BGRAPanelFiltro.Height * 0.403);
  GroupBoxImagem4.Top := Trunc(BGRAPanelFiltro.Height * 0.606);
  GroupBoxImagem5.Top := Trunc(BGRAPanelFiltro.Height * 0.807);

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
  if MenuItemAmostras.Checked then
    PreencheAmostras;
  Dados.Sqlite3DatasetAmostras.Close;
  ChartVarredura.ClearSeries;
  ChartInfravermelho.ClearSeries;
  ChartDifracao.ClearSeries;
end;

procedure TFormPrincipal.ListBoxRruff_idClick(Sender: TObject);
var
  DiretorioArquivo: string;
begin
  if ListboxRruff_id.GetSelectedText <> EmptyStr then
  begin
    Dados.Sqlite3DatasetAmostras.Close;
    Dados.Sqlite3DatasetAmostras.SQL := 'Select * FROM rruff WHERE rruff_id ="' +
      ListboxRruff_id.GetSelectedText + '";';
    Dados.Sqlite3DatasetAmostras.Open;

    if PageControlRruff.ActivePage.Caption = 'Descrição da Amostra' then
    begin
      self.ImageAmostra.Picture.Graphic :=
        SelecionaImagensRruff(ListboxMinerais.GetSelectedText,
        ListboxRruff_id.GetSelectedText, 'Amostra');
    end;

    if PageControlRruff.ActivePage.Caption = 'Química Ideal' then
    begin
      self.ImageQuimica.Picture.Graphic :=
        SelecionaImagensRruff(ListboxMinerais.GetSelectedText,
        ListboxRruff_id.GetSelectedText, 'Quimica');
      Dados.SdfDataSetPlanilhaMicrossonda.Close;
      Dados.SdfDataSetPlanilhaMicrossonda.FileName :=
        Dados.DeterminaArquivo(ListboxMinerais.GetSelectedText,
        ListboxRruff_id.GetSelectedText, 'Microssonda', '', '');
      if Dados.SdfDataSetPlanilhaMicrossonda.FileName <> EmptyStr then
        BitbtnVisualizar.Enabled := True
      else
        BitbtnVisualizar.Enabled := False;
    end
    else
    if PageControlRruff.ActivePage.Caption = 'Espectro RAMAN' then
    begin
      AtualizaComboboxDirecaoLaser(False, ComboboxDirecaoLaser);
      DadosRAMAN(ListboxMinerais.GetSelectedText, ListboxRruff_id.GetSelectedText,
        ComboboxDirecaoLaser.Text, ComboboxEquipamentoRaman.Text);
    end
    else
    if PageControlRruff.ActivePage.Caption = AmplaVarredura then
    begin
      AtualizaComboboxEquipamentos(ComboboxEquipamentoVarredura);
      Dados.SdfDataSetGraficos.FileName :=
        Dados.DeterminaArquivo(ListboxMinerais.GetSelectedText,
          ListboxRruff_id.GetSelectedText,
           'Ampla Varredura', ComboboxEquipamentoVarredura.Text, '');
      if Dados.SdfDataSetGraficos.FileName <> EmptyStr then
        ChartVarredura.AddSeries(GraficoVarredura)
      else
        ChartVarredura.ClearSeries;
    end
    else
    if PageControlRruff.ActivePage.Caption = 'Espectro Infravermelho' then
    begin
      Dados.SdfDataSetGraficos.FileName :=
        Dados.DeterminaArquivo(ListboxMinerais.GetSelectedText,
          ListboxRruff_id.GetSelectedText,
            'Espectro Infravermelho', ComboboxEquipamentoInfravermelho.Text, '');
      if Dados.SdfDataSetGraficos.FileName <> EmptyStr then
        ChartInfravermelho.AddSeries(GraficoInfravermelho)
      else
        ChartInfravermelho.ClearSeries;
    end
    else
    if PageControlRruff.ActivePage.Caption = 'Powder Diffraction' then
    begin
      Dados.SdfDataSetGraficos.FileName :=
        Dados.DeterminaArquivo(ListboxMinerais.GetSelectedText,
        ListboxRruff_id.GetSelectedText, 'Difracao', '', '');
      if Dados.SdfDataSetGraficos.FileName <> EmptyStr then
        ChartDifracao.AddSeries(GraficoDifracao)
      else
        ChartDifracao.ClearSeries;
    end;
  end;
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

procedure TFormPrincipal.MenuItemExcluiClick(Sender: TObject);
begin
  ExcluiMineral;
end;

procedure TFormPrincipal.MenuItemFiltroClick(Sender: TObject);
begin
  Config := TIniFile.Create(GetCurrentDir + '\Data\config.ini');
  if BGRAPanelFiltro.Visible then
  begin
    BGRAPanelFiltro.Visible := False;
    MenuItemFiltro.Checked := False;
    Config.WriteBool('Configuracoes', 'PainelFiltro', False);
  end
  else
  begin
    BGRAPanelFiltro.Visible := True;
    MenuItemFiltro.Checked := True;
    Config.WriteBool('Configuracoes', 'PainelFiltro', True);
  end;
  Config.Free;
end;

procedure TFormPrincipal.MenuItemAmostrasClick(Sender: TObject);
begin
  Config := TIniFile.Create(GetCurrentDir + '\Data\config.ini');
  if (not MenuItemAmostras.Checked) then
  begin
    PreencheAmostras;
    Dados.Sqlite3DatasetAmostras.Open;
    PanelFicha.Visible := False;
    PanelRruff.Visible := True;
    BGRAPanel1.Visible := True;
    MenuItemAmostras.Checked := True;
    Config.WriteBool('Configuracoes', 'PainelAmostras', True);
  end
  else
  begin
    PanelRruff.Visible := False;
    PanelFicha.Visible := True;
    BGRAPanel1.Visible := False;
    MenuItemAmostras.Checked := False;
    Config.WriteBool('Configuracoes', 'PainelAmostras', False);
    //Dados.Sqlite3DatasetAmostras.Close;
  end;
  Config.Free;
end;

procedure TFormPrincipal.MenuItemImagensClick(Sender: TObject);
begin
  Config := TIniFile.Create(GetCurrentDir + '\Data\config.ini');
  if MenuItemImagens.Checked then
  begin
    BGRAPanelImagens.Visible := False;
    MenuItemImagens.Checked := False;
    Config.WriteBool('Configuracoes', 'PainelImagem', False);
  end
  else
  begin
    BGRAPanelImagens.Visible := True;
    MenuItemImagens.Checked := True;
    Config.WriteBool('Configuracoes', 'PainelImagem', True);
    AtualizaImagem;
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

procedure TFormPrincipal.MenuItemRemoverAmostraClick(Sender: TObject);
begin
  if ListboxRruff_id.GetSelectedText <> EmptyStr then
  begin
    Dados.ExcluiAmostra(ListboxMinerais.GetSelectedText,
      ListboxRruff_id.GetSelectedText);
    PreencheAmostras;
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
  begin
    sltb := sldb.GetTable('UPDATE minerais set ' + Campo + ' ="' + objeto.Text +
      '" WHERE nome="' + especie + '";');
    if UpCase(objeto.Name) = UpCase('DBMemoSubclasse') then
      Preenche_Subclasses;
  end
  else
  if BancoDados = Rruff then
  begin
    sltb := sldb.GetTable('UPDATE rruff set ' + Campo + ' ="' + objeto.Text +
      '" WHERE rruff_id="' + especie + '";');
  end;
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

    DBMemoQuimicaId.ReadOnly := True;
    DBMemoVarreduraId.ReadOnly := True;
    DBMemoInfravermelhoId.ReadOnly := True;
    DBMemoDifracaoId.ReadOnly := True;
    DBMemoComprimentoOnda.ReadOnly := True;
    DBMemoDescricaoBS.ReadOnly := True;
    DBMemoDescricaoInfravermelho.ReadOnly := True;
    DBMemoA.ReadOnly := True;
    DBMemoB.ReadOnly := True;
    DBMemoC.ReadOnly := True;
    DBMemoAlpha.ReadOnly := True;
    DBMemoBeta.ReadOnly := True;
    DBMemoGamma.ReadOnly := True;
    DBMemoVolume.ReadOnly := True;
    DBMemoSistemaCristalino.ReadOnly := True;

    DBMemoQuimicaIdeal.ReadOnly := True;
    DBMemoLocalidade.ReadOnly := True;
    DBMemoFonte.ReadOnly := True;
    DBMemoDescricaoAmostra.ReadOnly := True;
    DBMemoDescricaoQuimica.ReadOnly := True;
    DBMemoDescricaoRaman.ReadOnly := True;
    DBMemoSituacao.ReadOnly := True;
    DBMemoQuimicaMedida.ReadOnly := True;
    DBMemoPin_id.ReadOnly := True;
    DBMemoOrientacao.ReadOnly := True;
    DBMemoProprietario.ReadOnly := True;
    DBMemoAmostraRruff_id.ReadOnly := True;

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

    DBMemoQuimicaId.ReadOnly := False;
    DBMemoVarreduraId.ReadOnly := False;
    DBMemoInfravermelhoId.ReadOnly := False;
    DBMemoDifracaoId.ReadOnly := False;
    DBMemoComprimentoOnda.ReadOnly := False;
    DBMemoDescricaoBS.ReadOnly := False;
    DBMemoDescricaoInfravermelho.ReadOnly := False;
    DBMemoResolucao.ReadOnly := False;
    DBMemoA.ReadOnly := False;
    DBMemoB.ReadOnly := False;
    DBMemoC.ReadOnly := False;
    DBMemoAlpha.ReadOnly := False;
    DBMemoBeta.ReadOnly := False;
    DBMemoGamma.ReadOnly := False;
    DBMemoVolume.ReadOnly := False;
    DBMemoSistemaCristalino.ReadOnly := False;

    DBMemoQuimicaIdeal.ReadOnly := False;
    DBMemoLocalidade.ReadOnly := False;
    DBMemoFonte.ReadOnly := False;
    DBMemoDescricaoAmostra.ReadOnly := False;
    DBMemoDescricaoQuimica.ReadOnly := False;
    DBMemoDescricaoRaman.ReadOnly := False;
    DBMemoSituacao.ReadOnly := False;
    DBMemoQuimicaMedida.ReadOnly := False;
    DBMemoPin_id.ReadOnly := False;
    DBMemoOrientacao.ReadOnly := False;
    DBMemoProprietario.ReadOnly := False;
    DBMemoAmostraRruff_id.ReadOnly := False;

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
  Dados.Sqlite3DatasetPreencheAmostras.SQL :=
    'SELECT rruff_id FROM rruff WHERE especie = "' + ListboxMinerais.GetSelectedText +
    '" ORDER BY rruff_id ASC;';
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

procedure TFormPrincipal.DadosRAMAN(Especie: string; Rruff_id: string;
  Direcao: string; Equipamento: string);
begin
  ChartRaman.ClearSeries;
  if ComboboxDirecaoLaser.Text = TodosOsDados then
  begin
    Dados.SdfDataSetGraficos.FileName :=
      Dados.DeterminaArquivo(ListboxMinerais.GetSelectedText,
      ListboxRruff_id.GetSelectedText, EspectroRAMAN, Equipamento, Angulo0);
    if Dados.SdfDataSetGraficos.FileName <> EmptyStr then
      ChartRaman.AddSeries(GraficoRaman);

    Dados.SdfDataSetGraficos.FileName :=
      Dados.DeterminaArquivo(ListboxMinerais.GetSelectedText,
      ListboxRruff_id.GetSelectedText, EspectroRAMAN, Equipamento, Angulo45);
    if Dados.SdfDataSetGraficos.FileName <> EmptyStr then
      ChartRaman.AddSeries(GraficoRaman);

    Dados.SdfDataSetGraficos.FileName :=
      Dados.DeterminaArquivo(ListboxMinerais.GetSelectedText,
      ListboxRruff_id.GetSelectedText, EspectroRAMAN, Equipamento, Angulo90);
    if Dados.SdfDataSetGraficos.FileName <> EmptyStr then
      ChartRaman.AddSeries(GraficoRaman);

    Dados.SdfDataSetGraficos.FileName :=
      Dados.DeterminaArquivo(ListboxMinerais.GetSelectedText,
      ListboxRruff_id.GetSelectedText, EspectroRAMAN,
      Equipamento, Depolarizado);
    if Dados.SdfDataSetGraficos.FileName <> EmptyStr then
      ChartRaman.AddSeries(GraficoRaman);
  end
  else
  begin
    Dados.SdfDataSetGraficos.FileName :=
      Dados.DeterminaArquivo(ListboxMinerais.GetSelectedText,
      ListboxRruff_id.GetSelectedText, EspectroRAMAN,
      Equipamento, ComboboxDirecaoLaser.Text);

    if Dados.SdfDataSetGraficos.FileName <> EmptyStr then
      ChartRaman.AddSeries(GraficoRaman);
  end;
end;

procedure TFormPrincipal.AtualizaComboboxEquipamentos(Combobox: TCombobox);
begin
  //Combobox.Items.AddStrings(Dados.Equipamentos);
  //Combobox.Items := Dados.Equipamentos;
end;

procedure TFormPrincipal.AtualizaComboboxDirecaoLaser(Digito: Boolean; Combobox:TCombobox);
begin
  Combobox.Clear;
  if Trim(Combobox.Text) = '0' then
  begin
    Combobox.Items.Append(Onda532);
    Combobox.Items.Append(Onda780);
  end
  else
  begin
    Combobox.Items.Append(Angulo0);
    Combobox.Items.Append(Angulo45);
    Combobox.Items.Append(Angulo90);
    Combobox.Items.Append(Depolarizado);
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
        SQL :=
          'INSERT INTO minerais (nome , dureza_min, dureza_max, densidade_min, densidade_max ) VALUES ';
        SQL := SQL + ' ("' + EditNome.Text + '", "' + ComboBoxDureza_min.Text +
          '", "' + ComboBoxDureza_max.Text + '", "' + EditDensidade_min.Text +
          '", "' + EditDensidade_max.Text + '");';
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
        SQL :=
          'INSERT INTO minerais (nome , dureza_min, dureza_max, densidade_min, densidade_max ) VALUES ';
        SQL := SQL + ' ("Novo Mineral", "' + ComboBoxDureza_min.Text +
          '", "' + ComboBoxDureza_max.Text + '", "' + EditDensidade_min.Text +
          '", "' + EditDensidade_max.Text + '");';
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

procedure TFormPrincipal.PageControlRruffChange(Sender: TObject);
begin
  if ListboxRruff_id.GetSelectedText <> EmptyStr then
  begin
    if PageControlRruff.ActivePage.Caption = 'Descrição da Amostra' then
    begin
      self.ImageAmostra.Picture.Graphic :=
        SelecionaImagensRruff(ListboxMinerais.GetSelectedText,
        ListboxRruff_id.GetSelectedText, 'Amostra');
    end;
    if PageControlRruff.ActivePage.Caption = 'Química Ideal' then
    begin
     { Dados.SdfDataSetPlanilhaMicrossonda.Close;
      Dados.SdfDataSetPlanilhaMicrossonda.FileName:=
        Dados.DeterminaArquivo(ListboxMinerais.GetSelectedText, ListboxRruff_id.GetSelectedText, 'Microssonda','');
      if Dados.SdfDataSetPlanilhaMicrossonda.FileName <> EmptyStr then
      Dados.SdfDataSetPlanilhaMicrossonda.Open
      else
      DBGrid1.Clear; }
      self.ImageQuimica.Picture.Graphic :=
        SelecionaImagensRruff(ListboxMinerais.GetSelectedText,
        ListboxRruff_id.GetSelectedText, 'Quimica');
    end
    else
    if PageControlRruff.ActivePage.Caption = 'Espectro RAMAN' then
    begin
      //AtualizaComboboxEquipamentos(ComboboxEquipamentoRaman);
      DadosRAMAN(ListboxMinerais.GetSelectedText, ListboxRruff_id.GetSelectedText,
        ComboboxDirecaoLaser.Text,
          ComboboxEquipamentoRaman.Text);
      {ChartRaman.ClearSeries;
      if ComboboxDirecaoLaser.Text = TodosOsDados then
      begin
        Dados.SdfDataSetGraficos.FileName:=
        Dados.DeterminaArquivo(ListboxMinerais.GetSelectedText, ListboxRruff_id.GetSelectedText,
          EspectroRAMAN, Angulo0);
        if Dados.SdfDataSetGraficos.FileName <> EmptyStr then
          ChartRaman.AddSeries(GraficoRaman);

        Dados.SdfDataSetGraficos.FileName:=
        Dados.DeterminaArquivo(ListboxMinerais.GetSelectedText, ListboxRruff_id.GetSelectedText,
          EspectroRAMAN, Angulo45);
        if Dados.SdfDataSetGraficos.FileName <> EmptyStr then
          ChartRaman.AddSeries(GraficoRaman);

        Dados.SdfDataSetGraficos.FileName:=
        Dados.DeterminaArquivo(ListboxMinerais.GetSelectedText, ListboxRruff_id.GetSelectedText,
          EspectroRAMAN, Angulo90);
        if Dados.SdfDataSetGraficos.FileName <> EmptyStr then
          ChartRaman.AddSeries(GraficoRaman);

        Dados.SdfDataSetGraficos.FileName:=
        Dados.DeterminaArquivo(ListboxMinerais.GetSelectedText, ListboxRruff_id.GetSelectedText,
          EspectroRAMAN, Depolarizado);
        if Dados.SdfDataSetGraficos.FileName <> EmptyStr then
          ChartRaman.AddSeries(GraficoRaman);
      end
      else
      begin
        Dados.SdfDataSetGraficos.FileName:=
        Dados.DeterminaArquivo(ListboxMinerais.GetSelectedText, ListboxRruff_id.GetSelectedText,
          EspectroRAMAN, ComboboxDirecaoLaser.Text);

        if Dados.SdfDataSetGraficos.FileName <> EmptyStr then
          ChartRaman.AddSeries(GraficoRaman);
      end;   }
    end
    else
    if PageControlRruff.ActivePage.Caption =
      'Ampla Varredura com Artefatos Espectrais' then
    begin
      Dados.SdfDataSetGraficos.FileName :=
        Dados.DeterminaArquivo(ListboxMinerais.GetSelectedText,
          ListboxRruff_id.GetSelectedText, 'Ampla Varredura',
            ComboboxEquipamentoVarredura.Text, '');
      if Dados.SdfDataSetGraficos.FileName <> EmptyStr then
        ChartVarredura.AddSeries(GraficoVarredura)
      else
        ChartVarredura.ClearSeries;
    end
    else
    if PageControlRruff.ActivePage.Caption = 'Espectro Infravermelho' then
    begin
      Dados.SdfDataSetGraficos.FileName :=
        Dados.DeterminaArquivo(ListboxMinerais.GetSelectedText,
          ListboxRruff_id.GetSelectedText,
            'Espectro Infravermelho', ComboboxEquipamentoInfravermelho.Text, '');
      if Dados.SdfDataSetGraficos.FileName <> EmptyStr then
        ChartInfravermelho.AddSeries(GraficoInfravermelho)
      else
        ChartInfravermelho.ClearSeries;
    end
    else
    if PageControlRruff.ActivePage.Caption = 'Powder Diffraction' then
    begin
      Dados.SdfDataSetGraficos.FileName :=
        Dados.DeterminaArquivo(ListboxMinerais.GetSelectedText,
        ListboxRruff_id.GetSelectedText, 'Difracao', '', '');
      if Dados.SdfDataSetGraficos.FileName <> EmptyStr then
        ChartDifracao.AddSeries(GraficoDifracao)
      else
        ChartDifracao.ClearSeries;
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

procedure TFormPrincipal.ImageQuimicaDblClick(Sender: TObject);
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
          ListboxRruff_id.GetSelectedText, OpenPictureDialog1.FileName, 'Quimica');
      end;
    end;
  end;
end;

procedure TFormPrincipal.Image5DblClick(Sender: TObject);
begin
  Adiciona_Imagem('5');
end;

procedure TFormPrincipal.ImageAmostraDblClick(Sender: TObject);
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
          ListboxRruff_id.GetSelectedText, OpenPictureDialog1.FileName, 'Amostra');
      end;
    end;
  end;
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
