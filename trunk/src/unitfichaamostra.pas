unit unitfichaamostra;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, TAGraph, TASeries, BCPanel, BGRAFlashProgressBar,
  BGRAImageList, BCLabel, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  ComCtrls, StdCtrls, DBCtrls, Buttons, ActnList, ExtDlgs, Menus, unitPlanilha,
  unitRruff_id, SQLite3tablemod, IniFiles, unitequipamentos,
  unitaddsample, unitremovesample;

type

  { TFormFichaAmostra }

  TFormFichaAmostra = class(TForm)
    ActionAddMicroprobeData: TAction;
    ActionClearMicroprobeData: TAction;
    ActionSeePowderData: TAction;
    ActionAddPowderData: TAction;
    ActionClearInfraredData: TAction;
    ActionSeeInfraredData: TAction;
    ActionClearPowderData: TAction;
    ActionRefreshList: TAction;
    ActionAddInfraredData: TAction;
    ActionClearBroadScanData: TAction;
    ActionSeBoradScanData: TAction;
    ActionAddBroadScanData: TAction;
    ActionClearRamanData: TAction;
    ActionSeeRamanData: TAction;
    ActionAddRamanChart: TAction;
    ActionSeeMicroprobeData: TAction;
    ActionRemoveChemistryImage: TAction;
    ActionRemoveSampleImage: TAction;
    ActionFormEquipments: TAction;
    ActionRemoveSample: TAction;
    ActionAddSample: TAction;
    ActionAddChemistryImage: TAction;
    ActionAddImage: TAction;
    ActionComboboxDigitoOnChange: TAction;
    ActionChangeEquipment: TAction;
    ActionListPanelButtons: TActionList;
    ActionMicrossondaVisualizar: TAction;
    ActionBroadScanWaveOnChange: TAction;
    ActionRemoveBlobData: TAction;
    ActionRamanDirecaoOnChange: TAction;
    ActionAddDataToChart: TAction;
    ActionListboxSampleOnClick: TAction;
    ActionList1: TActionList;
    BCLabel1: TBCLabel;
    BCLabel2: TBCLabel;
    BCLabel3: TBCLabel;
    BCPanel1: TBCPanel;
    BCPanel2: TBCPanel;
    BGRAImageList1: TBGRAImageList;
    BitBtnAddMicroprobeData: TBitBtn;
    BitBtnClearMicroprobeData: TBitBtn;
    BitBtnEditMicroprobeData: TBitBtn;
    ChartBroadScan: TChart;
    ChartBroadScanLineSeries1: TLineSeries;
    ChartDifracao: TChart;
    ChartInfravermelho: TChart;
    ChartInfravermelhoLineSeries1: TLineSeries;
    ChartRaman: TChart;
    ComboBox1: TComboBox;
    ComboBoxBroadScanEquipment: TComboBox;
    ComboBoxDifracaoDigito: TComboBox;
    ComboBoxDirecaoLaser: TComboBox;
    ComboBoxInfraredEquipment: TComboBox;
    ComboBoxInfravermelhoDigito: TComboBox;
    ComboBoxQuimicaDigito: TComboBox;
    ComboBoxRamanDigito: TComboBox;
    ComboBoxRamanEquipment: TComboBox;
    ComboBoxVarreduraDigito: TComboBox;
    ComboBoxVarreduraOnda: TComboBox;
    EditChemistry: TEdit;
    EditMineralName: TEdit;
    EditMineralSample: TEdit;
    EditSample: TEdit;
    EditSample_Id: TEdit;
    GroupBox14: TGroupBox;
    GroupBox9: TGroupBox;
    GroupBoxDadosDifracao: TGroupBox;
    GroupBoxDifracao: TGroupBox;
    GroupBoxGraficoInfravermelho: TGroupBox;
    GroupBoxGraficoRaman: TGroupBox;
    GroupBoxGraficoVarredura: TGroupBox;
    GroupBoxImagemQuimica: TGroupBox;
    ImageAmostra: TImage;
    ImageQuimica: TImage;
    Label10: TLabel;
    Label1Especie: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    LabelA: TLabel;
    LabelAlpha: TLabel;
    LabelB: TLabel;
    LabelBeta: TLabel;
    LabelC: TLabel;
    LabelComprimentodeOnda: TLabel;
    LabelConfiguracaoInstrumento: TLabel;
    LabelDescricao2: TLabel;
    LabelDescricao3: TLabel;
    LabelDescricaoBroadScan: TLabel;
    LabelDescricaoIV: TLabel;
    LabelEquipamentoRaman: TLabel;
    LabelFonte: TLabel;
    LabelGamma: TLabel;
    LabelId_Quimica: TLabel;
    LabelId_Quimica1: TLabel;
    LabelId_Quimica2: TLabel;
    LabelId_Quimica3: TLabel;
    LabelId_Quimica4: TLabel;
    LabelInstrumentoIV: TLabel;
    LabelLocalidade: TLabel;
    LabelOrientacao: TLabel;
    LabelPinId: TLabel;
    LabelProprietario: TLabel;
    LabelQuimicaIdeal: TLabel;
    LabelQuimicaMedida: TLabel;
    LabelResolucao: TLabel;
    LabelSistemaCristalino: TLabel;
    LabelVolume: TLabel;
    ListBoxSample_id: TListBox;
    MemoA: TMemo;
    MemoAlpha: TMemo;
    MemoAmostraDescricao: TMemo;
    MemoB: TMemo;
    MemoBeta: TMemo;
    MemoC: TMemo;
    MemoDifracaoSample: TMemo;
    MemoFonte: TMemo;
    MemoGamma: TMemo;
    MemoInfravermelhoDescricao: TMemo;
    MemoInfravermelhoResolucao: TMemo;
    MemoInfravermelhoSample: TMemo;
    MemoLocalidade: TMemo;
    Memoproprietario: TMemo;
    MemoQuimicaDescricao: TMemo;
    MemoQuimicaMedida: TMemo;
    MemoQuimicaSample: TMemo;
    MemoRamanDescricao: TMemo;
    MemoRamanOrientacao: TMemo;
    MemoRamanPin_id: TMemo;
    MemoRamanSample: TMemo;
    MemoSistemaCristalino: TMemo;
    MemoSituacao: TMemo;
    MemoVarreduraDescricao: TMemo;
    MemoVarreduraSample: TMemo;
    MemoVolume: TMemo;
    MenuItemAdd: TMenuItem;
    MenuItemRemove: TMenuItem;
    MenuItemRemoveData: TMenuItem;
    MenuItemAddData: TMenuItem;
    MenuItemSeeData: TMenuItem;
    OpenDialog1: TOpenDialog;
    OpenPictureDialog1: TOpenPictureDialog;
    PageControlSample: TPageControl;
    PanelSample: TPanel;
    PopupMenuImages: TPopupMenu;
    PopupMenuChart: TPopupMenu;
    ProgressBar1: TProgressBar;
    ScrollBox1: TScrollBox;
    ScrollBox3: TScrollBox;
    ScrollBox4: TScrollBox;
    ScrollBox5: TScrollBox;
    ScrollBox6: TScrollBox;
    ScrollBox7: TScrollBox;
    SpeedButton1: TSpeedButton;
    SpeedButtonClearMicroprobeData: TSpeedButton;
    SpeedButtonAddChartRaman: TSpeedButton;
    SpeedButtonSeeRamanData: TSpeedButton;
    SpeedButtonClearRamanData: TSpeedButton;
    SpeedButtonAddBroadScanData: TSpeedButton;
    SpeedButtonSeeBoradScanData: TSpeedButton;
    SpeedButtonClearBroadScanData: TSpeedButton;
    SpeedButtonAddInfraredData: TSpeedButton;
    SpeedButtonSeeInfraredData: TSpeedButton;
    SpeedButtonClearInfraredData: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButtonAddPowderData: TSpeedButton;
    SpeedButtonSeePowderData: TSpeedButton;
    SpeedButtonClearPowderData: TSpeedButton;
    SpeedButtonRefreshList: TSpeedButton;
    SpeedButtonEquipments: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButtonRemoveSampleImage: TSpeedButton;
    SpeedButtonAddChemistryImage: TSpeedButton;
    SpeedButtonRemoveChemistryImage: TSpeedButton;
    SpeedButtonMicroprobeData: TSpeedButton;
    SpeedButtonAddMicroprobeData: TSpeedButton;
    TabSheetSampleDescricao: TTabSheet;
    TabSheetSampleDifraction: TTabSheet;
    TabSheetSampleInfrared: TTabSheet;
    TabSheetSampleQuimica: TTabSheet;
    TabSheetSampleRaman: TTabSheet;
    TabSheetSampleVarredura: TTabSheet;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButtonClearInfraredData: TToolButton;
    ToolButton11: TToolButton;
    ToolButtonAddPowderData: TToolButton;
    ToolButtonSeePowderData: TToolButton;
    ToolButtonClearPowderData: TToolButton;
    ToolButton15: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButtonAddInfraredData: TToolButton;
    ToolButtonSeeInfaredData: TToolButton;
    ToolButtonClearBroadScanData: TToolButton;
    ToolButtonSeeBroadScanData: TToolButton;
    ToolButtonAddBroadScanData: TToolButton;
    ToolButtonClearRamanData: TToolButton;
    ToolButtonSeeRamanData: TToolButton;
    ToolButtonAddChartRaman: TToolButton;
    ToolButtonClearMicroprobeData: TToolButton;
    ToolButtonSeeMicroprobeData: TToolButton;
    ToolButtonAddMicroprobeData: TToolButton;
    ToolButtonRemoveChemistryImage: TToolButton;
    ToolButtonAddChemistryImage: TToolButton;
    ToolButtonRemoveImage: TToolButton;
    ToolButtonAddImage: TToolButton;
    ToolButtonEquipments: TToolButton;
    ToolButtonRefreshList: TToolButton;
    ToolButtonAddSample: TToolButton;
    ToolButtonRemoveSample: TToolButton;
    procedure ActionAddBroadScanDataExecute(Sender: TObject);
    procedure ActionAddChemistryImageExecute(Sender: TObject);
    procedure ActionAddDataToChartExecute(Sender: TObject);
    procedure ActionAddImageExecute(Sender: TObject);
    procedure ActionAddInfraredDataExecute(Sender: TObject);
    procedure ActionAddMicroprobeDataExecute(Sender: TObject);
    procedure ActionAddPowderDataExecute(Sender: TObject);
    procedure ActionAddRamanChartExecute(Sender: TObject);
    procedure ActionAddSampleExecute(Sender: TObject);
    procedure ActionBroadScanWaveOnChangeExecute(Sender: TObject);
    procedure ActionChangeEquipmentExecute(Sender: TObject);
    procedure ActionClearBroadScanDataExecute(Sender: TObject);
    procedure ActionClearInfraredDataExecute(Sender: TObject);
    procedure ActionClearMicroprobeDataExecute(Sender: TObject);
    procedure ActionClearPowderDataExecute(Sender: TObject);
    procedure ActionClearRamanDataExecute(Sender: TObject);
    procedure ActionComboboxDigitoOnChangeExecute(Sender: TObject);
    procedure ActionFormEquipmentsExecute(Sender: TObject);
    procedure ActionListboxSampleOnClickExecute(Sender: TObject);
    procedure ActionMicrossondaVisualizarExecute(Sender: TObject);
    procedure ActionRamanDirecaoOnChangeExecute(Sender: TObject);
    procedure ActionRefreshListExecute(Sender: TObject);
    procedure ActionRemoveBlobDataExecute(Sender: TObject);
    procedure ActionRemoveChemistryImageExecute(Sender: TObject);
    procedure ActionRemoveSampleExecute(Sender: TObject);
    procedure ActionRemoveSampleImageExecute(Sender: TObject);
    procedure ActionSeBoradScanDataExecute(Sender: TObject);
    procedure ActionSeeInfraredDataExecute(Sender: TObject);
    procedure ActionSeeMicroprobeDataExecute(Sender: TObject);
    procedure ActionSeePowderDataExecute(Sender: TObject);
    procedure ActionSeeRamanDataExecute(Sender: TObject);
    procedure BitBtnAddMicroprobeDataClick(Sender: TObject);
    procedure BitBtnClearMicroprobeDataClick(Sender: TObject);
    procedure BitBtnEditMicroprobeDataClick(Sender: TObject);
    procedure ComboBoxDirecaoLaserChange(Sender: TObject);
    procedure ComboBoxVarreduraOndaChange(Sender: TObject);
    procedure EditChemistryEditingDone(Sender: TObject);
    procedure EditChemistryKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure EditMineralNameEditingDone(Sender: TObject);
    procedure EditMineralSampleEditingDone(Sender: TObject);
    procedure EditMineralSampleKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure EditSample_IdEditingDone(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure MemoAEditingDone(Sender: TObject);
    procedure MemoAKeyUp(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure MemoAlphaEditingDone(Sender: TObject);
    procedure MemoAlphaKeyUp(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure MemoAmostraDescricaoEditingDone(Sender: TObject);
    procedure MemoAmostraDescricaoKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure MemoBEditingDone(Sender: TObject);
    procedure MemoBetaEditingDone(Sender: TObject);
    procedure MemoBetaKeyUp(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure MemoBKeyUp(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure MemoCEditingDone(Sender: TObject);
    procedure MemoCKeyUp(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure MemoFonteEditingDone(Sender: TObject);
    procedure MemoFonteKeyUp(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure MemoGammaEditingDone(Sender: TObject);
    procedure MemoGammaKeyUp(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure MemoInfravermelhoResolucaoEditingDone(Sender: TObject);
    procedure MemoInfravermelhoResolucaoKeyUp(Sender: TObject;
      var Key: word; Shift: TShiftState);
    procedure MemoLocalidadeEditingDone(Sender: TObject);
    procedure MemoLocalidadeKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure MemoproprietarioEditingDone(Sender: TObject);
    procedure MemoproprietarioKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure MemoQuimicaDescricaoEditingDone(Sender: TObject);
    procedure MemoQuimicaDescricaoKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure MemoQuimicaMedidaEditingDone(Sender: TObject);
    procedure MemoQuimicaMedidaKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure MemoSituacaoEditingDone(Sender: TObject);
    procedure MemoSituacaoKeyUp(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure MenuItemAddClick(Sender: TObject);
    procedure MenuItemRemoveClick(Sender: TObject);
  private
    procedure Preenche_Amostras;
    procedure ComboboxesEquipment;
    { private declarations }
  public
    { public declarations }
  end;

const
  AdicionarAmostra: string = 'Adicionar Amostra';

var
  DatabaseSamples: TSQLiteDatabase;
  TableSamples: TSQLiteTable;

  Config: TIniFile;

  FormFichaAmostra: TFormFichaAmostra;
  Especie, Sample_id: string;

implementation

uses udatamodule, unitBlobFields;

{$R *.lfm}

{ TFormFichaAmostra }

procedure TFormFichaAmostra.FormCreate(Sender: TObject);
var
  Diretorio: string;
begin
  OpenDialog1.Filter := 'All Files | *.csv; *.txt; *.dat; *.*;';
  if FileExists(Dados.DatabaseSampleFileName) then
  begin
    DatabaseSamples := TSQLiteDatabase.Create(Dados.DatabaseSampleFileName);
    Preenche_Amostras;
    ComboboxesEquipment;
  end
  else
  begin
    ShowMessage('O banco de dados: "' + Dados.DatabaseSampleFileName +
      '" não é válido.');
    Dados.DatabaseSampleFileName := EmptyStr;
  end;

  if DirectoryExists(GetCurrentDir + '\Data') then
    Diretorio := GetCurrentDir + '\Data\config.ini'
  else
    Diretorio := GetCurrentDir + '\config.ini';
  Config := TIniFile.Create(Diretorio);
  {obs: instruções obsoletas, atualizar
  Especie:= Dados.TableSamples.FieldByName['especie'];
  Sample_id:= Dados.TableSamples.FieldByName['rruff_id'];
 // FormFichaAmostra.Caption:= Sample_id +'  -  '+ Especie;
  Dados.TableSamples:= Dados.DatabaseSamples.GetTable('SELECT * FROM rruff WHERE rruff_id="'+
    Sample_id+'" ;');
    if Dados.TableSamples.RowCount > 0 then
    begin
      if Dados.TableSamples.MoveFirst then
      begin
        EditMineralSample.Caption:=Dados.TableSamples.FieldByName['especie'];
        EditSample.Caption:=Dados.TableSamples.FieldByName['rruff_id'];
        EditChemistry.Caption:=Dados.TableSamples.FieldByName['quimica_ideal'];
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
      Sample_id+'" ORDER BY (1/(digito+1)) ;');
    if Dados.TableSamples.RowCount > 0 then
    begin
      if Dados.TableSamples.MoveFirst then
      begin
        MemoQuimicaSample.Text:=Dados.TableSamples.FieldByName['rruff_id'];
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
      Sample_id+'" ORDER BY (1/(digito+1)) ;');
    if Dados.TableSamples.RowCount > 0 then
    begin
      if Dados.TableSamples.MoveFirst then
      begin
        ComboboxDirecaoLaser.ItemIndex:=
          ComboboxDirecaoLaser.Items.Add(Dados.TableSamples.FieldByName['direcao']);
        MemoRamanSample.Text:= Dados.TableSamples.FieldByName['rruff_id'];
        ComboboxRamanDigito.ItemIndex:=
          ComboboxRamanDigito.Items.Add(Dados.TableSamples.FieldByName['digito']);
        MemoRamanDescricao.Text:= Dados.TableSamples.FieldByName['description'];
        MemoRamanPin_id.Text:= Dados.TableSamples.FieldByName['pin_id'];
        MemoRamanOrientacao.Text:=  Dados.TableSamples.FieldByName['orientacao'];
        MemoRamanEquipment.Text:= Dados.TableSamples.FieldByName['equipment'];
        ChartRaman.ClearSeries;
        ChartRaman.AddSeries(SelectBlobFieldToChartSeries('raman',
          'arquivo_raman', Dados.TableSamples.FieldByName['especie'],
            Dados.TableSamples.FieldByName['rruff_id'], Dados.TableSamples.FieldByName
              ['digito'], Dados.TableSamples.FieldByName['direcao']));
      end;
    end;

    Dados.TableSamples:= Dados.DatabaseSamples.GetTable('SELECT * FROM varredura WHERE rruff_id="'+
      Sample_id+'" ORDER BY (1/(digito+1)) ;');
    if Dados.TableSamples.RowCount > 0 then
    begin
      if Dados.TableSamples.MoveFirst then
      begin
        ComboboxVarreduraOnda.ItemIndex:= ComboboxVarreduraOnda.Items.Add(
          Dados.TableSamples.FieldByName['comprimento_onda']);
        MemoVarreduraSample.Text:= Dados.TableSamples.FieldByName['rruff_id'];
        ComboboxVarreduraDigito.ItemIndex:= ComboboxVarreduraDigito.Items.Add(
          Dados.TableSamples.FieldByName['digito']);
        MemoBroadScanEquipment.Text:=Dados.TableSamples.FieldByName['equipment'];
        MemoVarreduraDescricao.Text:= Dados.TableSamples.FieldByName['description'];
        ChartBroadScan.ClearSeries;
        ChartBroadScan.AddSeries(SelectBlobFieldToChartSeries('varredura',
          'arquivo_varredura', Dados.TableSamples.FieldByName['especie'], Dados.TableSamples.
            FieldByName['rruff_id'], Dados.TableSamples.FieldByName['digito'], Dados.
              TableSamples.FieldByName['comprimento_onda']));
      end;
    end;

    Dados.TableSamples:= Dados.DatabaseSamples.GetTable('SELECT * FROM infravermelho WHERE '+
      'rruff_id="'+Sample_id+'" ORDER BY (1/(digito+1));');
    if Dados.TableSamples.RowCount > 0 then
    begin
      if Dados.TableSamples.MoveFirst then
      begin
        MemoInfravermelhoSample.Text:= Dados.TableSamples.FieldByName['rruff_id'];
        ComboboxInfravermelhoDigito.ItemIndex:= ComboboxInfravermelhoDigito.
          Items.Add(Dados.TableSamples.FieldByName['digito']);
        MemoInfraredEquipment.Text:= Dados.TableSamples.FieldByName
            ['equipment'];
        MemoInfravermelhoResolucao.Text:= Dados.TableSamples.FieldByName['resolucao'];
        MemoInfravermelhoDescricao.Text:= Dados.TableSamples.FieldByName['description'];
        ChartInfravermelho.ClearSeries;
        ChartInfravermelho.AddSeries(SelectBlobFieldToChartSeries(
          'infravermelho', 'arquivo_infravermelho', Dados.TableSamples.FieldByName
            ['especie'], Dados.TableSamples.FieldByName['rruff_id'], Dados.TableSamples.
              FieldByName['digito'], EmptyStr));
      end;
    end;

    Dados.TableSamples:= Dados.DatabaseSamples.GetTable('SELECT * FROM difracao WHERE rruff_id="'+
      Sample_id+'" ORDER BY (1/(digito+1));');
    if Dados.TableSamples.RowCount > 0 then
    begin
      if Dados.TableSamples.MoveFirst then
      begin
        MemoDifracaoSample.Text:= Dados.TableSamples.FieldByName['rruff_id'];
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
    end;

    Dados.TableSamples:=Dados.DatabaseSamples.GetTable('SELECT DISTINCT digito FROM '+
      'chemistry WHERE rruff_id="'+Sample_id+
        '" ORDER BY (1/(digito+1)) ;');
    if Dados.TableSamples.MoveFirst then
    While not Dados.TableSamples.EOF do
    begin
      if ComboboxQuimicaDigito.Items.IndexOf(Dados.TableSamples.FieldByName['digito'])
        < 0 then
      ComboboxQuimicaDigito.Items.Append(Dados.TableSamples.FieldByName['digito']);
      Dados.TableSamples.Next;
    end;
    //ComboboxQuimicaDigito.Items.Append(AdicionarAmostra);

    Dados.TableSamples:=Dados.DatabaseSamples.GetTable('SELECT DISTINCT digito FROM '+
      'raman WHERE rruff_id="'+Sample_id+
        '" ORDER BY (1/(digito+1)) ;');
    if Dados.TableSamples.MoveFirst then
    While not Dados.TableSamples.EOF do
    begin
      if ComboboxRamanDigito.Items.IndexOf(Dados.TableSamples.FieldByName['digito'])
        < 0 then
      ComboboxRamanDigito.Items.Append(Dados.TableSamples.FieldByName['digito']);
      Dados.TableSamples.Next;
    end;
    //ComboboxRamanDigito.Items.Append(AdicionarAmostra);

    Dados.TableSamples:=Dados.DatabaseSamples.GetTable('SELECT DISTINCT digito FROM '+
      'varredura WHERE rruff_id="'+Sample_id+
        '" ORDER BY (1/(digito+1)) ;');
    if Dados.TableSamples.MoveFirst then
    While not Dados.TableSamples.EOF do
    begin
      if ComboboxVarreduraDigito.Items.IndexOf(Dados.TableSamples.FieldByName['digito'])
        < 0 then
      ComboboxVarreduraDigito.Items.Append(Dados.TableSamples.FieldByName['digito']);
      Dados.TableSamples.Next;
    end;
    //ComboboxVarreduraDigito.Items.Append(AdicionarAmostra);

    Dados.TableSamples:=Dados.DatabaseSamples.GetTable('SELECT DISTINCT digito FROM '+
      'infravermelho WHERE rruff_id="'+Sample_id+
        '" ORDER BY (1/(digito+1)) ;');
    if Dados.TableSamples.MoveFirst then
    While not Dados.TableSamples.EOF do
    begin
      if ComboboxInfravermelhoDigito.Items.IndexOf(Dados.TableSamples.FieldByName
        ['digito']) < 0 then
      ComboboxInfravermelhoDigito.Items.Append(Dados.TableSamples.FieldByName
        ['digito']);
      Dados.TableSamples.Next;
    end;
    //ComboboxInfravermelhoDigito.Items.Append(AdicionarAmostra);

    Dados.TableSamples:=Dados.DatabaseSamples.GetTable('SELECT DISTINCT digito FROM '+
      'difracao WHERE rruff_id="'+Sample_id+
        '" ORDER BY (1/(digito+1));');
    if Dados.TableSamples.MoveFirst then
    While not Dados.TableSamples.EOF do
    begin
      if ComboboxDifracaoDigito.Items.IndexOf(Dados.TableSamples.FieldByName['digito'])
        < 0 then
      ComboboxDifracaoDigito.Items.Append(Dados.TableSamples.FieldByName['digito']);
      Dados.TableSamples.Next;
    end;
    //ComboboxDifracaoDigito.Items.Append(AdicionarAmostra);

    Dados.TableSamples:=Dados.DatabaseSamples.GetTable('SELECT DISTINCT direcao FROM raman WHERE '+
      'rruff_id="'+Sample_id+'" ;');
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
      'varredura WHERE rruff_id="'+Sample_id+'" ;');
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
         }
end;

procedure TFormFichaAmostra.MemoAEditingDone(Sender: TObject);
begin
  TableSamples := DatabaseSamples.GetTable('UPDATE difracao SET ' +
    ' a = "' + MemoA.Text + '" WHERE rruff_id = "' + EditSample.Text + '" ;');
end;

procedure TFormFichaAmostra.MemoAKeyUp(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin
  TableSamples := DatabaseSamples.GetTable('UPDATE difracao SET ' +
    ' a = "' + MemoA.Text + '" WHERE rruff_id = "' + EditSample.Text + '" ;');
end;

procedure TFormFichaAmostra.MemoAlphaEditingDone(Sender: TObject);
begin
  TableSamples := DatabaseSamples.GetTable('UPDATE difracao SET ' +
    ' alpha = "' + MemoAlpha.Text + '" WHERE rruff_id = "' + EditSample.Text + '" ;');
end;

procedure TFormFichaAmostra.MemoAlphaKeyUp(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin
  TableSamples := DatabaseSamples.GetTable('UPDATE difracao SET ' +
    ' alpha = "' + MemoAlpha.Text + '" WHERE rruff_id = "' + EditSample.Text + '" ;');
end;

procedure TFormFichaAmostra.MemoAmostraDescricaoEditingDone(Sender: TObject);
begin
  TableSamples := DatabaseSamples.GetTable('UPDATE rruff SET ' +
    ' description = "' + MemoAmostraDescricao.Text + '" WHERE rruff_id = "' +
    EditSample.Text + '" ;');
end;

procedure TFormFichaAmostra.MemoAmostraDescricaoKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  TableSamples := DatabaseSamples.GetTable('UPDATE rruff SET ' +
    ' description = "' + MemoAmostraDescricao.Text + '" WHERE rruff_id = "' +
    EditSample.Text + '" ;');
end;

procedure TFormFichaAmostra.MemoBEditingDone(Sender: TObject);
begin
  TableSamples := DatabaseSamples.GetTable('UPDATE difracao SET ' +
    ' b = "' + MemoB.Text + '" WHERE rruff_id = "' + EditSample.Text + '" ;');
end;

procedure TFormFichaAmostra.MemoBetaEditingDone(Sender: TObject);
begin
  TableSamples := DatabaseSamples.GetTable('UPDATE difracao SET ' +
    ' beta = "' + MemoBeta.Text + '" WHERE rruff_id = "' + EditSample.Text + '" ;');
end;

procedure TFormFichaAmostra.MemoBetaKeyUp(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin
  TableSamples := DatabaseSamples.GetTable('UPDATE difracao SET ' +
    ' beta = "' + MemoBeta.Text + '" WHERE rruff_id = "' + EditSample.Text + '" ;');
end;

procedure TFormFichaAmostra.MemoBKeyUp(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin
  TableSamples := DatabaseSamples.GetTable('UPDATE difracao SET ' +
    ' b = "' + MemoB.Text + '" WHERE rruff_id = "' + EditSample.Text + '" ;');
end;

procedure TFormFichaAmostra.MemoCEditingDone(Sender: TObject);
begin
  TableSamples := DatabaseSamples.GetTable('UPDATE difracao SET ' +
    ' c = "' + MemoC.Text + '" WHERE rruff_id = "' + EditSample.Text + '" ;');
end;

procedure TFormFichaAmostra.MemoCKeyUp(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin
  TableSamples := DatabaseSamples.GetTable('UPDATE difracao SET ' +
    ' c = "' + MemoC.Text + '" WHERE rruff_id = "' + EditSample.Text + '" ;');
end;

procedure TFormFichaAmostra.MemoFonteEditingDone(Sender: TObject);
begin
  TableSamples := DatabaseSamples.GetTable('UPDATE rruff SET ' +
    ' fonte = "' + MemoFonte.Text + '" WHERE rruff_id = "' + EditSample.Text + '" ;');
end;

procedure TFormFichaAmostra.MemoFonteKeyUp(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin
  TableSamples := DatabaseSamples.GetTable('UPDATE rruff SET ' +
    ' fonte = "' + MemoFonte.Text + '" WHERE rruff_id = "' + EditSample.Text + '" ;');
end;

procedure TFormFichaAmostra.MemoGammaEditingDone(Sender: TObject);
begin
  TableSamples := DatabaseSamples.GetTable('UPDATE difracao SET ' +
    ' gamma = "' + MemoGamma.Text + '" WHERE rruff_id = "' + EditSample.Text + '" ;');
end;

procedure TFormFichaAmostra.MemoGammaKeyUp(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin
  TableSamples := DatabaseSamples.GetTable('UPDATE difracao SET ' +
    ' gamma = "' + MemoGamma.Text + '" WHERE rruff_id = "' + EditSample.Text + '" ;');
end;

procedure TFormFichaAmostra.MemoInfravermelhoResolucaoEditingDone(Sender: TObject);
begin
  TableSamples := DatabaseSamples.GetTable('UPDATE infravermelho SET ' +
    ' resolucao = "' + MemoInfravermelhoResolucao.Text + '" WHERE rruff_id = "' +
    EditSample.Text + '" ;');
end;

procedure TFormFichaAmostra.MemoInfravermelhoResolucaoKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  TableSamples := DatabaseSamples.GetTable('UPDATE infravermelho SET ' +
    ' resolucao = "' + MemoInfravermelhoResolucao.Text + '" WHERE rruff_id = "' +
    EditSample.Text + '" ;');
end;

procedure TFormFichaAmostra.MemoLocalidadeEditingDone(Sender: TObject);
begin
  TableSamples := DatabaseSamples.GetTable('UPDATE rruff SET ' +
    ' localidade = "' + MemoLocalidade.Text + '" WHERE rruff_id = "' +
    EditSample.Text + '" ;');
end;

procedure TFormFichaAmostra.MemoLocalidadeKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  TableSamples := DatabaseSamples.GetTable('UPDATE rruff SET ' +
    ' localidade = "' + MemoLocalidade.Text + '" WHERE rruff_id = "' +
    EditSample.Text + '" ;');
end;

procedure TFormFichaAmostra.MemoproprietarioEditingDone(Sender: TObject);
begin
  TableSamples := DatabaseSamples.GetTable('UPDATE rruff SET ' +
    ' proprietario = "' + MemoProprietario.Text + '" WHERE rruff_id = "' +
    EditSample.Text + '" ;');
end;

procedure TFormFichaAmostra.MemoproprietarioKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  TableSamples := DatabaseSamples.GetTable('UPDATE rruff SET ' +
    ' proprietario = "' + MemoProprietario.Text + '" WHERE rruff_id = "' +
    EditSample.Text + '" ;');
end;

procedure TFormFichaAmostra.MemoQuimicaDescricaoEditingDone(Sender: TObject);
begin
  TableSamples := DatabaseSamples.GetTable('UPDATE chemistry SET ' +
    ' description = "' + MemoQuimicaDescricao.Text + '" WHERE rruff_id = "' +
    EditSample.Text + '" ;');
end;

procedure TFormFichaAmostra.MemoQuimicaDescricaoKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  TableSamples := DatabaseSamples.GetTable('UPDATE chemistry SET ' +
    ' description = "' + MemoQuimicaDescricao.Text + '" WHERE rruff_id = "' +
    EditSample.Text + '" ;');
end;

procedure TFormFichaAmostra.MemoQuimicaMedidaEditingDone(Sender: TObject);
begin
  TableSamples := DatabaseSamples.GetTable('UPDATE chemistry SET ' +
    ' quimica_medida = "' + MemoQuimicaMedida.Text + '" WHERE rruff_id = "' +
    EditSample.Text + '" ;');
end;

procedure TFormFichaAmostra.MemoQuimicaMedidaKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  TableSamples := DatabaseSamples.GetTable('UPDATE chemistry SET ' +
    ' quimica_medida = "' + MemoQuimicaMedida.Text + '" WHERE rruff_id = "' +
    EditSample.Text + '" ;');
end;

procedure TFormFichaAmostra.MemoSituacaoEditingDone(Sender: TObject);
begin
  TableSamples := DatabaseSamples.GetTable('UPDATE rruff SET ' +
    ' situacao = "' + MemoSituacao.Text + '" WHERE rruff_id = "' +
    EditSample.Text + '" ;');
end;

procedure TFormFichaAmostra.MemoSituacaoKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  TableSamples := DatabaseSamples.GetTable('UPDATE rruff SET ' +
    ' situacao = "' + MemoSituacao.Text + '" WHERE rruff_id = "' +
    EditSample.Text + '" ;');
end;

procedure TFormFichaAmostra.MenuItemAddClick(Sender: TObject);
var Digito:String;
begin
  if EditSample.Text <> EmptyStr then
  begin
    case PageControlSample.TabIndex of
      0:
      begin
        OpenPictureDialog1.FileName := EmptyStr;
        if OpenPictureDialog1.Execute then
        begin
          if OpenPictureDialog1.FileName <> EmptyStr then
          begin
            AddBlobFieldSample(Dados.DatabaseSampleFileName,
              OpenPictureDialog1.FileName, 'rruff',
              'imagem_amostra', EditSample.Text, EmptyStr, EmptyStr);
            self.ImageAmostra.Picture.Graphic :=
              SelectBlobFieldToJPEGImage('rruff', 'imagem_amostra',
              EmptyStr, EditSample.Text, EmptyStr, EmptyStr);
          end;
        end;
      end;
      1:
      begin
        OpenPictureDialog1.FileName := EmptyStr;
        if OpenPictureDialog1.Execute then
        begin
          if OpenPictureDialog1.FileName <> EmptyStr then
          begin
            Digito := Trim(ComboboxQuimicaDigito.Text);
            if Digito = EmptyStr then
              Digito := '0';
            TableSamples := DatabaseSamples.GetTable('SELECT rruff_id FROM ' +
              'chemistry WHERE rruff_id="' + EditSample.Caption + '" ;');
            if TableSamples.RowCount < 1 then
              DatabaseSamples.ExecSQL(
                'INSERT INTO chemistry (rruff_id, especie, digito) VALUES ' +
                '("' + EditSample.Caption + '","' + EditMineralSample.Caption +
                '","' + Digito + '") ; ');
            AddBlobFieldSample(Dados.DatabaseSampleFileName,
              OpenDialog1.FileName, 'chemistry',
              'image', EditSample.Text, Digito, EmptyStr);
            self.ImageQuimica.Picture.Graphic :=
              SelectBlobFieldToJPEGImage('chemistry', 'image', EmptyStr,
              EditSample.Text, Digito, EmptyStr);
          end;
        end;
      end;
    end;
  end
  else
    ShowMessage('Não há amostra selecionada.');
end;

procedure TFormFichaAmostra.MenuItemRemoveClick(Sender: TObject);
begin
  if EditSample.Text <> EmptyStr then
  begin
    case PageControlSample.TabIndex of
      0:
      begin
        ClearBlobField('rruff', 'imagem_amostra', EmptyStr,
          EditSample.Text, EmptyStr, EmptyStr);
        ImageAmostra.Picture.Clear;
      end;
      1:
      begin
        ClearBlobField('chemistry', 'image', EmptyStr,
          EditSample.Text, ComboboxQuimicaDigito.Text, EmptyStr);
        ImageQuimica.Picture.Clear;
      end;
    end;
  end
  else
    ShowMessage('Não há amostra selecionada.');
end;

procedure TFormFichaAmostra.Preenche_Amostras;
begin
  ListboxSample_id.Clear;
  ProgressBar1.Position := 0;
  ProgressBar1.Min := 0;
  ProgressBar1.Max := 6;

  if Trim(EditMineralName.Text) = EmptyStr then
  begin
    if Trim(EditSample_id.Text) = EmptyStr then
    begin
      TableSamples := DatabaseSamples.GetTable('SELECT DISTINCT rruff_id FROM rruff ' +
        '  ;');
    end
    else
      TableSamples := DatabaseSamples.GetTable('SELECT DISTINCT rruff_id FROM rruff ' +
        ' WHERE rruff_id = "' + EditSample_id.Text + '" ;');
  end
  else
  begin
    if Trim(EditSample_id.Text) = EmptyStr then
    begin
      TableSamples := DatabaseSamples.GetTable('SELECT DISTINCT rruff_id FROM rruff ' +
        'WHERE especie="' + EditMineralName.Text + '"  ;');
    end
    else
      TableSamples := DatabaseSamples.GetTable('SELECT DISTINCT rruff_id FROM rruff ' +
        'WHERE rruff_id="' + EditSample_id.Text + '" AND especie="' +
        EditMineralName.Text + '"  ;');
  end;
  if TableSamples.MoveFirst then
  begin
    while not TableSamples.EOF do
    begin
      ListboxSample_id.Items.Append(TableSamples.FieldByName['rruff_id']);
      TableSamples.Next;
    end;
  end;
  ProgressBar1.StepIt;

  if Trim(EditMineralName.Text) = EmptyStr then
  begin
    if Trim(EditSample_id.Text) = EmptyStr then
    begin
      TableSamples := DatabaseSamples.GetTable(
        'SELECT DISTINCT rruff_id FROM chemistry  ;');
    end
    else
      TableSamples := DatabaseSamples.GetTable(
        'SELECT DISTINCT rruff_id FROM chemistry WHERE rruff_id="' +
        EditSample_id.Text + '" ;');
  end
  else
  begin
    if Trim(EditSample_id.Text) = EmptyStr then
    begin
      TableSamples := DatabaseSamples.GetTable(
        'SELECT DISTINCT rruff_id FROM chemistry WHERE especie="' +
        EditMineralName.Text + '" ;');
    end
    else
      TableSamples := DatabaseSamples.GetTable(
        'SELECT DISTINCT rruff_id FROM chemistry WHERE rruff_id="' +
        EditSample_id.Text + '" AND especie ="' + EditMineralName.Text + '" ;');
  end;
  if TableSamples.MoveFirst then
  begin
    while not TableSamples.EOF do
    begin
      if ListboxSample_id.Items.IndexOf(
        TableSamples.FieldByName['rruff_id']) < 0 then
        ListboxSample_id.Items.Append(TableSamples.FieldByName['rruff_id']);
      TableSamples.Next;
    end;
  end;
  ProgressBar1.StepIt;

  if Trim(EditMineralName.Text) = EmptyStr then
  begin
    if Trim(EditSample_id.Text) = EmptyStr then
    begin
      TableSamples := DatabaseSamples.GetTable(
        'SELECT DISTINCT rruff_id FROM raman ' + '  ;');
    end
    else
      TableSamples := DatabaseSamples.GetTable('SELECT DISTINCT rruff_id FROM raman ' +
        ' WHERE rruff_id="' + EditSAmple_id.Text + '" ;');
  end
  else
  begin
    if Trim(EditSample_id.Text) = EmptyStr then
    begin
      TableSamples := DatabaseSamples.GetTable('SELECT DISTINCT rruff_id FROM raman ' +
        ' WHERE especie="' + EditMineralName.Text + '" ;');
    end
    else
      TableSamples := DatabaseSamples.GetTable('SELECT DISTINCT rruff_id FROM raman ' +
        ' WHERE rruff_id="' + EditSample_id.Text + '" AND especie="' +
        EditMineralName.Text + '" ;');
  end;
  if TableSamples.MoveFirst then
  begin
    while not TableSamples.EOF do
    begin
      if ListboxSample_id.Items.IndexOf(
        TableSamples.FieldByName['rruff_id']) < 0 then
        ListboxSample_id.Items.Append(TableSamples.FieldByName['rruff_id']);
      TableSamples.Next;
    end;
  end;
  ProgressBar1.StepIt;

  if Trim(EditMineralName.Text) = EmptyStr then
  begin
    if Trim(EditSample_id.Text) = EmptyStr then
    begin
      TableSamples := DatabaseSamples.GetTable(
        'SELECT DISTINCT rruff_id FROM varredura' + '  ;');
    end
    else
      TableSamples := DatabaseSamples.GetTable(
        'SELECT DISTINCT rruff_id FROM varredura' + ' WHERE rruff_id="' +
        EditSample_id.Text + '" ;');
  end
  else
  begin
    if Trim(EditSample_id.Text) = EmptyStr then
    begin
      TableSamples := DatabaseSamples.GetTable(
        'SELECT DISTINCT rruff_id FROM varredura' + ' WHERE especie="' +
        EditMineralName.Text + '" ;');
    end
    else
      TableSamples := DatabaseSamples.GetTable(
        'SELECT DISTINCT rruff_id FROM varredura' + ' WHERE rruff_id="' +
        EditSample_id.Text + '" AND especie="' + EditMineralName.Text + '" ;');
  end;
  if TableSamples.MoveFirst then
  begin
    while not TableSamples.EOF do
    begin
      if ListboxSample_id.Items.IndexOf(
        TableSamples.FieldByName['rruff_id']) < 0 then
        ListboxSample_id.Items.Append(TableSamples.FieldByName['rruff_id']);
      TableSamples.Next;
    end;
  end;
  ProgressBar1.StepIt;

  if Trim(EditMineralName.Text) = EmptyStr then
  begin
    if Trim(EditSample_id.Text) = EmptyStr then
    begin
      TableSamples := DatabaseSamples.GetTable('SELECT DISTINCT rruff_id FROM ' +
        'infravermelho ;');
    end
    else
      TableSamples := DatabaseSamples.GetTable('SELECT DISTINCT rruff_id FROM ' +
        'infravermelho WHERE rruff_id="' + EditSample_id.Text + '" ;');
  end
  else
  begin
    if Trim(EditSample_id.Text) = EmptyStr then
    begin
      TableSamples := DatabaseSamples.GetTable('SELECT DISTINCT rruff_id FROM ' +
        'infravermelho WHERE especie="' + EditMineralName.Text + '" ;');
    end
    else
      TableSamples := DatabaseSamples.GetTable('SELECT DISTINCT rruff_id FROM ' +
        'infravermelho WHERE rruff_id="' + EditSample_id.Text +
        '" AND especie="' + EditMineralName.Text + '" ;');
  end;
  if TableSamples.MoveFirst then
  begin
    while not TableSamples.EOF do
    begin
      if ListboxSample_id.Items.IndexOf(
        TableSamples.FieldByName['rruff_id']) < 0 then
        ListboxSample_id.Items.Append(TableSamples.FieldByName['rruff_id']);
      TableSamples.Next;
    end;
  end;
  ProgressBar1.StepIt;

  if Trim(EditMineralName.Text) = EmptyStr then
  begin
    if Trim(EditSample_id.Text) = EmptyStr then
    begin
      TableSamples := DatabaseSamples.GetTable('SELECT DISTINCT rruff_id FROM difracao' +
        ' ;');
    end
    else
      TableSamples := DatabaseSamples.GetTable('SELECT DISTINCT rruff_id FROM difracao' +
        ' WHERE rruff_id = "' + EditSample_id.Text + '" ;');
  end
  else
  begin
    if Trim(EditSample_id.Text) = EmptyStr then
    begin
      TableSamples := DatabaseSamples.GetTable('SELECT DISTINCT rruff_id FROM difracao' +
        ' WHERE especie="' + EditMineralName.Text + '" ;');
    end
    else
      TableSamples := DatabaseSamples.GetTable('SELECT DISTINCT rruff_id FROM difracao' +
        ' WHERE rruff_id = "' + EditSample_id.Text + '" AND especie="' +
        EditMineralName.Text + '";');
  end;

  if TableSamples.MoveFirst then
  begin
    while not TableSamples.EOF do
    begin
      if ListboxSample_id.Items.IndexOf(
        TableSamples.FieldByName['rruff_id']) < 0 then
        ListboxSample_id.Items.Append(TableSamples.FieldByName['rruff_id']);
      TableSamples.Next;
    end;
  end;
  ProgressBar1.Position := 0;
end;

procedure TFormFichaAmostra.ComboboxesEquipment;
begin
  ComboboxRamanEquipment.Items.Clear;
  ComboBoxBroadScanEquipment.Items.Clear;
  ComboBoxInfraredEquipment.Items.Clear;
  TableSamples := DatabaseSamples.GetTable('SELECT nome FROM instrumentos ;');
  if TableSamples.MoveFirst then
  begin
    while not TableSamples.EOF do
    begin
      ComboBoxRamanEquipment.Items.Append(TableSamples.FieldByName['nome']);
      TableSamples.Next;
    end;
  end;
  ComboBoxRamanEquipment.Items.Append(EmptyStr);
  ComboBoxBroadScanEquipment.Items := ComboBoxRamanEquipment.Items;
  ComboBoxInfraredEquipment.Items := ComboBoxRamanEquipment.Items;
end;

procedure TFormFichaAmostra.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  Config.Free;
end;

procedure TFormFichaAmostra.ComboBoxDirecaoLaserChange(Sender: TObject);
begin
  ChartRaman.ClearSeries;
  ChartRaman.AddSeries(SelectBlobFieldToChartSeries('raman', 'arquivo_raman',
    EmptyStr, EditSample.Caption, ComboboxRamanDigito.Text,
    ComboboxDirecaoLaser.Text));
end;

procedure TFormFichaAmostra.ActionComboboxDigitoOnChangeExecute(Sender: TObject);
begin
  case PageControlSample.TabIndex of
    1:
    begin
      self.ImageQuimica.Picture.Graphic :=
        SelectBlobFieldToJPEGImage('chemistry', 'microprobe_file',
        EmptyStr, EditSample.Text, ComboboxQuimicaDigito.Text, EmptyStr);
    end;
    2:
    begin
      if ComboboxRamanDigito.Text = '0' then
      begin
        ComboboxDirecaoLaser.Items.Clear;
        ComboboxDirecaoLaser.ItemIndex :=
          ComboboxDirecaoLaser.Items.Add(Onda514);
        ComboboxDirecaoLaser.Items.Append(Onda532);
        ComboboxDirecaoLaser.Items.Append(Onda580);
        ComboboxDirecaoLaser.Items.Append(Onda732);
        ComboboxDirecaoLaser.Items.Append(Onda780);
        //ComboboxDirecaoLaser.ItemIndex:= ComboboxDirecaoLaser.Items.Add(TodosOsDados);
      end
      else
      begin
        ComboboxDirecaoLaser.Items.Clear;
        ComboboxDirecaoLaser.ItemIndex :=
          ComboboxDirecaoLaser.Items.Add(Angulo0);
        ComboboxDirecaoLaser.Items.Append(Angulo45);
        ComboboxDirecaoLaser.Items.Append(Angulo90);
        ComboboxDirecaoLaser.Items.Append('Depolarizado');
      end;
      ChartRaman.ClearSeries;
      ChartRaman.AddSeries(SelectBlobFieldToChartSeries('raman',
        'arquivo_raman', EmptyStr, EditSample.Text, ComboboxRamanDigito.Text,
        ComboboxDirecaoLaser.Text));
    end;
    3:
    begin
      ChartBroadScan.ClearSeries;
      ChartBroadScan.AddSeries(SelectBlobFieldToChartSeries('varredura',
        'arquivo_varredura', EmptyStr, EditSample.Text,
        ComboboxVarreduraDigito.Text, ComboboxVarreduraOnda.Text));
    end;
    4:
    begin
      ChartInfravermelho.ClearSeries;
      ChartInfravermelho.AddSeries(SelectBlobFieldToChartSeries(
        'infravermelho', 'arquivo_infravermelho', EmptyStr,
        EditSample.Text, ComboboxInfravermelhoDigito.Text, EmptyStr));
    end;
    5:
    begin
      ChartDifracao.ClearSeries;
      ChartDifracao.AddSeries(SelectBlobFieldToChartSeries('difracao',
        'arquivo_difracao', EmptyStr, EditSample.Text,
        ComboboxDifracaoDigito.Text, EmptyStr));
    end;
  end;
end;

procedure TFormFichaAmostra.ActionFormEquipmentsExecute(Sender: TObject);
begin
  if Dados.DatabaseSampleFileName <> EmptyStr then
  begin
    if FileExists(Dados.DatabaseSampleFileName) then
    begin
      if Dados.ChooseDatabase('amostra', Dados.DatabaseSampleFileName) then
         FormInstrumentos.Show
      else
        ShowMessage('O banco de dados não é valido.');
    end
    else
      ShowMessage('O banco de dados não é valido.');
  end
  else
    ShowMessage('Não há banco de dados selecionado.');
end;

procedure TFormFichaAmostra.ActionAddDataToChartExecute(Sender: TObject);
begin
  if EditSample.Text <> EmptyStr then
  begin
    OpenDialog1.FileName := EmptyStr;
    if OpenDialog1.Execute then
    begin
      if OpenDialog1.FileName <> EmptyStr then
      begin
        case PageControlSample.TabIndex of
          2:
          begin
            if ComboboxDirecaoLaser.Text = TodosOsDados then
              ShowMessage('Escolha o ângulo de polarização do laser.')
            else
            begin
              AddBlobFieldSample(Dados.DatabaseSampleFileName,
                OpenDialog1.Filename, 'raman',
                'arquivo_raman', EditSample.Caption, ComboboxRamanDigito.Text,
                ComboboxDirecaoLaser.Text);
              ChartRaman.AddSeries(SelectBlobFieldToChartSeries('raman',
                'arquivo_raman', EmptyStr, EditSample.Text,
                ComboboxRamanDigito.Text, ComboboxDirecaoLaser.Text));
            end;
          end;
          3:
          begin
            AddBlobFieldSample(Dados.DatabaseSampleFileName,
              OpenDialog1.FileName, 'varredura',
              'arquivo_varredura', EditSample.Text, ComboboxVarreduraDigito.Text,
              ComboboxVarreduraOnda.Text);
            ChartBroadScan.AddSeries(SelectBlobFieldToChartSeries(
              'varredura', 'arquivo_varredura', EmptyStr,
              EditSample.Text, ComboboxVarreduraDigito.Text,
              ComboboxVarreduraOnda.Text));
          end;
          4:
          begin
            AddBlobFieldSample(Dados.DatabaseSampleFileName,
              OpenDialog1.FileName, 'infravermelho',
              'arquivo_infravermelho', EditSample.Text,
              ComboboxInfravermelhoDigito.Text, EmptyStr);
            ChartInfravermelho.AddSeries(SelectBlobFieldToChartSeries(
              'infravermelho', 'arquivo_infravermelho', EmptyStr,
              EditSample.Text, ComboboxInfravermelhoDigito.Text, EmptyStr));
          end;
          5:
          begin
            AddBlobFieldSample(Dados.DatabaseSampleFileName,
              OpenDialog1.FileName, 'difracao',
              'arquivo_difracao', EditSample.Text, ComboboxDifracaoDigito.Text,
              EmptyStr);
            ChartDifracao.AddSeries(SelectBlobFieldToChartSeries(
              'difracao', 'arquivo_difracao', EmptyStr, EditSample.Text,
              ComboboxDifracaoDigito.Text, EmptyStr));
          end;
        end;
      end;
    end;
  end
  else
    ShowMessage('Escolha uma amostra para adicionar dados.');
end;

procedure TFormFichaAmostra.ActionAddChemistryImageExecute(Sender: TObject);
var
  Digito: string;
begin
  if (Trim(EditSample.Text) <> EmptyStr) then
  begin
    OpenPictureDialog1.FileName := EmptyStr;
    if OpenPictureDialog1.Execute then
    begin
      if OpenPictureDialog1.FileName <> EmptyStr then
      begin
        Digito := Trim(ComboboxQuimicaDigito.Text);
        if Digito = EmptyStr then
          Digito := '0';
        TableSamples := DatabaseSamples.GetTable('SELECT rruff_id FROM ' +
          'chemistry WHERE rruff_id="' + EditSample.Caption + '" ;');
        if TableSamples.RowCount < 1 then
          DatabaseSamples.ExecSQL(
            'INSERT INTO chemistry (rruff_id, especie, digito) VALUES ' +
            '("' + EditSample.Caption + '","' + EditMineralSample.Caption +
            '","' + Digito + '") ; ');
        AddBlobFieldSample(Dados.DatabaseSampleFileName,
          OpenDialog1.FileName, 'chemistry',
          'image', EditSample.Text, Digito, EmptyStr);
        self.ImageQuimica.Picture.Graphic :=
          SelectBlobFieldToJPEGImage('chemistry', 'image', EmptyStr,
          EditSample.Text, Digito, EmptyStr);
      end;
    end;
  end
  else
    ShowMessage('Escolha uma amostra para adicionar uma imagem.');
end;

procedure TFormFichaAmostra.ActionAddBroadScanDataExecute(Sender: TObject);
begin
  if (Trim(EditSample.Text) <> EmptyStr) then
  begin
    OpenDialog1.FileName := EmptyStr;
    if OpenDialog1.Execute then
    begin
      if OpenDialog1.FileName <> EmptyStr then
      begin
        AddBlobFieldSample(Dados.DatabaseSampleFileName,
          OpenDialog1.FileName, 'varredura',
          'arquivo_varredura', EditSample.Text, ComboboxVarreduraDigito.Text,
          ComboboxVarreduraOnda.Text);
        ChartBroadScan.AddSeries(SelectBlobFieldToChartSeries(
          'varredura', 'arquivo_varredura', EmptyStr, EditSample.Text,
          ComboboxVarreduraDigito.Text, ComboboxVarreduraOnda.Text));
      end;
    end;
  end
  else
    ShowMessage('Escolha uma amostra para adicionar dados.');
end;

procedure TFormFichaAmostra.ActionAddImageExecute(Sender: TObject);
begin
  if (Trim(EditSample.Text) <> EmptyStr) then
  begin
    OpenPictureDialog1.FileName := EmptyStr;
    if OpenPictureDialog1.Execute then
    begin
      if OpenPictureDialog1.FileName <> EmptyStr then
      begin
        AddBlobFieldSample(Dados.DatabaseSampleFileName,
          OpenPictureDialog1.FileName, 'rruff',
          'imagem_amostra', EditSample.Text, EmptyStr, EmptyStr);
        self.ImageAmostra.Picture.Graphic :=
          SelectBlobFieldToJPEGImage('rruff', 'imagem_amostra',
          EmptyStr, EditSample.Text, EmptyStr, EmptyStr);
      end;
    end;
  end
  else
    ShowMessage('Escolha uma amostra para adicionar uma imagem.');
end;

procedure TFormFichaAmostra.ActionAddInfraredDataExecute(Sender: TObject);
begin
  if (Trim(EditSample.Text) <> EmptyStr) then
  begin
    OpenDialog1.FileName := EmptyStr;
    if OpenDialog1.Execute then
    begin
      if OpenDialog1.FileName <> EmptyStr then
      begin

        AddBlobFieldSample(Dados.DatabaseSampleFileName,
          OpenDialog1.FileName, 'infravermelho',
          'arquivo_infravermelho', EditSample.Text,
          ComboboxInfravermelhoDigito.Text, EmptyStr);
        ChartInfravermelho.AddSeries(SelectBlobFieldToChartSeries(
          'infravermelho', 'arquivo_infravermelho', EmptyStr,
          EditSample.Text, ComboboxInfravermelhoDigito.Text, EmptyStr));
      end;
    end;
  end
  else
    ShowMessage('Escolha uma amostra para adicionar dados.');
end;

procedure TFormFichaAmostra.ActionAddMicroprobeDataExecute(Sender: TObject);
begin
  if (Trim(EditSample.Text) <> EmptyStr) then
  begin
    OpenDialog1.FileName := EmptyStr;
  if OpenDialog1.Execute then
    if OpenDialog1.FileName <> EmptyStr then
    begin
      CSVFileToBlobField(OpenDialog1.FileName, 'chemistry', 'microprobe_file',
        EmptyStr, EditSample.Text, Trim(ComboboxQuimicaDigito.Text), EmptyStr);
      FormPlanilha.ArquivoMicrossonda(EmptyStr, EditSample.Text,
        Trim(ComboboxQuimicaDigito.Text));
    end;
  end
  else
    ShowMessage('Escolha uma amostra para adicionar dados.');
end;

procedure TFormFichaAmostra.ActionAddPowderDataExecute(Sender: TObject);
begin
  if (Trim(EditSample.Text) <> EmptyStr ) then
  begin
    OpenDialog1.FileName := EmptyStr;
    if OpenDialog1.Execute then
    begin
      if OpenDialog1.FileName <> EmptyStr then
      begin
        AddBlobFieldSample(Dados.DatabaseSampleFileName,
          OpenDialog1.FileName, 'difracao',
          'arquivo_difracao', EditSample.Text, ComboboxDifracaoDigito.Text,
          EmptyStr);
        ChartDifracao.AddSeries(SelectBlobFieldToChartSeries(
          'difracao', 'arquivo_difracao', EmptyStr, EditSample.Text,
          ComboboxDifracaoDigito.Text, EmptyStr));
      end;
    end;
  end
  else
    ShowMessage('Escolha uma amostra para adicionar dados.');
end;

procedure TFormFichaAmostra.ActionAddRamanChartExecute(Sender: TObject);
begin
  if (Trim(EditSample.Text) <> EmptyStr) then
  begin
    OpenDialog1.FileName := EmptyStr;
    if OpenDialog1.Execute then
    begin
      if OpenDialog1.FileName <> EmptyStr then
      begin
        AddBlobFieldSample(Dados.DatabaseSampleFileName,
          OpenDialog1.Filename, 'raman',
          'arquivo_raman', EditSample.Caption, ComboboxRamanDigito.Text,
          ComboboxDirecaoLaser.Text);
        ChartRaman.AddSeries(SelectBlobFieldToChartSeries('raman',
          'arquivo_raman', EmptyStr, EditSample.Text, ComboboxRamanDigito.Text,
          ComboboxDirecaoLaser.Text));

      end;
    end;
  end
  else
    ShowMessage('Escolha uma amostra para adicionar dados.');
end;

procedure TFormFichaAmostra.ActionAddSampleExecute(Sender: TObject);
begin
  if Dados.DatabaseSampleFileName <> EmptyStr then
  begin
    if FileExists(Dados.DatabaseSampleFileName) then
    begin
      if Dados.ChooseDatabase('amostra', Dados.DatabaseSampleFileName) then
        FormAddSample.Show
      else
        ShowMessage('O banco de dados não é valido.');
    end
    else
      ShowMessage('O banco de dados não é valido.');
  end
  else
    ShowMessage('Não há banco de dados selecionado.');
end;

procedure TFormFichaAmostra.ActionBroadScanWaveOnChangeExecute(Sender: TObject);
begin
  if EditSample.Text <> EmptyStr then
  begin
    ChartBroadScan.ClearSeries;
    ChartBroadScan.AddSeries(SelectBlobFieldToChartSeries('varredura',
      'arquivo_varredura', EmptyStr, EditSample.Text, ComboboxVarreduraDigito.Text,
      ComboboxVarreduraOnda.Text));
    ComboboxBroadScanEquipment.ItemIndex :=
      ComboboxBroadScanEquipment.Items.IndexOf(TableSamples.FieldByName['equipment']);
  end;
end;

procedure TFormFichaAmostra.ActionChangeEquipmentExecute(Sender: TObject);
begin
  if EditSample.Text <> EmptyStr then
  begin
    case PageControlSample.TabIndex of
      2:
      begin
        DatabaseSamples.ExecSQL('UPDATE raman SET equipment="' +
          ComboBoxRamanEquipment.Text + '" WHERE (rruff_id="' +
          EditSample.Text + '" AND digito="' + ComboboxRamanDigito.Text +
          '" AND ' + 'direcao="' + ComboboxDirecaoLaser.Text + '");');
      end;
      3:
      begin
        DatabaseSamples.ExecSQL('UPDATE varredura SET equipment="' +
          ComboBoxBroadScanEquipment.Text + '" WHERE (rruff_id="' +
          EditSample.Text + '" AND digito="' + ComboboxVarreduraDigito.Text +
          '" AND ' + 'comprimento_onda="' + ComboboxVarreduraOnda.Text + '");');
      end;
      4:
      begin
        DatabaseSamples.ExecSQL('UPDATE infravermelho SET equipment="' +
          ComboBoxInfraredEquipment.Text + '" WHERE (rruff_id="' +
          EditSample.Text + '" AND digito="' +
          ComboboxInfravermelhoDigito.Text + '" );');
      end;
    end;
  end;
end;

procedure TFormFichaAmostra.ActionClearBroadScanDataExecute(Sender: TObject);
begin
  if (Trim(EditSample.Text) <> EmptyStr) then
  begin
    ClearBlobField('varredura', 'arquivo_varredura', EmptyStr,
      EditSample.Text, ComboboxVarreduraDigito.Text,
      ComboboxVarreduraOnda.Text);
    ChartBroadScan.ClearSeries;
  end
  else
    ShowMessage('Escolha uma amostra para adicionar dados.');
end;

procedure TFormFichaAmostra.ActionClearInfraredDataExecute(Sender: TObject);
begin
  if (Trim(EditSample.Text) <> EmptyStr) then
  begin
    ClearBlobField('infravermelho', 'arquivo_infravermelho',
      EmptyStr, EditSample.Text,
      ComboboxInfravermelhoDigito.Text, EmptyStr);
    ChartInfravermelho.ClearSeries;
  end
  else
    ShowMessage('Escolha uma amostra para adicionar dados.');
end;

procedure TFormFichaAmostra.ActionClearMicroprobeDataExecute(Sender: TObject);
begin
  if (Trim(EditSample.Text) <> EmptyStr) then
    ClearBlobField('chemistry', 'microprobe_file', EmptyStr, EditSample.Text,
      ComboboxQuimicaDigito.Text, EmptyStr)
  else
    ShowMessage('Escolha uma amostra para adicionar dados.');
end;

procedure TFormFichaAmostra.ActionClearPowderDataExecute(Sender: TObject);
begin
  if (Trim(EditSample.Text) <> EmptyStr) then
  begin
    ClearBlobField('difracao', 'arquivo_difracao',
      EmptyStr, EditSample.Text,
      ComboboxDifracaoDigito.Text, EmptyStr);
    ChartDifracao.ClearSeries;
  end
  else
   ShowMessage('Escolha uma amostra para adicionar dados.');
end;

procedure TFormFichaAmostra.ActionClearRamanDataExecute(Sender: TObject);
begin
  if (Trim(EditSample.Text) <> EmptyStr) then
  begin
    ClearBlobField('raman', 'arquivo_raman', EmptyStr,
      EditSample.Text, ComboboxRamanDigito.Text,
      ComboboxDirecaolaser.Text);
    ChartRaman.ClearSeries;
  end
  else
    ShowMessage('Escolha uma amostra para adicionar dados.');
end;

procedure TFormFichaAmostra.ActionListboxSampleOnClickExecute(Sender: TObject);
begin
  if (ListboxSample_id.GetSelectedText <> EmptyStr) then
  begin
    ComboboxQuimicaDigito.Clear;
    ComboboxRamanDigito.Clear;
    ComboboxVarreduraDigito.Clear;
    ComboboxInfravermelhoDigito.Clear;
    ComboboxDifracaoDigito.Clear;
    ComboboxDirecaoLaser.Clear;

    TableSamples := DatabaseSamples.GetTable('SELECT * FROM rruff WHERE rruff_id="' +
      ListboxSample_id.GetSelectedText + '" ;');

   {if ListboxMinerais.GetSelectedText <> Dados.TableSamples.FieldByName['especie']
    then ListboxMinerais.Selected[ListboxMInerais.Items.IndexOf(Dados.
      TableSamples.FieldByName['especie'])]:=False;}

    if TableSamples.RowCount > 0 then
    begin
      if TableSamples.MoveFirst then
      begin
        EditMineralSample.Caption := TableSamples.FieldByName['especie'];
        EditSample.Caption := TableSamples.FieldByName['rruff_id'];
        MemoQuimicaSample.Text := TableSamples.FieldByName['rruff_id'];
        MemoRamanSample.Text := TableSamples.FieldByName['rruff_id'];
        MemoVarreduraSample.Text := TableSamples.FieldByName['rruff_id'];
        MemoInfravermelhoSample.Text := TableSamples.FieldByName['rruff_id'];
        MemoDifracaoSample.Text := TableSamples.FieldByName['rruff_id'];
        EditChemistry.Caption := TableSamples.FieldByName['quimica_ideal'];
        MemoLocalidade.Text := TableSamples.FieldByName['localidade'];
        MemoFonte.Text := TableSamples.FieldByName['fonte'];
        MemoProprietario.Text := TableSamples.FieldByName['proprietario'];
        MemoAmostraDescricao.Text := TableSamples.FieldByName['description'];
        MemoSituacao.Text := TableSamples.FieldByName['situacao'];
        self.ImageAmostra.Picture.Graphic :=
          SelectBlobFieldToJPEGImage('rruff', 'imagem_amostra',
          TableSamples.FieldByName['especie'], TableSamples.FieldByName['rruff_id'],
          EmptyStr, EmptyStr);
      end;
    end;

    TableSamples := DatabaseSamples.GetTable('SELECT * FROM chemistry WHERE rruff_id="' +
      ListboxSample_id.GetSelectedText + '" ORDER BY (1/(digito+1)) ;');
    if TableSamples.RowCount > 0 then
    begin
      if TableSamples.MoveFirst then
      begin
        ComboboxQuimicaDigito.ItemIndex :=
          ComboboxQuimicaDigito.Items.Add(TableSamples.FieldByName['digito']);
        MemoQuimicaDescricao.Text := TableSamples.FieldByName['description'];
        MemoQuimicaMedida.Text := TableSamples.FieldByName['quimica_medida'];
        ///esta faltando: microprobe_file, microprobe_equipment
        self.ImageQuimica.Picture.Graphic :=
          SelectBlobFieldToJPEGImage('chemistry', 'image',
          TableSamples.FieldByName['especie'], TableSamples.FieldByName['rruff_id'],
          TableSamples.FieldByName['digito'], EmptyStr);
      end;
    end;

    TableSamples := DatabaseSamples.GetTable('SELECT * FROM raman WHERE rruff_id="' +
      ListboxSample_id.GetSelectedText + '" ORDER BY (1/(digito+1)) ;');
    if TableSamples.RowCount > 0 then
    begin
      if TableSamples.MoveFirst then
      begin
        ComboboxDirecaoLaser.Items.Clear;
        ComboboxDirecaoLaser.ItemIndex :=
          ComboboxDirecaoLaser.Items.Add(TableSamples.FieldByName['direcao']);
        ComboboxRamanDigito.ItemIndex :=
          ComboboxRamanDigito.Items.Add(TableSamples.FieldByName['digito']);
        MemoRamanDescricao.Text := TableSamples.FieldByName['description'];
        MemoRamanPin_id.Text := TableSamples.FieldByName['pin_id'];
        MemoRamanOrientacao.Text := TableSamples.FieldByName['orientacao'];
        ComboboxRamanEquipment.ItemIndex :=
          ComboboxRamanEquipment.Items.Add(TableSamples.FieldByName['equipment']);
        ChartRaman.ClearSeries;
        ChartRaman.AddSeries(SelectBlobFieldToChartSeries('raman',
          'arquivo_raman', TableSamples.FieldByName['especie'],
          TableSamples.FieldByName['rruff_id'],
          TableSamples.FieldByName['digito'], TableSamples.FieldByName['direcao']));
      end;
    end
    else
      ChartRaman.ClearSeries;

    TableSamples := DatabaseSamples.GetTable('SELECT * FROM varredura WHERE rruff_id="' +
      ListboxSample_id.GetSelectedText + '" ORDER BY (1/(digito+1)) ;');
    if TableSamples.RowCount > 0 then
    begin
      if TableSamples.MoveFirst then
      begin
        ComboboxVarreduraOnda.ItemIndex :=
          ComboboxVarreduraOnda.Items.Add(TableSamples.FieldByName['comprimento_onda']);
        ComboboxVarreduraDigito.ItemIndex :=
          ComboboxVarreduraDigito.Items.Add(TableSamples.FieldByName['digito']);
        ComboboxBroadScanEquipment.ItemIndex :=
          ComboboxBroadScanEquipment.Items.IndexOf(
          TableSamples.FieldByName['equipment']);
        MemoVarreduraDescricao.Text := TableSamples.FieldByName['description'];
        ChartBroadScan.ClearSeries;
        ChartBroadScan.AddSeries(SelectBlobFieldToChartSeries('varredura',
          'arquivo_varredura', TableSamples.FieldByName['especie'],
          TableSamples.FieldByName['rruff_id'], TableSamples.FieldByName['digito'],
          TableSamples.FieldByName['comprimento_onda']));
      end;
    end
    else
      ChartBroadScan.ClearSeries;

    TableSamples := DatabaseSamples.GetTable('SELECT * FROM infravermelho WHERE ' +
      'rruff_id="' + ListboxSample_id.GetSelectedText + '" ORDER BY (1/(digito+1));');
    if TableSamples.RowCount > 0 then
    begin
      if TableSamples.MoveFirst then
      begin
        ComboboxInfravermelhoDigito.ItemIndex :=
          ComboboxInfravermelhoDigito.Items.Add(TableSamples.FieldByName['digito']);
        ComboboxInfraredEquipment.ItemIndex :=
          ComboboxInfraredEquipment.Items.IndexOf(
          TableSamples.FieldByName['equipment']);
        MemoInfravermelhoResolucao.Text := TableSamples.FieldByName['resolucao'];
        MemoInfravermelhoDescricao.Text := TableSamples.FieldByName['description'];
        ChartInfravermelho.ClearSeries;
        ChartInfravermelho.AddSeries(SelectBlobFieldToChartSeries(
          'infravermelho', 'arquivo_infravermelho',
          TableSamples.FieldByName['especie'], TableSamples.FieldByName['rruff_id'],
          TableSamples.FieldByName['digito'], EmptyStr));
      end;
    end
    else
      ChartInfravermelho.ClearSeries;

    TableSamples := DatabaseSamples.GetTable('SELECT * FROM difracao WHERE rruff_id="' +
      ListboxSample_id.GetSelectedText + '" ORDER BY (1/(digito+1));');
    if TableSamples.RowCount > 0 then
    begin
      if TableSamples.MoveFirst then
      begin
        ComboboxDifracaoDigito.ItemIndex :=
          ComboboxDifracaoDigito.Items.Add(TableSamples.FieldByName['digito']);
        MemoA.Text := TableSamples.FieldByName['a'];
        MemoB.Text := TableSamples.FieldByName['b'];
        MemoC.Text := TableSamples.FieldByName['c'];
        MemoAlpha.Text := TableSamples.FieldByName['alpha'];
        MemoBeta.Text := TableSamples.FieldByName['beta'];
        MemoGamma.Text := TableSamples.FieldByName['gamma'];
        MemoVolume.Text := TableSamples.FieldByName['volume'];
        MemoSistemaCristalino.Text :=
          TableSamples.FieldByName['sistema_cristalino'];
        ChartDifracao.ClearSeries;
        ChartDifracao.AddSeries(SelectBlobFieldToChartSeries('difracao',
          'arquivo_difracao', TableSamples.FieldByName['especie'],
          TableSamples.FieldByName['rruff_id'], TableSamples.FieldByName['digito'],
          EmptyStr));
      end;
    end
    else
      ChartDifracao.ClearSeries;

    TableSamples := DatabaseSamples.GetTable('SELECT DISTINCT digito FROM ' +
      'chemistry WHERE rruff_id="' + ListboxSample_id.GetSelectedText +
      '" ORDER BY (1/(digito+1)) ;');
    if TableSamples.MoveFirst then
      while not TableSamples.EOF do
      begin
        if ComboboxQuimicaDigito.Items.IndexOf(
          TableSamples.FieldByName['digito']) < 0 then
          ComboboxQuimicaDigito.Items.Append(TableSamples.FieldByName['digito']);
        TableSamples.Next;
      end;
    ComboboxQuimicaDigito.Items.Append(AdicionarAmostra);

    TableSamples := DatabaseSamples.GetTable('SELECT DISTINCT digito FROM ' +
      'raman WHERE rruff_id="' + ListboxSample_id.GetSelectedText +
      '" ORDER BY (1/(digito+1)) ;');
    if TableSamples.MoveFirst then
      while not TableSamples.EOF do
      begin
        if ComboboxRamanDigito.Items.IndexOf(
          TableSamples.FieldByName['digito']) < 0 then
          ComboboxRamanDigito.Items.Append(TableSamples.FieldByName['digito']);
        TableSamples.Next;
      end;
    ComboboxRamanDigito.Items.Append(AdicionarAmostra);

    TableSamples := DatabaseSamples.GetTable('SELECT DISTINCT digito FROM ' +
      'varredura WHERE rruff_id="' + ListboxSample_id.GetSelectedText +
      '" ORDER BY (1/(digito+1)) ;');
    if TableSamples.MoveFirst then
      while not TableSamples.EOF do
      begin
        if ComboboxVarreduraDigito.Items.IndexOf(
          TableSamples.FieldByName['digito']) < 0 then
          ComboboxVarreduraDigito.Items.Append(TableSamples.FieldByName['digito']);
        TableSamples.Next;
      end;
    ComboboxVarreduraDigito.Items.Append(AdicionarAmostra);

    TableSamples := DatabaseSamples.GetTable('SELECT DISTINCT digito FROM ' +
      'infravermelho WHERE rruff_id="' + ListboxSample_id.GetSelectedText +
      '" ORDER BY (1/(digito+1)) ;');
    if TableSamples.MoveFirst then
      while not TableSamples.EOF do
      begin
        if ComboboxInfravermelhoDigito.Items.IndexOf(
          TableSamples.FieldByName['digito']) < 0 then
          ComboboxInfravermelhoDigito.Items.Append(
            TableSamples.FieldByName['digito']);
        TableSamples.Next;
      end;
    ComboboxInfravermelhoDigito.Items.Append(AdicionarAmostra);

    TableSamples := DatabaseSamples.GetTable('SELECT DISTINCT digito FROM ' +
      'difracao WHERE rruff_id="' + ListboxSample_id.GetSelectedText +
      '" ORDER BY (1/(digito+1));');
    if TableSamples.MoveFirst then
      while not TableSamples.EOF do
      begin
        if ComboboxDifracaoDigito.Items.IndexOf(
          TableSamples.FieldByName['digito']) < 0 then
          ComboboxDifracaoDigito.Items.Append(TableSamples.FieldByName['digito']);
        TableSamples.Next;
      end;
    ComboboxDifracaoDigito.Items.Append(AdicionarAmostra);

    TableSamples := DatabaseSamples.GetTable(
      'SELECT DISTINCT direcao FROM raman WHERE ' + 'rruff_id="' +
      ListboxSample_id.GetSelectedText + '" ;');
    if TableSamples.MoveFirst then
    begin
      while not TableSamples.EOF do
      begin
        if ComboboxDirecaoLaser.Items.IndexOf(
          TableSamples.FieldByName['direcao']) < 0 then
          ComboboxDirecaoLaser.Items.Append(TableSamples.FieldByName['direcao']);
        TableSamples.Next;
      end;
    end;

    TableSamples := DatabaseSamples.GetTable('SELECT DISTINCT comprimento_onda FROM ' +
      'varredura WHERE rruff_id="' + ListboxSample_id.GetSelectedText + '" ;');
    if TableSamples.MoveFirst then
    begin
      while not TableSamples.EOF do
      begin
        if ComboboxVarreduraOnda.Items.IndexOf(
          TableSamples.FieldByName['comprimento_onda']) < 0 then
          ComboboxVarreduraOnda.Items.Append(TableSamples.FieldByName[
            'comprimento_onda']);
        TableSamples.Next;
      end;
    end;
  end;
end;

procedure TFormFichaAmostra.ActionMicrossondaVisualizarExecute(Sender: TObject);
begin          //ve os dados dos arquivos usados para gerar os graficos
  if EditSample.Text <> EMptyStr then
  begin
    if PageControlSample.ActivePageIndex <> 0 then
    begin
      FormPlanilha := TFormPlanilha.Create(nil);
      with FormPlanilha do
      begin
        Caption := EditSample.Text;
      end;
      if PageControlSample.ActivePageIndex = 1 then
      begin
        FormPlanilha.ArquivoPlanilha('chemistry', 'microprobe_file',
          EmptyStr, EditSample.Caption, ComboboxQuimicaDigito.Text,
          EmptyStr, EmptyStr);
      end
      else
      if PageControlSample.ActivePageIndex = 2 then
      begin
        FormPlanilha.ArquivoPlanilha('raman', 'arquivo_raman', EmptyStr,
          EditSample.Caption, ComboboxRamanDigito.Text,
          ComboboxDirecaoLaser.Text, EmptyStr);
      end
      else
      if PageControlSample.ActivePageIndex = 3 then
      begin
        FormPlanilha.ArquivoPlanilha('varredura', 'arquivo_varredura',
          EmptyStr, EditSample.Caption, ComboboxVarreduraDigito.Text,
          ComboboxVarreduraOnda.Text, EmptyStr);
      end
      else
      if PageControlSample.ActivePageIndex = 4 then
      begin
        FormPlanilha.ArquivoPlanilha('infravermelho', 'arquivo_infravermelho',
          EmptyStr, EditSample.Caption,
          ComboboxInfravermelhoDigito.Text, EmptyStr, EmptyStr);
      end
      else
      if PageControlSample.ActivePageIndex = 5 then
      begin
        FormPlanilha.ArquivoPlanilha('difracao', 'arquivo_difracao',
          EmptyStr, EditSample.Caption, ComboboxDifracaoDigito.Text,
          EmptyStr, EmptyStr);
      end;
      FormPlanilha.Show;
    end;
  end;
end;

procedure TFormFichaAmostra.ActionRamanDirecaoOnChangeExecute(Sender: TObject);
begin
  if ListboxSample_id.GetSelectedText <> EmptyStr then
  begin
    ChartRaman.ClearSeries;
    TableSamples := DatabaseSamples.GetTable('SELECT equipment FROM raman WHERE ' +
      'rruff_id="' + ListboxSample_id.GetSelectedText + '" AND digito="' +
      ComboboxRamanDigito.Text + '" ;');
    ComboboxRamanEquipment.ItemIndex :=
      ComboboxRamanEquipment.Items.IndexOf(TableSamples.FieldByName['equipment']);

    ChartRaman.AddSeries(SelectBlobFieldToChartSeries('raman',
      'arquivo_raman', EmptyStr, ListboxSample_id.GetSelectedText,
      ComboboxRamanDigito.Text, ComboboxDirecaoLaser.Text));
  end;
end;

procedure TFormFichaAmostra.ActionRefreshListExecute(Sender: TObject);
begin
  if Dados.DatabaseSampleFileName <> EmptyStr then
  begin
    if FileExists(Dados.DatabaseSampleFileName) then
    begin
      if Dados.ChooseDatabase('amostra', Dados.DatabaseSampleFileName) then
        Preenche_Amostras
      else
        ShowMessage('O banco de dados não é valido.');
    end
    else
      ShowMessage('O banco de dados não é valido.');
  end
  else
    ShowMessage('Não há banco de dados selecionado.');
end;

procedure TFormFichaAmostra.ActionRemoveBlobDataExecute(Sender: TObject);
begin
  if EditSample.Text <> EmptyStr then
  begin
    case PageControlSample.TabIndex of
      0:
      begin
        ClearBlobField('rruff', 'imagem_amostra', EmptyStr,
          EditSample.Text, EmptyStr, EmptyStr);
        ImageAmostra.Picture.Clear;
      end;
      1:
      begin
        ClearBlobField('chemistry', 'image', EmptyStr,
          EditSample.Text, ComboboxQuimicaDigito.Text, EmptyStr);
        ImageQuimica.Picture.Clear;
      end;
      2:
      begin
        ClearBlobField('raman', 'arquivo_raman', EmptyStr,
          EditSample.Text, ComboboxRamanDigito.Text,
          ComboboxDirecaolaser.Text);
        ChartRaman.ClearSeries;
      end;
      3:
      begin
        ClearBlobField('varredura', 'arquivo_varredura', EmptyStr,
          EditSample.Text, ComboboxVarreduraDigito.Text,
          ComboboxVarreduraOnda.Text);
        ChartBroadScan.ClearSeries;
      end;
      4:
      begin
        ClearBlobField('infravermelho', 'arquivo_infravermelho',
          EmptyStr, EditSample.Text,
          ComboboxInfravermelhoDigito.Text, EmptyStr);
        ChartInfravermelho.ClearSeries;
      end;
      5:
      begin
        ClearBlobField('difracao', 'arquivo_difracao',
          EmptyStr, EditSample.Text,
          ComboboxDifracaoDigito.Text, EmptyStr);
        ChartDifracao.ClearSeries;
      end;
    end;
  end;
end;

procedure TFormFichaAmostra.ActionRemoveChemistryImageExecute(Sender: TObject);
begin
  if (Trim(EditSample.Text) <> EmptyStr) then
  begin
    ClearBlobField('chemistry', 'image', EmptyStr,
      EditSample.Text, ComboboxQuimicaDigito.Text, EmptyStr);
    ImageQuimica.Picture.Clear;
  end
  else
    ShowMessage('Escolha uma amostra para adicionar dados.');
end;

procedure TFormFichaAmostra.ActionRemoveSampleExecute(Sender: TObject);
begin
  if Dados.DatabaseSampleFileName <> EmptyStr then
  begin
    if FileExists(Dados.DatabaseSampleFileName) then
    begin
      if Dados.ChooseDatabase('amostra', Dados.DatabaseSampleFileName) then
        FormRemoveSample.Show
      else
        ShowMessage('O banco de dados não é valido.');
    end
    else
      ShowMessage('O banco de dados não é valido.');
  end
  else
    ShowMessage('Não há banco de dados selecionado.');
end;

procedure TFormFichaAmostra.ActionRemoveSampleImageExecute(Sender: TObject);
begin
  if (Trim(EditSample.Text) <> EmptyStr) then
  begin
    ClearBlobField('rruff', 'imagem_amostra', EmptyStr,
      EditSample.Text, EmptyStr, EmptyStr);
    ImageAmostra.Picture.Clear;
  end;
end;

procedure TFormFichaAmostra.ActionSeBoradScanDataExecute(Sender: TObject);
begin
  if (Trim(EditSample.Text) <> EmptyStr) then
  begin
    FormPlanilha := TFormPlanilha.Create(nil);
    with FormPlanilha do
    begin
      Caption := ListboxSample_id.GetSelectedText;
    end;
    FormPlanilha.ArquivoPlanilha('varredura', 'arquivo_varredura',
      EmptyStr, EditSample.Caption, ComboboxVarreduraDigito.Text,
      ComboboxVarreduraOnda.Text, EmptyStr);
    FormPlanilha.Show;
  end
  else
    ShowMessage('Escolha uma amostra para adicionar dados.');
end;

procedure TFormFichaAmostra.ActionSeeInfraredDataExecute(Sender: TObject);
begin
  if (Trim(EditSample.Text) <> EmptyStr) then
  begin
    FormPlanilha := TFormPlanilha.Create(nil);
    with FormPlanilha do
    begin
      Caption := ListboxSample_id.GetSelectedText;
    end;
    FormPlanilha.ArquivoPlanilha('infravermelho', 'arquivo_infravermelho',
      EmptyStr, EditSample.Caption,
      ComboboxInfravermelhoDigito.Text, EmptyStr, EmptyStr);
    FormPlanilha.Show;
  end
  else
    ShowMEssage('Escolha uma amostra para adicionar dados.');
end;

procedure TFormFichaAmostra.ActionSeeMicroprobeDataExecute(Sender: TObject);
begin
  if (Trim(EditSample.Text) <> EmptyStr) then
  begin
    FormPlanilha := TFormPlanilha.Create(nil);
    with FormPlanilha do
    begin
      Caption := EditSample.Text;
    end;
    FormPlanilha.ArquivoPlanilha('chemistry', 'microprobe_file',
      EmptyStr, EditSample.Caption, ComboboxQuimicaDigito.Text,
      EmptyStr, EmptyStr);
    FormPlanilha.Show;
  end
  else
    ShowMessage('Escolha uma amostra para adicionar dados.');
end;

procedure TFormFichaAmostra.ActionSeePowderDataExecute(Sender: TObject);
begin
  if (Trim(EditSample.Text) <> EmptyStr) then
  begin
    FormPlanilha := TFormPlanilha.Create(nil);
    with FormPlanilha do
    begin
      Caption := EditSample.Text;
    end;
    FormPlanilha.ArquivoPlanilha('difracao', 'arquivo_difracao',
      EmptyStr, EditSample.Caption, ComboboxDifracaoDigito.Text,
      EmptyStr, EmptyStr);
    FormPlanilha.Show;
  end
  else
    ShowMessage('Escolha uma amostra para adicionar dados.');
end;

procedure TFormFichaAmostra.ActionSeeRamanDataExecute(Sender: TObject);
begin
  if (Trim(EditSample.Text) <> EmptyStr) then
  begin
    FormPlanilha := TFormPlanilha.Create(nil);
    with FormPlanilha do
    begin
      Caption := ListboxSample_id.GetSelectedText;
    end;
    FormPlanilha.ArquivoPlanilha('raman', 'arquivo_raman', EmptyStr,
      EditSample.Caption, ComboboxRamanDigito.Text,
      ComboboxDirecaoLaser.Text, EmptyStr);
    FormPlanilha.Show;
  end
  else
   ShowMessage('Escolha uma amostra para adicionar dados.');
end;

procedure TFormFichaAmostra.BitBtnAddMicroprobeDataClick(Sender: TObject);
begin
  if EditSample.Text <> EmptyStr then
  begin
    OpenDialog1.FileName := EmptyStr;
    if OpenDialog1.Execute then
    begin
      if OpenDialog1.FileName <> EmptyStr then
      begin
        CSVFileToBlobField(OpenDialog1.FileName, 'chemistry', 'microprobe_file',
          EditMineralSample.Text, EditSample.Text,
          Trim(ComboboxQuimicaDigito.Text), EmptyStr);
        FormPlanilha.ArquivoMicrossonda(EditMineralSample.Text, EditSample.Text,
          Trim(ComboboxQuimicaDigito.Text));
        //FormPlanilha.Show;
      end;
    end;
  end;
end;

procedure TFormFichaAmostra.BitBtnClearMicroprobeDataClick(Sender: TObject);
begin
  ClearBlobField('chemistry', 'microprobe_file', EmptyStr,
    EditSample.Text, ComboboxQuimicaDigito.Text, EmptyStr);
end;

procedure TFormFichaAmostra.BitBtnEditMicroprobeDataClick(Sender: TObject);
begin
  FormPlanilha.ArquivoMicrossonda(EmptyStr, EditSample.Text,
    Trim(ComboboxQuimicaDigito.Text));
  //FormPlanilha.Show;
end;

procedure TFormFichaAmostra.ComboBoxVarreduraOndaChange(Sender: TObject);
begin
  ChartBroadScan.ClearSeries;
  ChartBroadScan.AddSeries(SelectBlobFieldToChartSeries('varredura',
    'arquivo_varredura', EmptyStr, EditSample.Caption,
    ComboboxVarreduraDigito.Text, ComboboxVarreduraOnda.Text));
end;

procedure TFormFichaAmostra.EditChemistryEditingDone(Sender: TObject);
begin
  TableSamples := DatabaseSamples.GetTable('UPDATE rruff SET ' +
    ' quimica_ideal = "' + EditChemistry.Text + '" WHERE rruff_id = "' +
    EditSample.Text + '" ;');
end;

procedure TFormFichaAmostra.EditChemistryKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  TableSamples := DatabaseSamples.GetTable('UPDATE rruff SET ' +
    ' quimica_ideal = "' + EditChemistry.Text + '" WHERE rruff_id = "' +
    EditSample.Text + '" ;');
end;

procedure TFormFichaAmostra.EditMineralNameEditingDone(Sender: TObject);
begin
  Preenche_Amostras;
end;

procedure TFormFichaAmostra.EditMineralSampleEditingDone(Sender: TObject);
begin
  TableSamples := DatabaseSamples.GetTable('UPDATE rruff SET ' +
    ' especie = "' + EditMineralSample.Text + '" WHERE rruff_id = "' +
    EditSample.Text + '" ;');
end;

procedure TFormFichaAmostra.EditMineralSampleKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin    {
if Table = 'rruff' then
    TableSamples := Dados.DatabaseSamples.GetTable('UPDATE '+Table+' SET '+
      Field+' = "'+NewValue+'" WHERE rruff_id = "'+Sample+'" ;');

  if Table = 'chemistry' then
    Dados.TableSamples:= Dados.DatabaseSamples.GetTable('UPDATE '+Table+' SET '+
      Field+'= "'+NewValue+'" WHERE rruff_id = "'+Sample+'" ;');

  if Table = 'raman' then
    Dados.TableSamples:= Dados.DatabaseSamples.GetTable('UPDATE '+Table+ ' SET '+
      Field+'="'+NewValue+'" WHERE rruff_if="'+Sample+'" AND digito="'+
        Digito+'" AND direcao="'+Direction+'" ;');

  if Table = 'varredura' then
    Dados.TableSamples:= Dados.DatabaseSamples.GetTable('UPDATE '+Table+ ' SET '+
      Field+'="'+NewValue+'" WHERE rruff_if="'+Sample+'" AND digito="'+
        Digito+'" AND comprimento_onda="'+Direction+'" ;');

  if Table = 'infravermelho' then
    Dados.TableSamples:= Dados.DatabaseSamples.GetTable('UPDATE '+Table+ ' SET '+
      Field+'="'+NewValue+'" WHERE rruff_if="'+Sample+'" AND digito="'+
        Digito+'" ;');

  if Table = 'difracao' then
    Dados.TableSamples:= Dados.DatabaseSamples.GetTable('UPDATE '+Table+ ' SET '+
      Field+'="'+NewValue+'" WHERE rruff_if="'+Sample+'" AND digito="'+
        Digito+'" ;');
}
  TableSamples := DatabaseSamples.GetTable('UPDATE rruff SET ' +
    ' especie = "' + EditMineralSample.Text + '" WHERE rruff_id = "' +
    EditSample.Text + '" ;');
end;

procedure TFormFichaAmostra.EditSample_IdEditingDone(Sender: TObject);
begin
  Preenche_Amostras;
end;

end.
