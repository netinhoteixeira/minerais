unit unitfichaespecie;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, RichMemo, BCPanel, BCLabel,
  BGRAFlashProgressBar, Forms, Controls, Graphics, Dialogs, ExtCtrls, ComCtrls,
  StdCtrls, DBCtrls, Buttons, Menus, ExtDlgs, ActnList, INIFiles,
  SQLite3tablemod;

type

  { TFormFichaEspecie }

  TFormFichaEspecie = class(TForm)
    ActionListToolBar: TActionList;
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
    BCLabel1: TBCLabel;
    BCLabel2: TBCLabel;
    BCLabel3: TBCLabel;
    BCLabelAssociacao: TBCLabel;
    BCLabelBrilho: TBCLabel;
    BCLabelClasse: TBCLabel;
    BCLabelCor: TBCLabel;
    BCLabelDensidade: TBCLabel;
    BCLabelDureza: TBCLabel;
    BCLabelGrupo: TBCLabel;
    BCLabelOcorrencia: TBCLabel;
    BCLabelSubclasse: TBCLabel;
    BCLabelSubgrupo: TBCLabel;
    BCPanel1: TBCPanel;
    BCPanel2: TBCPanel;
    BCPanel3: TBCPanel;
    ComboBox1: TComboBox;
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
    ImagemAmpliada: TImage;
    Label1: TLabel;
    Label24: TLabel;
    Label25: TLabel;
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
    LabelRelevo: TLabel;
    LabelSimbologia: TLabel;
    LabelSInal_Elongacao: TLabel;
    LabelSinal_optico: TLabel;
    LabelSistema_Cristalino: TLabel;
    LabelSubClasse: TLabel;
    LabelSubGrupo: TLabel;
    LabelTraco: TLabel;
    ListBoxMinerais: TListBox;
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
    MemoDifaneidade: TMemo;
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
    SpeedButtonAdd: TSpeedButton;
    SpeedButtonRemove: TSpeedButton;
    SpeedButtonRefresh: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButtonBilbiografia: TSpeedButton;
    TabSheetCristalografia: TTabSheet;
    TabSheetImagem: TTabSheet;
    TabSheetInf_Gerais: TTabSheet;
    TabSheetOticas: TTabSheet;
    TabSheetProp_Fisicas: TTabSheet;
    ToolBar1: TToolBar;
    ToolBar2: TToolBar;
    ToolButton1: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButtonShowFilter: TToolButton;
    ToolButtonShowImages: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButtonAddImage: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    procedure ActionAddImage1Execute(Sender: TObject);
    procedure ActionAddImage2Execute(Sender: TObject);
    procedure ActionAddImage3Execute(Sender: TObject);
    procedure ActionAddImage4Execute(Sender: TObject);
    procedure ActionAddImage5Execute(Sender: TObject);
    procedure ActionAddImage6Execute(Sender: TObject);
    procedure ActionAddImage7Execute(Sender: TObject);
    procedure ActionRefreshListExecute(Sender: TObject);
    procedure ActionRemoveMineralExecute(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
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
    procedure MemoDifaneidadeEditingDone(Sender: TObject);
    procedure MemoDifaneidadeKeyUp(Sender: TObject; var Key: word;
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
    procedure PageControlFichaChange(Sender: TObject);
    procedure ToolButtonAddImageClick(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
  private
    function AtualizarLista: boolean;
    function DefinirOrdem: string;
    function ExcluiMineral(Nome: string): boolean;
    function Filtro_Nome: boolean;
    function Filtro_Ocorrencia: boolean;
    function Filtro_Associacao: boolean;
    function Filtro_Cor: boolean;
    function Filtro_Brilho: boolean;
    function MineralogyName: string;
    procedure AddMineralImage(Num: char);
    procedure EditingMode(Mode: boolean);
    procedure Image1OnClick(Sender: TObject);
    procedure Image2OnClick(Sender: TObject);
    procedure Image3OnClick(Sender: TObject);
    procedure Image4OnClick(Sender: TObject);
    procedure Image5OnClick(Sender: TObject);
    procedure Image6OnClick(Sender: TObject);
    procedure Image7OnClick(Sender: TObject);
    procedure Preenche_Classes;
    procedure Preenche_Subclasses;
    procedure Preenche_Grupos;
    procedure Preenche_SubGrupos;
    procedure RefreshImages;
    procedure SelectImage(num: char);
    { private declarations }
  public
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
  Config: TIniFile;

  Image1, Image2, Image3, Image4, Image5, Image6, Image7: TImage;

  FormFichaEspecie: TFormFichaEspecie;
  Imagem_Selecionada: char;

  UltimaPesquisa: string;
  den_min, den_max, Ocorrencia,      //variaveis usadas nos procedimentos de filtro
  Associacao, Cor, Brilho: string;

  Image: array[1..7] of PropertyImages;

implementation

uses udatamodule, unitBlobFields, unitaddmineral;

{$R *.lfm}

{ TFormFichaEspecie }

procedure TFormFichaEspecie.FormCreate(Sender: TObject);
begin

end;

procedure TFormFichaEspecie.FormShow(Sender: TObject);
var
  Diretorio, SelectSQL: string;
begin
  Imagem_Selecionada := '1';
  openpicturedialog1.Filter := lista_formatos;

  {//config.ini
  if DirectoryExists(GetCurrentDir+'\Data') then
    Diretorio := GetCurrentDir + '\Data\config.ini'
  else
    Diretorio:= GetCurrentDir + '\config.ini';
  Config:= TIniFile.Create(Diretorio);
   }
   if Dados.DatabaseMineralFileName <> EmptyStr then
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
  end
  else
  begin
    EditingMode(False);
    ShowMessage('O banco de dados: "' + Dados.DatabaseMineralFileName +
      '" não é válido.');
    Dados.DatabaseMineralFileName := EmptyStr;
  end;
   end
   else
     ShowMessage('Não há banco de dados selecionado.');
end;

procedure TFormFichaEspecie.HeaderControl1SectionClick(
  HeaderControl: TCustomHeaderControl; Section: THeaderSection);
begin
  if (Trim(EditNomeMineral.Text) <> Emptystr) then
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
          SelectBlobFieldToJPEGImage('mineralogia', 'mineralogiaimagem1',
          EditNomeMineral.Caption, EmptyStr, EmptyStr, EmptyStr);
        Imagem_Selecionada := '6';
      end;
      6:
      begin
        self.ImagemAmpliada.Picture.Graphic :=
          SelectBlobFieldToJPEGImage('mineralogia', 'mineralogiaimagem2',
          EditNomeMineral.Caption, EmptyStr, EmptyStr, EmptyStr);
        Imagem_Selecionada := '7';
      end;
    end;
  end;
end;

procedure TFormFichaEspecie.ListBoxMineraisClick(Sender: TObject);
var
  SelectSQL: string;
begin
  if ListboxMinerais.GetSelectedText <> EmptyStr then
  begin
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
    ;
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

    MemoDifaneidade.Text := Dados.TableMinerals.FieldByName['difaneidade'];
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

procedure TFormFichaEspecie.MemoDifaneidadeEditingDone(Sender: TObject);
begin
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
    'UPDATE minerais SET difaneidade ' + '="' + MemoDifaneidade.Text +
    '" WHERE nome="' + EditNomeMineral.Text + '";');
end;

procedure TFormFichaEspecie.MemoDifaneidadeKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
    'UPDATE minerais SET difaneidade ' + '="' + MemoDifaneidade.Text +
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

procedure TFormFichaEspecie.PageControlFichaChange(Sender: TObject);
begin
  if Dados.DatabaseMineralFileName <> EmptyStr then
  begin
    if ListboxMInerais.GetSelectedText <> EmptyStr then
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
    end;
  end;
end;

procedure TFormFichaEspecie.ToolButtonAddImageClick(Sender: TObject);
begin
  if EditNomeMineral.Text <> EmptyStr then
  AddMineralImage(Imagem_Selecionada);
end;

procedure TFormFichaEspecie.ToolButton3Click(Sender: TObject);
begin   //revisar
  if (EditNomeMineral.Text <> EmptyStr) then
  begin   {ClearBlobField(Table, Field, Especie, Rruff_id, Digito, Tipo:String);}
    ClearBlobField('minerais', 'imagem' + Imagem_Selecionada,
      ListboxMinerais.GetSelectedText, EmptyStr, EmptyStr, EmptyStr);
  end
  else
  begin
    ClearBlobField('mineralogia', 'mineralogiaimagem' + Imagem_Selecionada,
      ListboxMinerais.GetSelectedText, EmptyStr, EmptyStr, EmptyStr);
  end;
  Imagem_Selecionada := '1';
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
      ProgressBar1.Caption := 'Total de Registros: ' +
        IntToStr(Dados.TableMinerals.Count - 1);
    end;
end;

function TFormFichaEspecie.ExcluiMineral(Nome: string): boolean;
begin
  if (QuestionDlg('Confirmação', 'Deseja realmente remover "' +
    UpCase(Nome) + '"?', mtConfirmation, [mrNo, mrYes], 0) = mrYes) then
  begin
    ExcluiMineral(Nome);
    //Atualizar_Lista;
    //AtualizaImagem;
    //Barra_Status;
  end;
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

procedure TFormFichaEspecie.AddMineralImage(Num: char);
begin
  OpenPictureDialog1.FileName := emptystr;
  OpenPictureDialog1.Execute;
  if (OpenPictureDialog1.FileName <> emptystr) then
  begin
    if ListboxMinerais.GetSelectedText <> EmptyStr then
    begin
      AddBlobFieldMineral(Dados.DatabaseMineralFileName, OpenPictureDialog1.FileName,
        'minerais', 'imagem' + Num, EditNomeMineral.Text);
    end
    else
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
  Mode := not Mode;
  EditFormula.ReadOnly := Mode;
  EditNomeMineral.ReadOnly := Mode;
  EditClasse.ReadOnly := Mode;
  EditSubClasse.ReadOnly := Mode;
  EditGrupo.ReadOnly := Mode;
  EditSubGrupo.ReadOnly := Mode;
  MemoOcorrencia.ReadOnly := Mode;
  MemoAssociacao.ReadOnly := Mode;
  MemoDistincao.ReadOnly := Mode;
  MemoAlteracao.ReadOnly := Mode;
  MemoAplicacao.ReadOnly := Mode;

  EditDurezaMin.ReadOnly := Mode;
  EditDurezaMax.ReadOnly := Mode;
  EditDensidadeMin.ReadOnly := Mode;
  EditDensidadeMax.ReadOnly := Mode;

  MemoCor.ReadOnly := Mode;
  MemoTraco.ReadOnly := Mode;
  MemoBrilho.ReadOnly := Mode;
  MemoClivagem.ReadOnly := Mode;
  MemoFratura.ReadOnly := Mode;
  MemoMagnetismo.ReadOnly := Mode;
  MemoLuminescencia.ReadOnly := Mode;

  MemoDifaneidade.ReadOnly := Mode;
  MemoSinalOptico.ReadOnly := Mode;
  MemoIndiceRefracao.ReadOnly := Mode;
  MemoAngulo.ReadOnly := Mode;
  MemoInterferencia.ReadOnly := Mode;
  MemoCorLamina.ReadOnly := Mode;
  MemoSinalElongacao.ReadOnly := Mode;
  MemoBirrefringencia.ReadOnly := Mode;
  MemoRelevo.ReadOnly := Mode;
  MemoExtincao.ReadOnly := Mode;

  EditSistema.ReadOnly := Mode;
  EditClasse_Cristalina.ReadOnly := Mode;
  EditH_M.ReadOnly := Mode;
  MemoHabito.ReadOnly := Mode;
end;

procedure TFormFichaEspecie.Image1OnClick(Sender: TObject);
begin
  Imagem_Selecionada := '1';
  self.ImagemAmpliada.Picture.Graphic :=
    SelectBlobFieldToJPEGImage('minerais', 'imagem1',
    ListboxMinerais.GetSelectedText, EmptyStr, EmptyStr, EmptyStr);
end;

procedure TFormFichaEspecie.Image2OnClick(Sender: TObject);
begin
  Imagem_Selecionada := '2';
  self.ImagemAmpliada.Picture.Graphic :=
    SelectBlobFieldToJPEGImage('minerais', 'imagem2',
    ListboxMinerais.GetSelectedText, EmptyStr, EmptyStr, EmptyStr);
end;

procedure TFormFichaEspecie.Image3OnClick(Sender: TObject);
begin
  Imagem_Selecionada := '3';
  self.ImagemAmpliada.Picture.Graphic :=
    SelectBlobFieldToJPEGImage('minerais', 'imagem3',
    ListboxMinerais.GetSelectedText, EmptyStr, EmptyStr, EmptyStr);
end;

procedure TFormFichaEspecie.Image4OnClick(Sender: TObject);
begin
  Imagem_Selecionada := '4';
  self.ImagemAmpliada.Picture.Graphic :=
    SelectBlobFieldToJPEGImage('minerais', 'imagem4',
    ListboxMinerais.GetSelectedText, EmptyStr, EmptyStr, EmptyStr);
end;

procedure TFormFichaEspecie.Image5OnClick(Sender: TObject);
begin
  Imagem_Selecionada := '5';
  self.ImagemAmpliada.Picture.Graphic :=
    SelectBlobFieldToJPEGImage('minerais', 'imagem5',
    ListboxMinerais.GetSelectedText, EmptyStr, EmptyStr, EmptyStr);
end;

procedure TFormFichaEspecie.Image6OnClick(Sender: TObject);
begin
  Imagem_Selecionada := '6';
  self.ImagemAmpliada.Picture.Graphic :=
    SelectBlobFieldToJPEGImage('minerais', 'imagem6',
    ListboxMinerais.GetSelectedText, EmptyStr, EmptyStr, EmptyStr);
end;

procedure TFormFichaEspecie.Image7OnClick(Sender: TObject);
begin
  Imagem_Selecionada := '7';
  self.ImagemAmpliada.Picture.Graphic :=
    SelectBlobFieldToJPEGImage('minerais', 'imagem7',
    ListboxMinerais.GetSelectedText, EmptyStr, EmptyStr, EmptyStr);
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
  ImagesNumber := -1;
  ScrollBox8.UpdateScrollbars;
  if (ListBoxMinerais.GetSelectedText <> EmptyStr) then
  begin
    if PageControlFicha.TabIndex = 4 then
      self.ImagemAmpliada.Picture.Graphic :=
        SelectBlobFieldToJPEGImage('minerais', 'imagem1',
        ListboxMinerais.GetSelectedText, EmptyStr, EmptyStr, EmptyStr);

    //if (SelectBlobFieldToJPEGImage('minerais', 'imagem1',
    //ListboxMinerais.GetSelectedText, EmptyStr, EmptyStr, EmptyStr) <> nil)
    Dados.TableMinerals := Dados.DatabaseMinerals.GetTable('SELECT imagem1, ' +
      'imagem2, imagem3, imagem4, imagem5, imagem6, imagem7 FROM minerais ' +
      ' WHERE nome = "' + EditNomeMineral.Text + '" ;');
    for I := 1 to 7 do
    begin
      MS := Dados.TableMinerals.FieldAsBlob(
        Dados.TableMinerals.FieldIndex['imagem' + IntToStr(I)]);
      if MS <> nil then
      begin
        Image[I].ToCreate := True;
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
          SelectBlobFieldToJPEGImage('minerais', 'imagem1',
          ListboxMinerais.GetSelectedText, EmptyStr, EmptyStr, EmptyStr)
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
          Picture.Graphic := SelectBlobFieldToJPEGImage('minerais',
            'imagem1', ListboxMinerais.GetSelectedText, EmptyStr, EmptyStr, EmptyStr);
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
          SelectBlobFieldToJPEGImage('minerais', 'imagem2',
          ListboxMinerais.GetSelectedText, EmptyStr, EmptyStr, EmptyStr)
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
          Picture.Graphic := SelectBlobFieldToJPEGImage('minerais',
            'imagem2', ListboxMinerais.GetSelectedText, EmptyStr, EmptyStr, EmptyStr);
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
          Picture.Graphic := SelectBlobFieldToJPEGImage('minerais',
            'imagem3', ListboxMinerais.GetSelectedText, EmptyStr, EmptyStr, EmptyStr);
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
          Picture.Graphic := SelectBlobFieldToJPEGImage('minerais',
            'imagem4', ListboxMinerais.GetSelectedText, EmptyStr, EmptyStr, EmptyStr);
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
          ;
          Width := ImagesWidth;
          Height := ImagesHeight;
          Proportional := True;
          Center := True;
          AntialiasingMode := amOn;
          OnClick := @Image5OnClick;
          Picture.Graphic := SelectBlobFieldToJPEGImage('minerais',
            'imagem5', ListboxMinerais.GetSelectedText, EmptyStr, EmptyStr, EmptyStr);
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
          Picture.Graphic := SelectBlobFieldToJPEGImage('minerais',
            'imagem6', ListboxMinerais.GetSelectedText, EmptyStr, EmptyStr, EmptyStr);
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
          Picture.Graphic := SelectBlobFieldToJPEGImage('minerais',
            'imagem7', ListboxMinerais.GetSelectedText, EmptyStr, EmptyStr, EmptyStr);
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

    {self.Image2.Picture.Graphic := SelectBlobFieldToJPEGImage('minerais',
      'imagem2', ListboxMinerais.GetSelectedText, EmptyStr, EmptyStr, EmptyStr);
    self.Image3.Picture.Graphic := SelectBlobFieldToJPEGImage('minerais',
      'imagem3', ListboxMinerais.GetSelectedText, EmptyStr, EmptyStr, EmptyStr);
    self.Image4.Picture.Graphic := SelectBlobFieldToJPEGImage('minerais',
      'imagem4', ListboxMinerais.GetSelectedText, EmptyStr, EmptyStr, EmptyStr);
    self.Image5.Picture.Graphic := SelectBlobFieldToJPEGImage('minerais',
      'imagem5', ListboxMinerais.GetSelectedText, EmptyStr, EmptyStr, EmptyStr);}
    if PageControlFIcha.TabIndex = 3 then
    begin
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
    {obs: esse trecho é importante, as imagens da tabela mineralogia
    if (SelectBlobFieldToJPEGImage('mineralogia',
      'mineralogiaimagem1', EmptyStr, EmptyStr, EmptyStr, MineralogyName) = nil)
    then begin
      Image1:= TImage.Create(nil);
      with Image1 do
      begin
        Parent:=ScrollBox8;
        Left:=ImagesLeft;
        Top:= Image1Top;
        Width:= ImagesWidth;
        Height:= ImagesHeight;
      end;
      Image1.Picture.Graphic := SelectBlobFieldToJPEGImage('mineralogia',
        'mineralogiaimagem1', EmptyStr, EmptyStr, EmptyStr, MineralogyName);
    end;
      }
    {self.Image2.Picture.Graphic := SelectBlobFieldToJPEGImage('mineralogia',
      'mineralogiaimagem2', EmptyStr, EmptyStr, EmptyStr, MineralogyName);
    self.Image3.Picture.Graphic := SelectBlobFieldToJPEGImage('mineralogia',
      'mineralogiaimagem3', EmptyStr, EmptyStr, EmptyStr, MineralogyName);
    self.Image4.Picture.Graphic := SelectBlobFieldToJPEGImage('mineralogia',
      'mineralogiaimagem4', EmptyStr, EmptyStr, EmptyStr, MineralogyName);
    self.Image5.Picture.Graphic := SelectBlobFieldToJPEGImage('mineralogia',
      'mineralogiaimagem5', EmptyStr, EmptyStr, EmptyStr, MineralogyName);
  end;       }
  end;

end;

procedure TFormFichaEspecie.SelectImage(num: char);
begin
  if (ListboxMinerais.GetSelectedText <> EmptyStr) then
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
  end;
  Imagem_Selecionada := Num;
end;

procedure TFormFichaEspecie.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  Config.Free;
end;

procedure TFormFichaEspecie.ComboBoxGrupoChange(Sender: TObject);
begin
  Preenche_SubGrupos;
  AtualizarLista;
end;

procedure TFormFichaEspecie.ComboBoxSubclasseChange(Sender: TObject);
begin
  Preenche_Grupos;
  Preenche_SubGrupos;
  AtualizarLista;
end;

procedure TFormFichaEspecie.ComboBoxSubgrupoChange(Sender: TObject);
begin
  AtualizarLista;
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
begin
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
    'UPDATE minerais SET densidade_max ' + '="' + EditDensidadeMax.Text +
    '" WHERE nome="' + EditNomeMineral.Text + '";');
end;

procedure TFormFichaEspecie.EditDensidadeMaxKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
    'UPDATE minerais SET densidade_max ' + '="' + EditDensidadeMax.Text +
    '" WHERE nome="' + EditNomeMineral.Text + '";');
end;

procedure TFormFichaEspecie.EditDensidadeMinEditingDone(Sender: TObject);
begin
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
    'UPDATE minerais SET densidade_min ' + '="' + EditDensidadeMin.Text +
    '" WHERE nome="' + EditNomeMineral.Text + '";');
end;

procedure TFormFichaEspecie.EditDensidadeMinKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
    'UPDATE minerais SET densidade_min ' + '="' + EditDensidadeMin.Text +
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
begin
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
    'UPDATE minerais SET dureza_max ' + '="' + EditDurezaMax.Text +
    '" WHERE nome="' + EditNomeMineral.Text + '";');
end;

procedure TFormFichaEspecie.EditDurezaMaxKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
    'UPDATE minerais SET dureza_max ' + '="' + EditDurezaMax.Text +
    '" WHERE nome="' + EditNomeMineral.Text + '";');
end;

procedure TFormFichaEspecie.EditDurezaMinEditingDone(Sender: TObject);
begin
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
    'UPDATE minerais SET dureza_min ' + '="' + EditDurezaMin.Text +
    '" WHERE nome="' + EditNomeMineral.Text + '";');
end;

procedure TFormFichaEspecie.EditDurezaMinKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
    'UPDATE minerais SET dureza_min ' + '="' + EditDurezaMin.Text +
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
  Novo, Velho: integer;
begin
  if (Dados.TableMinerals.FieldByName['nome'] <> ListBoxMinerais.GetSelectedText) then
  begin
    velho := ListboxMinerais.Items.IndexOf(ListboxMinerais.getselectedtext);
    novo := ListboxMinerais.Items.Add(Dados.TableMinerals.FieldByName['nome']);
    ListboxMinerais.items.Exchange(novo, velho);
    ListboxMinerais.Items.Delete(novo);
    Dados.UpdateField('minerais', 'nome', EditNomeMineral.Text,
      Dados.TableMinerals.FieldByName['nome'], EmptyStr, EmptyStr, EmptyStr);
  end;
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
end;

procedure TFormFichaEspecie.ActionAddImage1Execute(Sender: TObject);
begin
  AddMineralImage('1');
end;

procedure TFormFichaEspecie.ActionAddImage2Execute(Sender: TObject);
begin
  AddMineralImage('2');
end;

procedure TFormFichaEspecie.ActionAddImage3Execute(Sender: TObject);
begin
  AddMineralImage('3');
end;

procedure TFormFichaEspecie.ActionAddImage4Execute(Sender: TObject);
begin
  AddMineralImage('4');
end;

procedure TFormFichaEspecie.ActionAddImage5Execute(Sender: TObject);
begin
  AddMineralImage('5');
end;

procedure TFormFichaEspecie.ActionAddImage6Execute(Sender: TObject);
begin
  AddMineralImage('6');
end;

procedure TFormFichaEspecie.ActionAddImage7Execute(Sender: TObject);
begin
  AddMineralImage('7');
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
  //criar Form de exclusao com uma listbox com opção de multi select
end;

procedure TFormFichaEspecie.ComboBox1Change(Sender: TObject);
var
  I: integer;
begin
  I := StrToInt(Combobox1.Text);
  PageControlFicha.Font.Size := I;
  ListBoxMinerais.Font.Size := I;
end;

end.
